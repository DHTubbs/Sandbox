.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_ClassStruct.arc
.//
.// This file creates data structures for all classes in the system and stores
.// them in individual files in the 'ind_cls' sub-directory.  The output
.// created is the same as that produced by the translation file
.// 'StructuredText_SysStruct', except each class has its own output file.  The
.// output format is XML using a schema the Rockwell programming software can
.// import directly into the PLC. 
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: ./ind_cls/<class name>_<component number>_<class number>.L5X
.//============================================================================
.//
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
.assign useTarget = "Use=""Target"" "
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .// Add the XML version
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
  .// RSLogix5000 Content
<RSLogix5000Content SchemaRevision="1.0" SoftwareRevision="28.00" TargetName="KnifeStackerCellStructs" TargetType="DataType" ContainsContext="true" Owner="Ronald Schmidt, Barry-Wehmiller" ExportDate="Wed May 11 10:07:01 2016" ExportOptions="References NoRawData L5KData DecoratedData Context Dependencies ForceProtectedEncoding AllProjDocTrans">
<Controller Use="Context" Name="KnifeStacker">
<DataTypes Use="Context">
<DataType Name="STATE_MACHINE_TRANSITION_CONTROL" Family="NoFamily" Class="User">
<Members>
<Member Name="STATE_MACHINE_TRANSITION_CONTROL_BM" DataType="DINT" Dimension="0" Radix="Decimal" Hidden="true" ExternalAccess="Read/Write"/>      
<Member Name="b_done" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="STATE_MACHINE_TRANSITION_CONTROL_BM" BitNumber="0" ExternalAccess="Read/Write">
<Description>
<![CDATA[Controls when the state machine will exit.  When 'True' the state machine will exit at the conclusion of checking the current state exit conditions.]]>
</Description>
</Member>
<Member Name="b_txn" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="STATE_MACHINE_TRANSITION_CONTROL_BM" BitNumber="1" ExternalAccess="Read/Write">
<Description>
<![CDATA[Controls execution of entry actions in a state machine state.  When 'True' the state machine entry action will execute.]]>
</Description>
</Member>
</Members>
</DataType>
  .include "../../st_mc_helper/CreateClassStructure.arc"
</DataTypes>
</Controller>
</RSLogix5000Content>
  .//  
  .invoke ci = grp_GetCodeIdentifiers(o_obj)
  .emit to file "../../src/ind_cls/$r{ci.classIdentifier}.L5X"
  .//  
.end for
