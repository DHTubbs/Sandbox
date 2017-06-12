.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_Main.arc
.//
.// This file creates the code for the main task of the PLC program.  The
.// generated code checks for events and makes a call to the class state machine
.// whenever an event is present to be processed.  The output format is 
.// structured text that can be copied and pasted into a PLC program file.
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: MainMediumProgram.txt
.//============================================================================
.//
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
if (_lcl_intfc_program_control.b_first_scan_executed_task_2) then

	_lcl_intfc_program_control.b_disable_task_2 := b_TRUE;
	_lcl_intfc_program_control.b_initialized_task_2 := b_FALSE;
	_lcl_intfc_program_control.b_first_scan_executed_task_2 := b_FALSE;
end_if;

if (_lcl_intfc_program_control.b_disable_task_2 And
	(Not _lcl_intfc_program_control.b_initialized_task_2) And
	_lcl_intfc_program_control.b_initialized_task_3) then
	
	JSR(_0002_Initialization);
end_if;

if (_lcl_intfc_program_control.b_initialized_task_1 And
	_lcl_intfc_program_control.b_initialized_task_2 And
	_lcl_intfc_program_control.b_initialized_task_3) then
	
	_lcl_intfc_program_control.b_disable_task_2 := b_FALSE;
end_if;

if (_lcl_intfc_program_control.b_initialized_task_1 And
	_lcl_intfc_program_control.b_initialized_task_2 And
	_lcl_intfc_program_control.b_initialized_task_3) then
	
	(* Assigner state machines are processed first followed by all instance state machines.
	   Each assigner code module receives events and executes the state machine.  The
	   instance state machine code modules are split apart so all events for all state
	   machines are received prior to the execution of any state machine. *)


	(*** Assigner (class) State Machines ***)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .// Get the Model and Code Identifiers
  .invoke mi = grp_GetModelIdentifiers(o_obj)
  .invoke ci = grp_GetCodeIdentifiers(o_obj)
  .//
  .assign routineName = "_${ci.uniqueId}_asm$r{mi.objName}"
  .//
  .select any o_cls_sm related by o_obj->SM_ASM[R519]
  .if (not_empty o_cls_sm)

	(* ${routineName}
	   Qualified Name: '${mi.qName}' *)

    .assign eventList = "" 
    .select many o_events related by o_cls_sm->SM_SM[R517]->SM_EVT[R502]
    .if (not_empty o_events)
      .assign totalEvents = cardinality(o_events)
      .assign eventsProcessed = 1
      .assign eventPrefix = ""
      .assign eventSuffix = ""
      .assign eventCounter = 1
      .for each o_event in o_events
        .if (totalEvents > 7)
          .if (eventCounter == 1)
            .assign eventPrefix = "("
          .else
            .assign eventPrefix = " "
          .end if
          .if (eventCounter == 7)
            .assign eventSuffix = ")"
          .else
            .assign eventSuffix = ""
          .end if
          .if (eventsProcessed == totalEvents)
            .assign eventSuffix = ")"
          .end if
        .end if
        .//
        .if (eventList == "")
          .assign eventList = "${eventPrefix}${ci.gblAssignerEvents}.evt_lst.b_${o_event.Mning}"
        .else        
          .assign eventList = "${eventList} Or\n\t\t${eventPrefix}${ci.gblAssignerEvents}.evt_lst.b_${o_event.Mning}${eventSuffix}"
        .end if
        .//
        .assign eventCounter = eventCounter + 1
        .if (eventCounter > 7)
          .assign eventCounter = 1
        .end if
        .assign eventsProcessed = eventsProcessed + 1
      .end for
    .end if
	if (${eventList}) then

		(* Receive the events and execute the state machine. *)
		CPS(${ci.gblAssignerEvents}, ${ci.gblAssignerData}.events, 1);
		CPS(empty_event_struct, ${ci.gblAssignerEvents}.evt_lst, 1);
		JSR(${routineName});
	end_if;
	
  .end if
.end for

	(*** Instance State Machines ***)

	(*** Receive Events - Move event data from global mailboxes into local event structures. ***)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .//
  .select any sm_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]
  .select any sm_pevt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_PEVT[R525]
  .if ((not_empty sm_state) or (not_empty sm_pevt))
    .// Get the Model and Code Identifiers
    .invoke mi = grp_GetModelIdentifiers(o_obj)
    .invoke ci = grp_GetCodeIdentifiers(o_obj)
    .//
    .assign routineName = "_${ci.uniqueId}_sm$r{mi.objName}"
    .//
    .// Find the TE_CLASS for this object
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Get the class' identifying attribute name
    .assign classIdAttrName = "'Class does not have identifying attribute!'"
    .select any te_attr related by te_class->TE_ATTR[R2061] where (selected.GeneratedType == "Id")
    .if (not_empty te_attr)
      .assign classIdAttrName = te_attr.GeneratedName
    .end if
    .//
    .assign arraySuffix = ""
    .assign tabs = ""
    .if (te_class.MaxExtentSize > 0)
      .assign arraySuffix = "[inst]"
      .assign tabs = "${tabs}\t"
    .end if
    .// PLC Variable Storage
    .assign classDataStorage = "${ci.gblClassData}${arraySuffix}"
    .assign gblEventStruct = "${ci.gblClassEvents}${arraySuffix}"
    .//
    .// Output

	(* ${routineName} *)   
    .if (te_class.MaxExtentSize > 0)
      .assign upperArrayBound = "_CONSTANTS.OBJ_ARRAY_UPPER_BOUND.d_${te_class.GeneratedName}_${te_class.Key_Lett}"
	for inst := 0 to ${upperArrayBound} by 1 do
	.end if
${tabs}	if (${classDataStorage}.${classIdAttrName} <> -1) then
${tabs}		CPS(${gblEventStruct}, ${ci.gblClassData}.events, 1);
${tabs}	end_if;
    .if (te_class.MaxExtentSize > 0)
	end_for;
	.end if
  .end if
.end for


	(*** Receive Polymorphic Events ***)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .select many sm_nlevts related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526]
  .if (not_empty sm_nlevts)
    .// Get the Model and Code Identifiers
    .invoke mi = grp_GetModelIdentifiers(o_obj)
    .invoke ci = grp_GetCodeIdentifiers(o_obj)
    .//
    .// Find the TE_CLASS for this object
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Get the class' identifying attribute name
    .assign classIdAttrName = "'Class does not have identifying attribute!'"
    .select any te_attr related by te_class->TE_ATTR[R2061] where (selected.GeneratedType == "Id")
    .if (not_empty te_attr)
      .assign classIdAttrName = te_attr.GeneratedName
    .end if
    .// Create the list of events
    .assign eventList = ""
    .assign newline = ""
    .assign arraySuffix = ""
    .assign tabs = "\t\t"
    .if (te_class.MaxExtentSize > 0)
      .assign arraySuffix = "[inst]"
      .assign tabs = "${tabs}\t"
    .end if
    .for each sm_nlevt in sm_nlevts
      .// The local event
      .select one sm_evt related by sm_nlevt->SM_SEVT[R526]->SM_EVT[R525]
      .// The super type polymorphic event
      .select one super_sm_evt related by sm_nlevt->SM_PEVT[R527]->SM_EVT[R525]
      .select one super_o_obj related by super_sm_evt->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518]
      .invoke super_ci = grp_GetCodeIdentifiers(super_o_obj)
      .//
      .assign eventList = "${eventList}${newline}${tabs}${ci.gblClassData}${arraySuffix}.events.evt_lst.b_${sm_evt.Mning} := ${super_ci.gblClassEvents}${arraySuffix}.evt_lst.b_${super_sm_evt.Mning};"
      .assign newline = "\n"
      .// Copy event data for this event
      .select any sm_evtdi related by super_sm_evt->SM_EVTDI[R532]
      .if (not_empty sm_evtdi)
        .assign eventList = "${eventList}${newline}${tabs}${ci.gblClassData}${arraySuffix}.events.${sm_evt.Mning}_event_data := ${super_ci.gblClassEvents}${arraySuffix}.${super_sm_evt.Mning}_event_data;"
      .end if
    .end for
    .//
    .// Output

	(* $_{ci.classIdentifier} *)
    .if (te_class.MaxExtentSize > 0)
      .assign upperArrayBound = "_CONSTANTS.OBJ_ARRAY_UPPER_BOUND.d_${te_class.GeneratedName}_${te_class.Key_Lett}"
	for inst := 0 to ${upperArrayBound} by 1 do
		if (${ci.gblClassData}${arraySuffix}.${classIdAttrName} <> -1) then
${eventList}
		end_if;
	end_for;
    .else
	if (${ci.gblClassData}${arraySuffix}.${classIdAttrName} <> -1) then
${eventList}
	end_if;
	.end if
  .end if
.end for


	(*** Clear Event Mailboxes - Clear event data in global mailbox. ***)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .//
  .select any sm_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]
  .select any sm_pevt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_PEVT[R525]
  .if ((not_empty sm_state) or (not_empty sm_pevt))
    .// Get the Model and Code Identifiers
    .invoke mi = grp_GetModelIdentifiers(o_obj)
    .invoke ci = grp_GetCodeIdentifiers(o_obj)
    .//
    .assign routineName = "_${ci.uniqueId}_sm$r{mi.objName}"
    .//
    .// Find the TE_CLASS for this object
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Get the class' identifying attribute name
    .assign classIdAttrName = "'Class does not have identifying attribute!'"
    .select any te_attr related by te_class->TE_ATTR[R2061] where (selected.GeneratedType == "Id")
    .if (not_empty te_attr)
      .assign classIdAttrName = te_attr.GeneratedName
    .end if
    .//
    .assign arraySuffix = ""
    .assign tabs = ""
    .if (te_class.MaxExtentSize > 0)
      .assign arraySuffix = "[inst]"
      .assign tabs = "${tabs}\t"
    .end if
    .// PLC Variable Storage
    .assign classDataStorage = "${ci.gblClassData}${arraySuffix}"
    .assign gblEventStruct = "${ci.gblClassEvents}${arraySuffix}"
    .//
    .// Output

	(* ${routineName} *)   
    .if (te_class.MaxExtentSize > 0)
      .assign upperArrayBound = "_CONSTANTS.OBJ_ARRAY_UPPER_BOUND.d_${te_class.GeneratedName}_${te_class.Key_Lett}"
	for inst := 0 to ${upperArrayBound} by 1 do
	.end if
${tabs}	if (${classDataStorage}.${classIdAttrName} <> -1) then
${tabs}		CPS(empty_event_struct, ${gblEventStruct}.evt_lst, 1);
${tabs}	end_if;
    .if (te_class.MaxExtentSize > 0)
	end_for;
	.end if
  .end if
.end for


	(*** Execute State Machines ***)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .print "${o_obj.Name} : ${o_obj.Numb}"
  .//
  .select any sm_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]
  .select any sm_pevt related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_PEVT[R525]
  .if ((not_empty sm_state) or (not_empty sm_pevt))
    .// Get the Model and Code Identifiers
    .invoke mi = grp_GetModelIdentifiers(o_obj)
    .invoke ci = grp_GetCodeIdentifiers(o_obj)
    .//
    .assign routineName = "_${ci.uniqueId}_sm$r{mi.objName}"
    .//
    .// Find the TE_CLASS for this object
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .// Get the class' identifying attribute name
    .assign classIdAttrName = "'Class does not have identifying attribute!'"
    .select any te_attr related by te_class->TE_ATTR[R2061] where (selected.GeneratedType == "Id")
    .if (not_empty te_attr)
      .assign classIdAttrName = te_attr.GeneratedName
    .end if
    .//
    .assign arraySuffix = ""
    .assign tabs = ""
    .if (te_class.MaxExtentSize > 0)
      .assign arraySuffix = "[inst]"
      .assign tabs = "${tabs}\t"
    .end if
    .// PLC Variable Storage
    .assign classDataStorage = "${ci.gblClassData}${arraySuffix}"
    .assign gblEventStruct = "${ci.gblClassData}${arraySuffix}.events"
	.if (not_empty sm_state)

	(* ${routineName}
	   Qualified Name: '${mi.qName}' *)
	   
      .if (te_class.MaxExtentSize > 0)
        .assign upperArrayBound = "_CONSTANTS.OBJ_ARRAY_UPPER_BOUND.d_${te_class.GeneratedName}_${te_class.Key_Lett}"
	for inst := 0 to ${upperArrayBound} by 1 do
	  .end if
${tabs}	if (${classDataStorage}.${classIdAttrName} <> -1 Or 
${tabs}		${gblEventStruct}.evt_lst.b_creation_event) then 
${tabs}		(* Only execute instance state machine if instance exists or creation event will create it. *)

      .select many o_attrs related by o_obj->O_ATTR[R102]
      .for each o_attr in o_attrs
        .select one d_type related by o_attr->S_DT[R114]
        .if (d_type.Name == "inst_ref<Timer>")
          .// This is a kludge!  But it should work most of the time to determine if a class is using a timer.
${tabs}		if (${classDataStorage}.tmr_${o_attr.Name}.DN) then
${tabs}			${gblEventStruct}.evt_lst./* TODO: Set appropriate event from timer expiring */ := b_TRUE;
${tabs}			${classDataStorage}.tmr_${o_attr.Name}.TimerEnable := b_FALSE;
${tabs}		end_if;
	
	    .end if
      .end for
      .assign eventList = "" 
      .select many sm_sevts related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_EVT[R502]->SM_SEVT[R525]
      .if (not_empty sm_sevts)
        .assign totalEvents = cardinality(sm_sevts)
        .assign totalEvents = totalEvents + 1
        .print "Total events: ${totalEvents}"
        .if (totalEvents > 7)
          .assign eventList = "(${gblEventStruct}.evt_lst.b_creation_event"
        .else 
          .assign eventList = "${gblEventStruct}.evt_lst.b_creation_event" 
        .end if
        .assign eventsProcessed = 2
        .assign eventPrefix = ""
        .assign eventSuffix = ""
        .assign eventCounter = 2
        .for each sm_sevt in sm_sevts
          .if (totalEvents > 7)
            .if (eventCounter == 1)
              .assign eventPrefix = "("
            .else
              .assign eventPrefix = " "
            .end if
            .if (eventCounter == 7)
              .assign eventSuffix = ")"
            .else
              .assign eventSuffix = ""
            .end if
            .if (eventsProcessed == totalEvents)
              .assign eventSuffix = ")"
            .end if
          .end if
          .//
          .select one sm_evt related by sm_sevt->SM_EVT[R525]
          .assign eventList = "${eventList} Or\n\t\t\t${tabs}${eventPrefix}${gblEventStruct}.evt_lst.b_${sm_evt.Mning}${eventSuffix}"
          .//
          .assign eventCounter = eventCounter + 1
          .if (eventCounter > 7)
            .assign eventCounter = 1
          .end if
          .assign eventsProcessed = eventsProcessed + 1
        .end for
      .end if
${tabs}		if (${eventList}) then
	
      .if (te_class.MaxExtentSize > 0)
${tabs}			JSR(${routineName}, 1, inst);
      .else
${tabs}			JSR(${routineName});
      .end if
${tabs}		end_if;
${tabs}	end_if;
      .if (te_class.MaxExtentSize > 0)
	end_for;
	  .end if

	.end if
  .end if
.end for
end_if;
.//  
.emit to file "../../src/MainMediumProgram.txt"
.//  
