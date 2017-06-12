.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_.arc
.//
.// This Model Compiler must execute this file prior to any other Structured
.// Text translation ('arc') files.  This file sets up the Translation Extension
.// classes and loads the class.mark file, which defines the PLC target array
.// sizes. 
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: ClassArraySize.csv
.//============================================================================
.//
.include "../../st_mc_helper/PE_PE_utilities.arc"
.include "../../st_mc_helper/O_ATTR_utilities.arc"
.include "../../st_mc_helper/TE_utilities.arc"
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Translation Extension Class Usage
.//
.// TE_SYS
.//
.// TE_C
.//    .ID - Assigned value from Component 'Id' (C_C)
.//    .isRealized - Assigned value from Component 'isRealized' (C_C)
.//    .number - Assigned value from components containing Package 'Num_Rng' (EP_PKG)
.//    .Name - The 'number' attribute converted to a 3 digit leading zero string
.//    .cId - R2054
.//    .SystemID - R2065
.//
.// TE_CLASS
.//    .GeneratedName - Unique identifier composed of 3 digit component number, underscore & 3 digit class number
.//    .Numb - Assigned value from Model Class 'Numb' (O_OBJ)
.//    .system_class_number - The 'Numb' attribute converted to a 3 digit leading zero string
.//    .Key_Lett - Assigned value from Model Class 'Key_Lett' (O_OBJ)
.//    .MaxExtentSize - Number of instances to create, assigned from 'class.mark' MarkObjectExtentSize()
.//    .CBGeneratedName - Using this attribute to store the class member string for the data structure.
.//    .CBDispatcher - Using this attribute to store the assigner member string for the data structure.
.//    .Obj_ID - R2019
.//    .te_cID - R2064
.//
.// TE_ATTR
.//    .ID - This identifying attribute is NOT assigned, using identifiers from R2033 instead
.//    .Attr_ID - R2033
.//    .Obj_ID  - R2033
.//    .te_classGeneratedName - R2061
.//    .GeneratedName - The structured text model compiler's generated name for the attribute 
.//    .GeneratedType - "Id" for attributes that are a class' primary identifier, "Rel" for relational attributes
.//
.// TE_SM
.//    .SEMname - 
.//
.// TE_STATE
.//    .SM_ID - R2037
.//    .SMstt_ID - R2037
.//    .Numb - Assigned value from Model Class 'Numb' (SM_STATE)
.//
.//
.// Start of Translation Code
.//
.//
.// Create a Translation Extension System Class
.select any te_sys from instances of TE_SYS
.if (empty te_sys)
  .create object instance te_sys of TE_SYS
  .assign te_sys.SystemID = 1
.end if
.//
.// Iterate through all objects and create TE_CLASS, TE_C, TE_ATTR and TE_STATE instances
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .// Create the Translation Extension Class if necessary
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .if (empty te_class)
    .// Create the Translation Extension Class
    .create object instance te_class of TE_CLASS
    .// Relate R2019
    .assign te_class.Obj_ID = o_obj.Obj_ID
    .//
    .assign te_class.Numb = o_obj.Numb
    .assign te_class.Key_Lett = o_obj.Key_Lett
    .//
    .// Find the component
    .select any te_c from instances of TE_C where (False)
    .select any ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .if (not_empty ep_pkg)
      .invoke r = C_C_GetContainingComponent( ep_pkg )
      .assign comp = r.result
      .if (not_empty comp)
        .// Check to see if the TE_C class has been created
        .select one te_c related by comp->TE_C[R2054]
        .if (empty te_c)
          .// Create the Translation Extension Component
          .create object instance te_c of TE_C
          .// Using the component id for the te_c id
          .assign te_c.ID = comp.Id
          .// Relate R2054
          .assign te_c.cId = comp.Id
          .// Relate R2065
          .assign te_c.SystemID = te_sys.SystemID
          .//
          .// Set Attributes
          .assign te_c.isRealized = comp.isRealized
          .//
          .// Get the component number from the containing package
          .invoke r = EP_PKG_GetContainingPackage( comp )
          .assign comp_pkg = r.result
          .if (not_empty comp_pkg)
            .assign te_c.number = comp_pkg.Num_Rng
          .end if
        .end if
      .end if
    .end if
    .//
    .// Create the class identifying name
    .invoke compNumStr = str_FormatIntegerIds(te_c.number)
    .invoke objNumStr = str_FormatIntegerIds(o_obj.Numb)
    .// GeneratedName is just the unique numerical identity
    .assign te_class.GeneratedName = "${compNumStr.result}_${objNumStr.result}"
    .assign te_class.system_class_number = objNumStr.result
    .assign te_class.MaxExtentSize = 0
    .assign te_class.CBGeneratedName = ""
    .assign te_class.CBDispatcher = ""
    .assign te_c.Name = compNumStr.result
    .//
    .// Relate te_class to te_c across R2064
    .assign te_class.te_cID = te_c.ID
    .//
    .// Create Translation Extension Attribute Objects for the primary identifier and relationship attributes only
    .select many o_attrs related by o_obj->O_ATTR[R102]
    .for each o_attr in o_attrs
      .invoke attr = bool_IsIdentifyingAttr(o_obj, o_attr)
      .select one d_type related by o_attr->S_DT[R114]
      .if ((attr.result == True) or (d_type.Name == "same_as<Base_Attribute>"))
        .// Create the Translation Extension Attribute
        .create object instance te_attr of TE_ATTR
        .// Relate R2033
        .assign te_attr.Attr_ID = o_attr.Attr_ID
        .assign te_attr.Obj_ID = o_attr.Obj_ID
        .// Relate R2061
        .assign te_attr.te_classGeneratedName = te_class.GeneratedName
        .//
        .if (attr.result == True)
          .// This is the identifying attribute
          .assign te_attr.GeneratedType = "Id"
          .invoke attr = str_createIdentifyingAttrName(o_obj)
          .assign te_attr.GeneratedName = attr.name
        .else
          .// This is a relational attribute
          .assign te_attr.GeneratedType = "Rel"
          .assign suffix = ""
          .select many r_oirs related by o_attr->O_RATTR[R106]->O_REF[R108]->R_RGO[R111]->R_OIR[R203]
          .for each r_oir in r_oirs
            .select any rel from instances of R_REL where (selected.Rel_ID == r_oir.Rel_ID)
            .assign suffix = "_${suffix}r${rel.Numb}"
          .end for
          .assign te_attr.GeneratedName = "$l_{o_attr.Name}${suffix}"
        .end if
      .end if
    .end for
    .// Warn if no identifying attribute was found
    .select any te_attr related by te_class->TE_ATTR[R2061] where (selected.GeneratedType == "Id")
    .if (empty te_attr)
      .select one c_c related by te_c->C_C[R2054]
      .print "WARNING: Identifying attribute for Component: '${c_c.Name}', Class: '${o_obj.Name}' not found."
    .end if
    .//
    .// Create State Machines if present
    .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
    .if (not_empty sm_sm)
      .// Instance
      .create object instance te_sm of TE_SM
      .assign te_sm.ID = sm_sm.SM_ID
      .// R2043
      .assign te_sm.SM_ID = sm_sm.SM_ID
      .// R2072
      .assign te_sm.te_classGeneratedName = te_class.GeneratedName
      .//
      .// Create TE_STATES 
      .select many sm_states related by sm_sm->SM_STATE[R501]
      .for each sm_state in sm_states
        .create object instance te_state of TE_STATE
        .// R2037
        .assign te_state.SM_ID = sm_state.SM_ID
        .assign te_state.SMstt_ID = sm_state.SMstt_ID
        .assign te_state.Numb = sm_state.Numb
      .end for
    .end if
    .//
    .select one sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
    .if (not_empty sm_sm)
      .// Assigner
      .create object instance te_sm of TE_SM
      .assign te_sm.ID = sm_sm.SM_ID
      .// R2043
      .assign te_sm.SM_ID = sm_sm.SM_ID
      .// R2072
      .assign te_sm.te_classGeneratedName = te_class.GeneratedName
      .//
      .// Create TE_STATES 
      .select many sm_states related by sm_sm->SM_STATE[R501]
      .for each sm_state in sm_states
        .create object instance te_state of TE_STATE
        .// R2037
        .assign te_state.SM_ID = sm_state.SM_ID
        .assign te_state.SMstt_ID = sm_state.SMstt_ID
        .assign te_state.Numb = sm_state.Numb
      .end for
    .end if
  .end if
.end for
.//
.// Load and process the 'class.mark' file to set array sizes for classes
.//
.include "class.mark"
.//
.// Create a report file to document the results of the class.mark import
.//
.// Header
ArraySize,ClassName,ClassKeyLetters,ClassNumber,ComponentName
.//
.select many te_classes from instances of TE_CLASS where (selected.MaxExtentSize > 0)
.for each te_class in te_classes
  .select one c_c related by te_class->TE_C[R2064]->C_C[R2054]
  .select one o_obj related by te_class->O_OBJ[R2019]
${te_class.MaxExtentSize},${o_obj.Name},${te_class.Key_Lett},${te_class.Numb},${c_c.Name}
.end for
.//
.// Output the information in csv format
.emit to file "../../src/ClassArraySize.csv"
.//  
.print "End of StructuredText.arc file"