.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_EnumStruct.arc
.//
.// This file creates data structures for all enumerations in the project.  The
.// output format is XML formatted with a schema that will allow a direct 
.// import into a PLC using the Rockwell programming software.
.//============================================================================
  .// Add the XML version
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
.// RSLogix5000 Content
<RSLogix5000Content SchemaRevision="1.0" SoftwareRevision="28.00" TargetName="KnifeStackerCellConst" TargetType="DataType" ContainsContext="true" Owner="Ronald Schmidt, Barry-Wehmiller" ExportDate="Wed May 11 10:07:01 2016" ExportOptions="References NoRawData L5KData DecoratedData Context Dependencies ForceProtectedEncoding AllProjDocTrans">
<Controller Use="Context" Name="KnifeStacker">
<DataTypes Use="Context">
.// Constants
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
<DataType Name="$u_{cnst_csp.InformalGroupName}_CONST" Family="NoFamily" Class="User">
  .// Add Enumeration Description
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
.end for
</Members>
</DataType>
.//
.// Enumerations
.select many s_edts from instances of S_EDT
.for each s_edt in s_edts
  .select one s_dt related by s_edt->S_DT[R17]
<DataType Name="$u_{s_dt.Name}_ENUM" Family="NoFamily" Class="User">
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
    .if (s_enum.Descrip != "")
<Member Name="d_$u_{s_enum.Name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[${s_enum.Descrip}]]>
</Description>
</Member>
    .else
<Member Name="d_$u_{s_enum.Name}" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write"/>
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
.select many cnst_csps from instances of CNST_CSP
.for each cnst_csp in cnst_csps
<Member Name="$l_{cnst_csp.InformalGroupName}" DataType="$u_{cnst_csp.InformalGroupName}_CONST" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
.end for
.select many s_edts from instances of S_EDT
.for each s_edt in s_edts
  .select one s_dt related by s_edt->S_DT[R17]
<Member Name="$l_{s_dt.Name}" DataType="$u_{s_dt.Name}_ENUM" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
.end for
</Members>
</DataType>
</DataTypes>
</Controller>
</RSLogix5000Content>
.//  
.emit to file "../../src/PROGRAM_CONSTANTS.L5X.txt"
.//  
