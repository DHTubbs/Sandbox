.//
.//
.// Create the fully qualified name for this class
.function createQualifiedName .// string
  .param inst_ref subtype
  .assign name = ""
  .select one parent_ep_pkg related by subtype->PE_PE[R8001]->EP_PKG[R8000]
  .select one parent_c_c related by subtype->PE_PE[R8001]->C_C[R8003]
  .if (not_empty parent_ep_pkg)
    .invoke r = createQualifiedName( parent_ep_pkg )
    .assign name = "${r.result}${parent_ep_pkg.Name}::"
  .elif (not_empty parent_c_c)
    .invoke r = createQualifiedName( parent_c_c )
    .assign name = "${r.result}${parent_c_c.Name}::"
  .else
    .// Add the System.  Can assume subtype is a package (EP_PKG) because
    .// a component has to exist within a package.
    .select one s_sys related by subtype->S_SYS[R1405]
    .assign name = "${s_sys.Name}::"
  .end if
  .assign attr_result = name
.end function
.//
.//
.function formatIntegerIds .// string
  .param integer id
  .assign maxPlusOne = 1000
  .assign result = ""
  .while (maxPlusOne > 10)
    .assign maxPlusOne = maxPlusOne / 10
    .if (id < maxPlusOne)
      .assign result = "${result}0"
    .end if
  .end while
  .assign attr_result = "${result}${id}"
.end function
.//
.//
.function str_CreateUniqueComponentId_c_c .// string
  .param inst_ref c_c
  .//
  .assign comp_num = -1
  .if (not_empty c_c)
    .invoke r = EP_PKG_getContainingPackage( c_c )
    .assign comp_pkg = r.result
    .if (not_empty comp_pkg)
      .assign comp_num = comp_pkg.Num_Rng
    .end if
  .end if
  .//
  .invoke r = formatIntegerIds(comp_num)
  .assign attr_result = "$u_{c_c.Name}_${r.result}"
.end function
.//
.//
.function str_CreateBaseClassId_o_obj .// string
  .param inst_ref o_obj
  .//
  .assign classId = ""
  .assign classNum = ""
  .assign compNum = ""
  .//
  .if (not_empty o_obj)
    .assign classId = "${o_obj.Name}"
    .invoke r = formatIntegerIds(o_obj.Numb)
    .assign classNum = r.result
    .select any ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
    .if (not_empty ep_pkg)
      .invoke r = C_C_getContainingComponent( ep_pkg )
      .assign comp = r.result
      .if (not_empty comp)
        .invoke r = EP_PKG_getContainingPackage( comp )
        .assign comp_pkg = r.result
        .if (not_empty comp_pkg)
          .invoke r = formatIntegerIds(comp_pkg.Num_Rng)
          .assign compNum = r.result
        .end if
    .end if
  .end if
  .assign attr_result = "${classId}_${compNum}_${classNum}"
.end function
