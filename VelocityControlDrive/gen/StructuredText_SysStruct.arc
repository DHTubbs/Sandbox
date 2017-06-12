.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_SysStruct.arc
.//
.// This file creates data structures for all objects in the system.  If the
.// object has a state machine then the event structure for the state machine
.// is added to the objects structure.  The output format is XML formatted with
.// a schema that will allow a direct import into a PLC using the Rockwell 
.// programming software.  A single file is generated.
.//============================================================================
.//
.include "../../ST_MC/PE_PE_utilities.arc"
.include "../../ST_MC/MWU_utilities.arc"
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
<RSLogix5000Content SchemaRevision="1.0" SoftwareRevision="28.00" TargetName="${ep_pkg.Name}" TargetType="DataType" ContainsContext="true" Owner="Ronald Schmidt, Barry-Wehmiller" ExportDate="Wed May 11 10:07:01 2016" ExportOptions="References NoRawData L5KData DecoratedData Context Dependencies ForceProtectedEncoding AllProjDocTrans">
<Controller Use="Context" Name="${s_sys.Name}">
<DataTypes Use="Context">
.//
.// Add data types that do not exist in the model
.//
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
.//
.// Add the class data structures
.//
.select any comp from instances of C_C where (False)
.assign useTarget = ""
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .include "../../ST_MC/CreateClassStructure.arc"
.end for
.//
.// Create the system structure from the class and constant structures
.//
.print "System: ${s_sys.Name}"
.include "../../ST_MC/CreateSystemStruct.arc"
.//
.// Add the closing tags
</DataTypes>
</Controller>
</RSLogix5000Content>
.//  
.emit to file "../../src/SYSTEM_STRUCT.L5X.txt"
.//  
