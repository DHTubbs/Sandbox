.//============================================================================
.// BridgePoint Model Compiler Translation File: O_ATTR_utilities.arc
.//
.// This file contains functions that work with the OoaOfOoa O_ATTR class. 
.//
.// Functions:
.//    bool_IsIdentifyingAttr
.//    grp_createIdentifierPrefixSuffix
.//    str_createIdentifyingAttrName
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.// Find the identifying attribute of a class
.function bool_IsIdentifyingAttr  .// O_OBJ, O_ATTR
  .param inst_ref o_obj
  .param inst_ref o_attr
  .//
  .// Looking for the 1st primary identifier (Oid_ID == 0)
  .select any o_oida related by o_attr->O_OIDA[R105] where ((selected.Obj_ID == o_obj.Obj_ID) and (selected.Oid_ID == 0))
  .assign attr_result = (not_empty o_oida)
.end function
.//
.//
.// Get the class' identifying attribute prefix and suffix
.function grp_createIdentifierPrefixSuffix  .// O_ATTR
  .param inst_ref o_attr
  .//
  .assign prefix = "pi_"
  .assign suffix = ""
  .select one d_type related by o_attr->S_DT[R114]
  .if (d_type.Name == "same_as<Base_Attribute>")
    .// Find the Base_Attribute
    .select one b_s_edt related by o_attr->O_RATTR[R106]->O_BATTR[R113]->O_ATTR[R106]->S_DT[R114]->S_EDT[R17]
    .if (not_empty b_s_edt)
      .// Enumerated Primary Identifier
      .assign prefix = "e${prefix}"
    .end if
    .// Create the suffix
    .select many r_oirs related by o_attr->O_RATTR[R106]->O_REF[R108]->R_RGO[R111]->R_OIR[R203]
    .for each r_oir in r_oirs
      .select any rel from instances of R_REL where (selected.Rel_ID == r_oir.Rel_ID)
      .assign suffix = "_${suffix}r${rel.Numb}"
    .end for
  .else
    .// Check if this is an enumeration
    .select one s_edt related by d_type->S_EDT[R17]
    .if (not_empty s_edt)
      .// Enumerated Primary Identifier
      .assign prefix = "e${prefix}"
    .end if
  .end if
  .assign attr_prefix = prefix
  .assign attr_suffix = suffix
.end function
.//
.//
.// Create the identifying attribute name for a class
.function str_createIdentifyingAttrName  .// O_OBJ
  .param inst_ref o_obj
  .//
  .assign return = "'TODO: Class (${o_obj.Name}) requires primary identifier.'" 
  .// Looking for the 1st primary identifier (Oid_ID == 0)
  .select any o_oida from instances of O_OIDA where ((selected.Obj_ID == o_obj.Obj_ID) and (selected.Oid_ID == 0))
  .if (not_empty o_oida)
    .select one o_attr related by o_oida->O_ATTR[R105]
    .invoke r = grp_createIdentifierPrefixSuffix(o_attr)
    .assign return = "${r.prefix}$l{o_attr.Name}${r.suffix}"
  .end if
  .assign attr_name = return
.end function
.//
.//