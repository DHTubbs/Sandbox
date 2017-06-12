.//
.//
.// Recursively find the first parameter in the list.
.function O_TPARMfindFirstParameter .// O_TPARM
  .param inst_ref o_tparm
  .select any return from instances of O_TPARM where (False)
  .select one preceding_o_tparm related by o_tparm->O_TPARM[R124.'precedes']
  .if (not_empty preceding_o_tparm)
    .invoke r = O_TPARMfindFirstParameter( preceding_o_tparm )
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
.function O_TPARMcreateParameterList .// string
  .param inst_ref o_tparm
  .assign paramList = ""
  .if (not_empty o_tparm)
    .select one succeeding_o_tparm related by o_tparm->O_TPARM[R124.'succeeds']
    .invoke r = O_TPARMcreateParameterList( succeeding_o_tparm )
    .if (r.result != "")
      .assign paramList = "${o_tparm.Name}, ${r.result}"
    .else
      .assign paramList = "${o_tparm.Name}"
    .end if
  .end if
  .assign attr_result = paramList
.end function
