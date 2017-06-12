.//
.//
.//
.function str_FindClassInComponent_c_c  // string
  .param inst_ref c_c
  .//
  .assign c_c_members = ""
  .assign output = ""
  .assign newline = ""
  .invoke componentType = str_CreateUniqueComponentId_c_c(c_c)
  .invoke desc = createQualifiedName( c_c )
  .//
  .//print "Processing Component: ${c_c.Name}"
  .//
  .// Check to see if this component has all ready been processed.
  .// If a TE_C exists that is related to this instance processing is complete
  .select one te_c related by c_c->TE_C[R2054]
  .if (empty te_c)
    .//
    .// Create and relate a TE_C so this component isn't processed again
    .create object instance te_c of TE_C
    .// relate te_c to c_c across R2054
    .assign te_c.cId = c_c.Id
    .//
    .// Select all components directly under this component
    .//                                                                      ElementTypeConstants::COMPONENT == 2
    .select many pe_pes related by c_c->PE_PE[R8003] where (selected.type == 2)   
    .for each pe_pe in pe_pes
      .select one child_c_c related by pe_pe->C_C[R8001]
      .invoke r = str_MakeComponentStructure_c_c( child_c_c )
      .if (r.output != "")
        .assign output = "${output}${r.output}"
      .end if
      .// Create a Member element for the parent component
      .invoke member = str_CreateComponentMember( child_c_c, child_c_c.Name, componentType.result )
      .assign c_c_members = "${c_c_members}${newline}${member.result}"
      .assign newline = "\n"
    .end for
    .//
    .// Select all Component References
    .//                                                                      ElementTypeConstants::COMPONENT_REFERENCE == 21
    .select many pe_pes related by c_c->PE_PE[R8003] where (selected.type == 21)
    .for each pe_pe in pe_pes
      .select one componentRef related by pe_pe->CL_IC[R8001]
      .select one related_c_c related by componentRef->C_C[R4201]
      .invoke r = str_MakeComponentStructure_c_c( child_c_c )
      .if (r.output != "")
        .assign output = "${output}${r.output}"
      .end if
      .// Create a Member element for the parent component
      .invoke member = str_CreateComponentMember( componentRef, componentRef.ClassifierName, componentType.result )
      .assign c_c_members = "${c_c_members}${newline}${member.result}"
      .assign newline = "\n"
    .end for
    .//
    .// Select all packages directly under this component
    .//                                                                      ElementTypeConstants::PACKAGE == 7
    .select many pe_pes related by c_c->PE_PE[R8003] where (selected.type == 7)
    .for each pe_pe in pe_pes
      .select one child_ep_pkg related by pe_pe->EP_PKG[R8001]
      .invoke r = str_MakeComponentStructure_ep_pkg(child_ep_pkg)
      .if (r.result != "")
        .assign c_c_members = "${c_c_members}${newline}${r.result}"
        .assign newline = "\n"
      .end if
    .end for
    .//
    .// Create the data type
    .if (c_c_members != "")
      .assign output = "<DataType Name=""${componentType.result}"" Family=""NoFamily"" Class=""User"">\n<Description>\n<![CDATA[Qualified Name: '${desc.result}${c_c.Name}'\n${c_c.Descrip}]]>\n</Description>\n<Members>\n${c_c_members}\n</Members>\n</DataType>"
    .end if
  .end if
  .//
  .assign attr_output = "${output}"
.end function
.//
.//
.//
.function str_FindClassInPackage_ep_pkg  // string, string
  .param inst_ref ep_pkg
  .//
  .assign ep_pkg_members = ""
  .assign output = ""
  .assign newline = ""
  .print "Processing Package: ${ep_pkg.Name}"
  .//
  .// Select all components directly under this package
  .//                                                                         ElementTypeConstants::COMPONENT == 2
  .select many pe_pes related by ep_pkg->PE_PE[R8000] where (selected.type == 2)
  .for each pe_pe in pe_pes
    .select one child_c_c related by pe_pe->C_C[R8001]
    .invoke r = str_MakeComponentStructure_c_c( child_c_c )
    .if (r.output != "")
      .assign output = "${output}${r.output}"
    .end if
    .// Create a Member element for the parent package
    .invoke componentType = str_CreateUniqueComponentId_c_c( child_c_c )
    .invoke member = str_CreateComponentMember( child_c_c, child_c_c.Name, componentType.result )
    .assign ep_pkg_members = "${ep_pkg_members}${newline}${member.result}"
    .assign newline = "\n"
  .end for
  .//
  .// Select all Component References
  .//                                                                         ElementTypeConstants::COMPONENT_REFERENCE == 21
  .select many pe_pes related by ep_pkg->PE_PE[R8000] where (selected.type == 21)
  .for each pe_pe in pe_pes
    .select one componentRef related by pe_pe->CL_IC[R8001]
    .select one related_c_c related by componentRef->C_C[R4201]
    .invoke r = str_MakeComponentStructure_c_c( related_c_c )
    .if (r.output != "")
      .assign output = "${output}${r.output}"
    .end if
    .// Create a Member element for the parent package
    .invoke componentType = str_CreateUniqueComponentId_c_c( related_c_c )
    .invoke member = str_CreateComponentMember( componentRef, componentRef.ClassifierName, componentType.result )
    .assign ep_pkg_members = "${ep_pkg_members}${newline}${member.result}"
    .assign newline = "\n"
  .end for
  .//
  .// Select all packages directly under this package
  .//                                                                         ElementTypeConstants::PACKAGE == 7
  .select many pe_pes related by ep_pkg->PE_PE[R8000] where (selected.type == 7)
  .for each pe_pe in pe_pes
    .select one child_ep_pkg related by pe_pe->EP_PKG[R8001]
    .invoke r = str_MakeComponentStructure_ep_pkg(child_ep_pkg)
    .if (r.result != "")
      .assign ep_pkg_members = "${ep_pkg_members}${newline}${r.result}"
      .assign newline = "\n"
    .end if
  .end for
  .//
  .// Select all objects and make members for them
  .//                                                                         ElementTypeConstants::CLASS == 4
  .select many pe_pes related by ep_pkg->PE_PE[R8000] where (selected.type == 4)
  .for each pe_pe in pe_pes
    .select one o_obj related by pe_pe->O_OBJ[R8001]
    .//print "  Processing Object: ${o_obj.Name}"
    .invoke r = str_CreateBaseClassId_o_obj(o_obj)
    .assign objDesc = "/>"
    .if (o_obj.Descrip != "")
      .assign objDesc = ">\n<Description>\n<![CDATA[${o_obj.Descrip}]]>\n</Description>\n</Member>"
    .end if
    .assign ep_pkg_members = "${ep_pkg_members}${newline}<Member Name=""$l_{o_obj.Name}"" DataType=""$u_{r.result}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""${objDesc}"
    .assign newline = "\n"
  .end for
  .//
  .// Return a member element for this component
  .assign attr_output = "${output}"
  .assign attr_result = "${ep_pkg_members}"
.end function
.//
.//
.//
.// Main Code
.invoke r = str_FindClassInPackage_ep_pkg( ep_pkg,  )
.if (r.output != "")
${r.output}
.end if
.if (r.result != "")
<DataType Use="Target" Name="${ep_pkg.Name}" Family="NoFamily" Class="User">
  .invoke desc = createQualifiedName( ep_pkg )
<Description>
<![CDATA[Qualified Name: '${desc.result}${ep_pkg.Name}'
${ep_pkg.Descrip}]]>
</Description>
<Members>
${r.result}
</Members>
</DataType>
.end if
