.//============================================================================
.// BridgePoint Model Compiler Translation File: CreateClassStructure.arc
.//
.// This file contains code to create the class data structure for a class.
.// The structure will contain storage for events, event data, state machine
.// control and defined attributes.
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
.// Add a structure for the state machine events if a state machine exists
.select any sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
.if (not_empty sm_sm)
  .select many o_events related by sm_sm->SM_EVT[R502]
  .if (not_empty o_events)
    .//
    .// Create Event Item Structure
    .//
    .assign eventStructName = "${ci.classStruct}_EL" 
    .assign eventStructMembers = "<Member Name=""evt_lst"" DataType=""${eventStructName}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
<DataType Name="${eventStructName}" Family="NoFamily" Class="User">
<Description>
<![CDATA[Boolean structure for events included in structure '${ci.classStruct}_EVT'.]]>
</Description>
<Members>
    .assign eventMemberName = "${ci.classStruct}_BM"
<Member Name="${eventMemberName}" DataType="DINT" Dimension="0" Radix="Decimal" Hidden="true" ExternalAccess="Read/Write"/>      
<Member Name="b_creation_event" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${eventMemberName}" BitNumber="0" ExternalAccess="Read/Write">
<Description>
<![CDATA[The b_creation_event enables the instance of the class to execute it's state machine.]]>
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
        .assign evtDataStructName = "${ci.classStruct}_ED${o_event.Numb}"
        .assign eventStructMembers = "${eventStructMembers}\n<Member Name=""$l_{o_event.Mning}_event_data"" DataType=""${evtDataStructName}"" Dimension=""0"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
<DataType Name="${evtDataStructName}" Family="NoFamily" Class="User">
<Description>
<![CDATA[Event Data structure for event '$l_{o_event.Mning}' included in structure '${ci.classStruct}_EVT'.]]>
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
  .assign te_sm.SEMname = "<Member Name=""${ci.classEvents}"" DataType=""${ci.classStruct}_EVT"" Dimension=""${te_class.MaxExtentSize}"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .//
<DataType Name="${ci.classStruct}_EVT" Family="NoFamily" Class="User">
<Description>
<![CDATA[Data structure for all events and event data included in structure '${ci.classStruct}'.]]>
</Description>
<Members>
${eventStructMembers}
</Members>
</DataType>
.end if
.//
.// Create Class Data Type
.//
.select many o_attrs related by o_obj->O_ATTR[R102]
.if (not_empty o_attrs or (eventStructMembers != ""))
  .// Save the member element for this structure
  .select one te_class related by o_obj->TE_CLASS[R2019]
  .assign te_class.CBGeneratedName = "<Member Name=""${ci.classData}"" DataType=""${ci.classStruct}"" Dimension=""${te_class.MaxExtentSize}"" Radix=""NullType"" Hidden=""false"" ExternalAccess=""Read/Write""/>"
  .//
<DataType ${useTarget}Name="${ci.classStruct}" Family="NoFamily" Class="User">
  .// Add Class Description
<Description>
<![CDATA[Qualified Name: '${mi.qName}'
${o_obj.Descrip}]]>
</Description>
  .// Add Members
<Members>
  .// Add in structure for class state machine events if it was created
  .if (eventStructMembers != "")
<Member Name="events" DataType="${ci.classStruct}_EVT" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
<Member Name="ism" DataType="STATE_MACHINE_TRANSITION_CONTROL" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
  .end if
  .//
  .// Select all non-referential attributes and add to structure
  .//
  .// Group all booleans together
  .assign bool_name = ""
  .assign bit_number = 1
  .for each o_attr in o_attrs
    .select one d_type related by o_attr->S_DT[R114]
    .if (d_type.Name == "boolean")
      .if (bool_name == "")
        .assign bool_name = "${ci.classStruct}_B1"
<Member Name="${bool_name}" DataType="DINT" Dimension="0" Radix="Decimal" Hidden="true" ExternalAccess="Read/Write"/>
      .end if
      .if (o_attr.Descrip != "")
<Member Name="b_${o_attr.Name}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${bool_name}" BitNumber="${bit_number}" ExternalAccess="Read/Write">
<Description>
<![CDATA[${o_attr.Descrip}]]>
</Description>
</Member>
      .else
<Member Name="b_${o_attr.Name}" DataType="BIT" Dimension="0" Radix="Decimal" Hidden="false" Target="${bool_name}" BitNumber="${bit_number}" ExternalAccess="Read/Write"/>
      .end if
      .assign bit_number = bit_number + 1
    .end if
  .end for
  .//
  .// All non-boolean attributes
  .select many o_attrs related by o_obj->O_ATTR[R102]
  .for each o_attr in o_attrs
    .assign type_string = ""
    .assign radix = "decimal"
    .assign attrName = ""
    .//
    .// Determine if this is the identifying attribute
    .select one te_attr related by o_attr->TE_ATTR[R2033]
    .if (not_empty te_attr)
      .// Found either an Identifier or Referential attribute, both are handled the same
      .assign type_string = "DINT"
      .assign attrName = te_attr.GeneratedName
    .else
      .assign prefix = ""
      .assign suffix = ""
      .// Handle all other non-identifying attributes
      .select one d_type related by o_attr->S_DT[R114]
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
      .elif (d_type.Name == "inst_ref<Timer>")
        .assign type_string = "FBD_TIMER"
        .assign radix = "NullType"
        .assign prefix = "tmr_"
      .elif (d_type.Name == "state<State_Model>")
        .select any sm_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]
        .if (not_empty sm_state)
          .assign type_string = "DINT"
          .assign prefix = "d_"
        .end if
.//      .elif (d_type.Name == "same_as<Base_Attribute>")
.//        .assign type_string = "DINT"
.//        .select many r_oirs related by o_attr->O_RATTR[R106]->O_REF[R108]->R_RGO[R111]->R_OIR[R203]
.//        .for each r_oir in r_oirs
.//          .select any rel from instances of R_REL where (selected.Rel_ID == r_oir.Rel_ID)
.//          .assign suffix = "_${suffix}r${rel.Numb}"
.//        .end for
      .elif (d_type.Name == "boolean")
        .// Already handled previously
      .else
        .// Determine if it is an enumeration
        .select one s_edt related by d_type->S_EDT[R17]
        .if (not_empty s_edt)
          .assign type_string = "DINT"
          .assign prefix = "e_"
        .else
          .print "Data Type ${d_type.Name} not setup in model compiler."
        .end if
      .end if
      .assign attrName = "${prefix}$l_{o_attr.Name}${suffix}"
    .end if
    .//
    .if (type_string != "")
      .if (o_attr.Descrip != "")
<Member Name="${attrName}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[${o_attr.Descrip}]]>
</Description>
</Member>
      .else
<Member Name="${attrName}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write"/>
      .end if
    .end if
  .end for
</Members>
</DataType>
.end if
