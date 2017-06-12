.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_SysStruct.arc
.//
.// This file creates data structures for all classes in the system.  The
.// output format is XML using a schema the Rockwell programming software can
.// import directly into the PLC. 
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: SYSTEM_STRUCT.L5X
.//============================================================================
.//
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
.// Two assumptions here:
.// 1 - Only one system
.// 2 - Model we are compiling is designed with a single package at the root of the project!
.select any s_sys from instances of S_SYS
.select any ep_pkg related by s_sys->EP_PKG[R1401]
.//
.// Add the XML version
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
.// RSLogix5000 Content
<RSLogix5000Content SchemaRevision="1.0" SoftwareRevision="28.00" TargetName="STATE_MACHINE_TRANSITION_CONTROL" TargetType="DataType" ContainsContext="true" Owner="Ronald Schmidt, Barry-Wehmiller" ExportDate="Wed May 11 10:07:01 2016" ExportOptions="References NoRawData L5KData DecoratedData Context Dependencies ForceProtectedEncoding AllProjDocTrans">
<Controller Use="Context" Name="${s_sys.Name}">
<DataTypes Use="Context">
.//
.// Add data types that do not exist in the model
.//
<DataType Use="Target" Name="STATE_MACHINE_TRANSITION_CONTROL" Family="NoFamily" Class="User">
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
.//
.// Add the class data structures
.//
.assign useTarget = ""
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .include "../../st_mc_helper/CreateClassStructure.arc"
.end for
.//
.// Add the assigner data structures
.//
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .include "../../st_mc_helper/CreateAssignerStruct.arc"
.end for
.//
.// Create the Overall Data Structures
.//
.// The system structure
<DataType ${useTarget}Name="KSC_SYSTEM_DATA" Family="NoFamily" Class="User">
<Description>
<![CDATA[Structure includes all object structures in the program.]]>
</Description>
.// Add Members
<Members>
.select many te_classes from instances of TE_CLASS
.for each te_class in te_classes
  .if (te_class.CBGeneratedName != "")
${te_class.CBGeneratedName}
  .end if
  .if (te_class.CBDispatcher != "")
${te_class.CBDispatcher}
  .end if
.end for
</Members>
</DataType>
.//
.// The event mailbox structure
<DataType ${useTarget}Name="EVENT_MAILBOX" Family="NoFamily" Class="User">
<Description>
<![CDATA[Structure includes all event structures in the program.]]>
</Description>
.// Add Members
<Members>
.select many te_sms from instances of TE_SM
.for each te_sm in te_sms
${te_sm.SEMname}
.end for
</Members>
</DataType>
.//
.// Add the closing tags
.//
</DataTypes>
</Controller>
</RSLogix5000Content>
.//  
.emit to file "../../src/SYSTEM_STRUCT.L5X"
.//  
