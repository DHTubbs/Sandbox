.//============================================================================
.// BridgePoint Model Compiler Translation File: CreateAssignerStruct.arc
.//
.// This file contains code to create the assigner data structure for a class.
.// Although a class in the model is not allowed to have a data structure, the
.// assigner state machine does require storage in the application to maintain
.// its state variable and a mailbox to receive events.
.// 
.// This file contains in-line code that can be included in other translation 
.// files.  It is currently included in StructuredText_SysStruct.arc and 
.// StructuredText_ClassStruct.arc translation files.
.//
.// Required Defined Variables: 
.//    o_obj (O_OBJ)
.//    useTarget (boolean)
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.// Get the Model & Code Identifiers
.invoke mi = grp_GetModelIdentifiers(o_obj)
.invoke ci = grp_GetCodeIdentifiers(o_obj)
.//
.assign eventStructName = "" 
.assign eventStructMembers = ""
.//
.// Add a structure for the assigner state machine events
.select any sm_sm related by o_obj->SM_ASM[R519]->SM_SM[R517]
.if (not_empty sm_sm)
  .select many o_events related by sm_sm->SM_EVT[R502]
  .if (not_empty o_events)
    .//
    .// Create Event Item Structure
    .//
    .assign eventStructName = "${ci.assignerStruct}_EL" 
    .assign eventStructMembers = "<Member Name=""evt_lst"" DataType=""${eventStructName}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
<DataType Name="${eventStructName}" Family="NoFamily" Class="User">
<Members>
    .assign eventMemberName = "${ci.assignerStruct}_BM"
<Member Name="${eventMemberName}" DataType="DINT" Dimension="0" Radix="Decimal" Hidden="true" ExternalAccess="Read/Write"/>      
<Member Name="b_creation_event" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${eventMemberName}" BitNumber="0" ExternalAccess="Read/Write">
<Description>
<![CDATA[The b_creation_event creates the assigner so it can start to execute it's state machine.]]>
</Description>
</Member>
    .for each o_event in o_events
      .if (o_event.Descrip != "")
<Member Name="b_${o_event.Mning}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${eventMemberName}" BitNumber="${o_event.Numb}" ExternalAccess="Read/Write">
<Description>
<![CDATA[${o_event.Descrip}]]>
</Description>
</Member>
      .else
<Member Name="b_${o_event.Mning}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${eventMemberName}" BitNumber="${o_event.Numb}" ExternalAccess="Read/Write"/>
      .end if
    .end for
</Members>
</DataType>
    .//
    .// Create Event Data Types
    .//
    .for each o_event in o_events
      .select many sm_evtdis related by o_event->SM_EVTDI[R532]
      .if (not_empty sm_evtdis)
        .assign evtDataStructName = "${ci.assignerStruct}_ED${o_event.Numb}"
        .assign eventStructMembers = "${eventStructMembers}\n<Member Name=""$l_{o_event.Mning}_event_data"" DataType=""${evtDataStructName}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
<DataType Name="${evtDataStructName}" Family="NoFamily" Class="User">
<Description>
<![CDATA[Event Data structure for event '$l_{o_event.Mning}' included in structure '${ci.assignerStruct}_EVT'.]]>
</Description>
<Members>
        .//
        .// Group all booleans together
        .assign bool_name = ""
        .assign bit_number = 1
        .for each sm_evtdi in sm_evtdis
          .select one d_type related by sm_evtdi->S_DT[R524]
          .if (d_type.Name == "boolean")
            .if (bool_name == "")
              .assign bool_name = "${eventMemberName}${o_event.Numb}"
<Member Name="${bool_name}" DataType="DINT" Dimension="0" Radix="Decimal" Hidden="true" ExternalAccess="Read/Write"/>
            .end if
            .if (sm_evtdi.Descrip != "")
<Member Name="b_${sm_evtdi.Name}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${bool_name}" BitNumber="${bit_number}" ExternalAccess="Read/Write">
<Description>
<![CDATA[${sm_evtdi.Descrip}]]>
</Description>
</Member>
            .else
<Member Name="b_${sm_evtdi.Name}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${bool_name}" BitNumber="${bit_number}" ExternalAccess="Read/Write"/>
            .end if
            .assign bit_number = bit_number + 1
          .end if
        .end for
        .//
        .// All non-boolean attributes
        .for each sm_evtdi in sm_evtdis
          .select one d_type related by sm_evtdi->S_DT[R524]
          .assign type_string = ""
          .assign radix = "decimal"
          .assign prefix = ""
          .assign suffix = ""
          .if (d_type.Name == "integer")
            .assign type_string = "DINT"
            .assign prefix = "d_"
          .elif (d_type.Name == "real")
            .assign type_string = "REAL"
            .assign radix = "Float"
            .assign prefix = "r_"
          .elif (d_type.Name == "string")
            .assign type_string = "STRING"
            .assign radix = "NullType"
            .assign prefix = "str_"
          .elif (d_type.Name == "boolean")
            .// Already handled previously
          .else
            .// Determine if it is an enumeration
            .select one s_edt related by d_type->S_EDT[R17]
            .if (not_empty s_edt)
              .assign type_string = "DINT"
              .assign prefix = "e_"
            .else
              .print "Data Type not found: ${d_type.Name}"
            .end if
          .end if
          .//
          .if (type_string != "")
            .if (sm_evtdi.Descrip != "")
<Member Name="${prefix}$l_{sm_evtdi.Name}${suffix}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[${sm_evtdi.Descrip}]]>
</Description>
</Member>
            .else
<Member Name="${prefix}$l_{sm_evtdi.Name}${suffix}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write"/>
            .end if
          .end if
        .end for
</Members>
</DataType>
      .end if
    .end for
  .end if
.end if
.//
.// Create Event Structure Data Type
.//
.if (eventStructMembers != "")
  .// Save the member element for this structure
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .select one te_sm related by sm_sm->TE_SM[R2043]
  .assign te_sm.SEMname = "<Member Name=""${ci.assignerEvents}"" DataType=""${ci.assignerStruct}_EVT"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .//
<DataType Name="${ci.assignerStruct}_EVT" Family="NoFamily" Class="User">
<Description>
<![CDATA[Data structure for all events and event data included in structure '${ci.assignerStruct}'.]]>
</Description>
<Members>
${eventStructMembers}
</Members>
</DataType>
  .//
  .// Create Class Data Type
  .//
  .// Save the member element for this class
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign te_class.CBDispatcher = "<Member Name=""${ci.assignerData}"" DataType=""${ci.assignerStruct}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .//
<DataType ${useTarget}Name="${ci.assignerStruct}" Family="NoFamily" Class="User">
  .// Add Description
<Description>
<![CDATA[Qualified Name: '${mi.qName}'
'${mi.objName}' Assigner State Model]]>
</Description>
  .// Add Members
<Members>
  .// Add in structure for assigner state machine events
<Member Name="events" DataType="${ci.assignerStruct}_EVT" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
<Member Name="asm" DataType="STATE_MACHINE_TRANSITION_CONTROL" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
<Member Name="d_current_state" DataType="DINT" Dimension="0" Radix="decimal" Hidden="false" ExternalAccess="Read/Write"/>
</Members>
</DataType>
.end if
