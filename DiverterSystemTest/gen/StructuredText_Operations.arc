.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_Operations.arc
.//
.// This file creates all of the operations defined by a class.  It also creates
.// a default initialization operation for each class if one is not defined in 
.// the model.  The output format is structured text that can be copied and
.// pasted into a PLC program file.
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: _<component number>_<class number>_op<class name>.txt
.//         _<component number>_<class number>_op<class name>_Init.txt
.//============================================================================
.//
.include "../../st_mc_helper/O_TPARM_utilities.arc"
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.//
.// Start of Translation Code
.//
.//
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .print "${o_obj.Name} : ${o_obj.Numb}"
  .//
  .// Get the Model and Code Identifiers
  .invoke mi = grp_GetModelIdentifiers(o_obj)
  .invoke ci = grp_GetCodeIdentifiers(o_obj)
  .//
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign eventStructure = "${ci.gblClassEvents}"
  .assign paramList = ""
  .assign paramCount = 0
  .assign paramTypeList = ""
  .assign arraySuffix = ""
  .if (te_class.MaxExtentSize > 0)
    .assign arraySuffix = "[d_index_${ci.uniqueId}]"
    .assign eventStructure = "${eventStructure}${arraySuffix}"
    .assign paramList = "${paramList}d_index_${ci.uniqueId}"
    .assign paramTypeList = "INTEGER"
    .assign paramCount = 1
  .end if
  .//
  .//
  .//
  .// Create an Initialize operation for the class automatically
  .//
  .assign generatedInitCode = "(* Clear the global and local event mailbox structures. *)\nCPS(empty_event_struct, ${eventStructure}.evt_lst, 1);\nCPS(empty_event_struct, ${ci.gblClassData}${arraySuffix}.events.evt_lst, 1);"
  .assign functName = "_${ci.uniqueId}_op$r{o_obj.Name}_Init"
  .assign functSig = "${functName}"
  .if (te_class.MaxExtentSize > 0)
    .assign functSig = "${functSig}, ${paramCount}, ${paramTypeList}"
  .end if
  .//
(* Model Identifiers
     Component (Number): '${mi.compName}' (${mi.compNumb})
         Class (Number): '${mi.objName}' (${mi.objNumb})
              Operation: 'Initialize'
         Qualified Name: '${mi.qName}'
   
Description: All actions required to initialize an instance of class '${o_obj.Name}'.
             This subroutine must be called whenever a new instance is created.

Signature: JSR( ${functSig} );
*)

SBR( ${paramList} );

  .// Clear Event Structure
${generatedInitCode}

(* TODO: Add all initialization code here *)

  .//  
  .emit to file "../../src/${functName}.txt"
  .//
  .//
  .// Create any operations defined in the class
  .//
  .select many o_tfrs related by o_obj->O_TFR[R115]
  .if (not_empty o_tfrs)
    .for each o_tfr in o_tfrs
      .assign initFunction = False
      .if (o_tfr.Name == "Init")
        .// Overwrite the automatically generated function, Init functions do not follow operation naming standard
        .assign functName = "_${ci.uniqueId}_op$r{o_obj.Name}_${o_tfr.Name}"
        .assign initFunction = True
      .else
        .assign functName = "_${ci.uniqueId}_op${o_tfr.Name}"
      .end if
      .assign functSig = functName
      .select any o_tparm related by o_tfr->O_TPARM[R117]
      .if (not_empty o_tparm)
        .invoke r = O_TPARM_FindFirstParameter( o_tparm )
        .assign headPtr = r.result
        .assign paramCount = paramCount + 1
        .select one next_o_tparm related by headPtr->O_TPARM[R124.'succeeds']
        .while (not_empty next_o_tparm)
          .assign paramCount = paramCount + 1
          .select one next_o_tparm related by next_o_tparm->O_TPARM[R124.'succeeds']
        .end while
        .invoke r = str_CreateParameterList( headPtr )
        .if (paramTypeList == "")
          .assign paramTypeList = "$u{r.typeList}"
        .else
          .assign paramTypeList = "${paramTypeList}, $u{r.typeList}"
        .end if
        .if (paramList == "")
          .assign paramList = "${r.paramList}"
        .else
          .assign paramList = "${paramList}, ${r.paramList}"
        .end if
        .assign functSig = "${functSig}, ${paramCount}, ${paramTypeList}"
      .end if
      .// Check for a returned value
      .select one s_dt related by o_tfr->S_DT[R116]
      .assign returnStr = ""
      .if (s_dt.Name != "void")
        .assign typeName = "$u{s_dt.Name}"
        .select one s_edt related by s_dt->S_EDT[R17]
        .if (not_empty s_edt)
          .invoke en = str_CreateEnumerationName(s_dt.Name)
          .assign typeName = en.name
        .end if
        .assign returnStr = "(* TODO: Assign Return Value, Type = ${typeName} *)"
        .assign functSig = "${functSig}, ${typeName}"
      .end if
(* Model Identifiers
     Component (Number): '${mi.compName}' (${mi.compNumb})
         Class (Number): '${mi.objName}' (${mi.objNumb})
              Operation: '${o_tfr.Name}'
         Qualified Name: '${mi.qName}'
   
Description: <Format Style="Block" Fill="Tab" Start="Cursor">${o_tfr.Descrip}</Format>

Signature: JSR( ${functSig} );
*)

SBR( ${paramList} );

      .if (initFunction)
        .// Clear Event Structure
${generatedInitCode}
      .end if
(*	Action:

	<Format Style="Block" Fill="Tab" Start="Cursor">${o_tfr.Action_Semantics}</Format>
*)

(* TODO: Implement operation action code here *)

      .if (returnStr != "")
RET( ${returnStr} );
      .end if
      .//  
      .emit to file "../../src/${functName}.txt"
      .//  
    .end for
  .end if
.end for


