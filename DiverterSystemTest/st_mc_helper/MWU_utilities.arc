.//============================================================================
.// BridgePoint Model Compiler Translation File: MWU_utilities.arc
.//
.// This file contains functions that create MarquipWardUnited translation
.// specific data. 
.//
.// Functions:
.//    str_CreateQualifiedName
.//    str_FormatIntegerIds
.//    grp_GetModelIdentifiers
.//    grp_GetCodeIdentifiers
.//    str_CreateEnumerationName
.//    str_CreateEnumeratorName
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.//
.// Create the fully qualified name for this class
.// This function uses recursion.
.function str_CreateQualifiedName .// EP_PKG
  .param inst_ref subtype
  .//
  .assign name = ""
  .select one parent_ep_pkg related by subtype->PE_PE[R8001]->EP_PKG[R8000]
  .select one parent_c_c related by subtype->PE_PE[R8001]->C_C[R8003]
  .if (not_empty parent_ep_pkg)
    .invoke r = str_CreateQualifiedName( parent_ep_pkg )
    .assign name = "${r.result}${parent_ep_pkg.Name}::"
  .elif (not_empty parent_c_c)
    .invoke r = str_CreateQualifiedName( parent_c_c )
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
.// Integer to 3 digit leading zeros conversion
.function str_FormatIntegerIds .// integer
  .param integer id
  .//
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
.// Returns model class and component name/numbers for an object
.function grp_GetModelIdentifiers  .// O_OBJ
  .param inst_ref o_obj
  .//
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by te_class->TE_C[R2064]
  .select one c_c related by te_c->C_C[R2054]
  .//
  .invoke r = str_CreateQualifiedName( o_obj )
  .//
  .assign attr_compName = "${c_c.Name}"
  .assign attr_compNumb = "${te_c.Name}"
  .assign attr_objName = "${o_obj.Name}"
  .assign attr_objNumb = "${te_class.system_class_number}"
  .assign attr_qName = "${r.result}${o_obj.Name}"
.end function
.//
.//
.// Returns derived identifiers used in the generated code
.function grp_GetCodeIdentifiers  .// O_OBJ
  .param inst_ref o_obj
  .//
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_c related by te_class->TE_C[R2064]
  .select one c_c related by te_c->C_C[R2054]
  .//
  .assign attr_uniqueId = "${te_class.GeneratedName}"
  .// 'o_obj.Name' for class and assigner identifiers is purposefully left in an untouched format
  .assign attr_classIdentifier = "${o_obj.Name}_${attr_uniqueId}"
  .assign attr_assignerIdentifier = "${attr_classIdentifier}_A"
  .// Structure Identifiers
  .assign attr_classStruct = "$u_{attr_classIdentifier}"
  .assign attr_assignerStruct = "$u_{attr_assignerIdentifier}"
  .// Data Storage Identifiers - Global
  .assign attr_classData = "$l_{attr_classIdentifier}"
  .assign attr_assignerData = "$l_{attr_assignerIdentifier}"
  .assign attr_classEvents = "event_$l_{attr_classIdentifier}"
  .assign attr_assignerEvents = "event_$l_{attr_assignerIdentifier}"
  .assign attr_gblClassData = "_obj.$l_{attr_classIdentifier}"
  .assign attr_gblClassEvents = "_events.event_$l_{attr_classIdentifier}"
  .assign attr_gblAssignerData = "_obj.$l_{attr_assignerIdentifier}"
  .assign attr_gblAssignerEvents = "_events.event_$l_{attr_assignerIdentifier}"
.end function
.//
.//
.// Create the target name for an Enumeration
.function str_CreateEnumerationName  .// string
  .param string name
  .//
  .assign attr_name = "$u_{name}_ENUM"
.end function
.//
.//
.// Create the target name for an Enumerator
.function str_CreateEnumeratorName  .// string
  .param string name
  .//
  .assign attr_name = "$u_{name}"
.end function
.//
.//