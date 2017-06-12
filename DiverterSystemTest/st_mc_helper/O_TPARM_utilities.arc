.//============================================================================
.// BridgePoint Model Compiler Translation File: O_TPARM_utilities.arc
.//
.// This file contains functions that work with the OoaOfOoa O_TPARM class. 
.//
.// Functions:
.//    O_TPARM_FindFirstParameter
.//    str_CreateParameterList
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.// Recursively find the first parameter in the list.
.function O_TPARM_FindFirstParameter .// O_TPARM
  .param inst_ref o_tparm
  .//
  .select any return from instances of O_TPARM where (False)
  .select one preceding_o_tparm related by o_tparm->O_TPARM[R124.'precedes']
  .if (not_empty preceding_o_tparm)
    .invoke r = O_TPARM_FindFirstParameter( preceding_o_tparm )
    .assign return = r.result
  .else
    .assign return = o_tparm
  .end if
  .assign attr_result = return
.end function
.//
.//
.// Recursively create the parameter list for an Operation.
.// o_tparm must point to the start of the list
.function str_CreateParameterList .// O_TPARM
  .param inst_ref o_tparm
  .//
  .assign paramList = ""
  .assign typeList = ""
  .if (not_empty o_tparm)
    .select one succeeding_o_tparm related by o_tparm->O_TPARM[R124.'succeeds']
    .invoke r = str_CreateParameterList( succeeding_o_tparm )
    .select one s_dt related by o_tparm->S_DT[R118]
    .select one s_edt related by s_dt->S_EDT[R17]
    .assign typeName = s_dt.Name
    .if (not_empty s_edt)
      .invoke en = str_CreateEnumerationName(s_dt.Name)
      .assign typeName = en.name
    .end if
    .if (r.paramList != "")
      .assign paramList = "${o_tparm.Name}, ${r.paramList}"
      .assign typeList = "${typeName}, ${r.typeList}"
    .else
      .assign paramList = "${o_tparm.Name}"
      .assign typeList = "${typeName}"
    .end if
  .end if
  .assign attr_paramList = paramList
  .assign attr_typeList = typeList
.end function
