.//
.// This code snippet creates a Rockwell PLC data structure for a class
.// in the model specified by o_obj.  It is meant to be included in the
.// StructuredText_SysStruct.arc and StructuredText_ClassStruct.arc files.
.//
.// Inputs: o_obj
.//         useTarget
.//
.invoke r = str_CreateBaseClassId_o_obj(o_obj)
.assign baseClassId = "${r.result}"
.assign classIdentifier = "$u_{r.result}"
.//
.assign class_events = False
.assign eventStructName = "" 
.// Add a structure for the state machine events if a state machine exists
.select any o_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
.if (not_empty o_sm)
  .select many o_events related by o_sm->SM_EVT[R502]
  .if (not_empty o_events)
    .assign class_events = True
    .assign eventStructName = "${classIdentifier}_EVT" 
<DataType Name="${eventStructName}" Family="NoFamily" Class="User">
<Members>
    .assign eventMemberName = "${classIdentifier}_BM"
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
  .end if
.end if
.//
.// Create Class Data Type
.//
.select many o_attrs related by o_obj->O_ATTR[R102]
.if (not_empty o_attrs or class_events)
  .invoke r = createQualifiedName( o_obj )
  .assign qName = r.result + o_obj.Name
<DataType ${useTarget}Name="${classIdentifier}" Family="NoFamily" Class="User">
  .// Add Class Description
<Description>
<![CDATA[Qualified Name: ${qName}
${o_obj.Descrip}]]>
</Description>
  .// Add Members
<Members>
  .// Add in structure for class state machine events if it was created
  .if (class_events)
<Member Name="events" DataType="${eventStructName}" Dimension="0" Radix="NullType" Hidden="false" ExternalAccess="Read/Write"/>
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
        .assign bool_name = "${classIdentifier}_B1"
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
    .select one d_type related by o_attr->S_DT[R114]
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
    .elif (d_type.Name == "same_as<Base_Attribute>")
      .assign type_string = "DINT"
      .select many r_oirs related by o_attr->O_RATTR[R106]->O_REF[R108]->R_RGO[R111]->R_OIR[R203]
      .assign prefix = "p_"
      .for each r_oir in r_oirs
        .select any rel from instances of R_REL where (selected.Rel_ID == r_oir.Rel_ID)
        .assign suffix = "_${suffix}r${rel.Numb}"
      .end for
    .elif (d_type.Name == "boolean")
      .// Already handled previously
    .else
      .// Determine if it is an enumeration
      .select one s_edt related by d_type->S_EDT[R17]
      .if (not_empty s_edt)
        .assign type_string = "DINT"
        .assign prefix = "e_"
      .else
        .print "${d_type.Name}"
      .end if
    .end if
    .//
    .if (type_string != "")
      .if (o_attr.Descrip != "")
<Member Name="${prefix}$l_{o_attr.Name}${suffix}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write">
<Description>
<![CDATA[${o_attr.Descrip}]]>
</Description>
</Member>
      .else
<Member Name="${prefix}$l_{o_attr.Name}${suffix}" DataType="${type_string}" Dimension="0" Radix="${radix}" Hidden="false" ExternalAccess="Read/Write"/>
      .end if
    .end if
  .end for
</Members>
</DataType>
.end if
