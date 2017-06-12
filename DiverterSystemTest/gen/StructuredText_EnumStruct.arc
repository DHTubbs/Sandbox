.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_EnumStruct.arc
.//
.// This file creates data structures for all enumerations in the project.  The
.// output format is XML using a schema the Rockwell programming software can
.// import directly into the PLC. 
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: PROGRAM_CONSTANTS.L5X
.//============================================================================
.//
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
.assign allStructMembers = ""
.//
.// Add the XML version
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
.// RSLogix5000 Content
<RSLogix5000Content SchemaRevision="1.0" SoftwareRevision="28.00" TargetName="KnifeStackerCellConst" TargetType="DataType" ContainsContext="true" Owner="Ronald Schmidt, Barry-Wehmiller" ExportDate="Wed May 11 10:07:01 2016" ExportOptions="References NoRawData L5KData DecoratedData Context Dependencies ForceProtectedEncoding AllProjDocTrans">
<Controller Use="Context" Name="KnifeStacker">
<DataTypes Use="Context">
.//
.// Constants
.//
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
  .if (allStructMembers == "")
    .assign allStructMembers = "<Member Name=""$u_{cnst_csp.InformalGroupName}"" DataType=""$u_{cnst_csp.InformalGroupName}_CONST"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .else
    .assign allStructMembers = "${allStructMembers}\n<Member Name=""$u_{cnst_csp.InformalGroupName}"" DataType=""$u_{cnst_csp.InformalGroupName}_CONST"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .end if  
<DataType Name="$u_{cnst_csp.InformalGroupName}_CONST" Family="NoFamily" Class="User">
  .// Add Constant Description
  .if (cnst_csp.Descrip != "")
<Description>
<![CDATA[${cnst_csp.Descrip}]]>
</Description>
  .end if
  .// Add Members
<Members>
  .select many cnst_sycs related by cnst_csp->CNST_SYC[R1504]
  .for each cnst_syc in cnst_sycs
    .select one cnst_lsc related by cnst_syc->CNST_LFSC[R1502]->CNST_LSC[R1503]
    .if (cnst_syc.Descrip != "")
<Member Name="d_$u_{cnst_syc.Name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[Defined Value: ${cnst_lsc.Value}
${cnst_syc.Descrip}]]>
</Description>
</Member>
    .else
<Member Name="d_$u_{cnst_syc.Name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write"/>
    .end if
  .end for
</Members>
</DataType>
.end for
.//
.// Create an additional constant data type to store the upper bound array index for classes with arrays.
.// The stored value is the array size minus one.
.//
.select many te_classes from instances of TE_CLASS where (selected.MaxExtentSize > 0)
.if (not_empty te_classes)
  .if (allStructMembers == "")
    .assign allStructMembers = "<Member Name=""OBJ_ARRAY_UPPER_BOUND"" DataType=""OBJ_ARRAY_UPPER_BOUND_CONST"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .else
    .assign allStructMembers = "${allStructMembers}\n<Member Name=""OBJ_ARRAY_UPPER_BOUND"" DataType=""OBJ_ARRAY_UPPER_BOUND_CONST"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .end if  
<DataType Name="OBJ_ARRAY_UPPER_BOUND_CONST" Family="NoFamily" Class="User">
  .// Add Constant Description
<Description>
<![CDATA[Constants to define the array upper bound index.  The constant is used in comparisons to check the array upper limit and in 'for' loops.
Constant names are created in this format: d_<Component Number>_<Class Number>_<Class Keyletters>]]>
</Description>
  .// Add Members
<Members>
  .for each te_class in te_classes
    .assign maxExtentSize = te_class.MaxExtentSize - 1
    .select one c_c related by te_class->TE_C[R2064]->C_C[R2054]
    .select one o_obj related by te_class->O_OBJ[R2019]
<Member Name="d_${te_class.GeneratedName}_${te_class.Key_Lett}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[Defined Value: ${maxExtentSize}, Component: '${c_c.Name}', Class Name: '${o_obj.Name}']]>
</Description>
</Member>
  .end for
</Members>
</DataType>
.end if
.//
.// Enumerations
.//
.select many s_edts from instances of S_EDT
.for each s_edt in s_edts
  .select one s_dt related by s_edt->S_DT[R17]
  .invoke r = str_CreateEnumerationName(s_dt.Name)
  .if (allStructMembers == "")
    .assign allStructMembers = "<Member Name=""$u_{r.name}"" DataType=""${r.name}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .else
    .assign allStructMembers = "${allStructMembers}\n<Member Name=""$u_{r.name}"" DataType=""${r.name}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .end if  
<DataType Name="${r.name}" Family="NoFamily" Class="User">
  .// Add Enumeration Description
  .if (s_dt.Descrip != "")
<Description>
<![CDATA[${s_dt.Descrip}]]>
</Description>
  .end if
  .// Add Members
<Members>
  .//
  .// Select all of the enumerators and add them to the structure
  .//
  .select many s_enums related by s_edt->S_ENUM[R27]
  .for each s_enum in s_enums
    .invoke r = str_CreateEnumeratorName(s_enum.Name)
    .if (s_enum.Descrip != "")
<Member Name="d_${r.name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[${s_enum.Descrip}]]>
</Description>
</Member>
    .else
<Member Name="d_${r.name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write"/>
    .end if
  .end for
</Members>
</DataType>
.end for
.//
.// Create the enclosing structure
.//
<DataType Use="Target" Name="PROGRAM_CONSTANTS" Family="NoFamily" Class="User">
<Description>
<![CDATA[The constants defined for this program.]]>
</Description>
<Members>
${allStructMembers}
</Members>
</DataType>
</DataTypes>
</Controller>
</RSLogix5000Content>
.//  
.emit to file "../../src/PROGRAM_CONSTANTS.L5X"
.//  
