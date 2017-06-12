.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_StateMachine.arc
.//
.// This file creates instance and assigner state machines for all objects in a
.// component that have an instance or assigner state machine in the model.  The
.// output format is structured text that can be copied and pasted into a PLC
.// program file.
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: _<component number>_<class number>_sm<class name>.txt
.//         _<component number>_<class number>_asm<class name>.txt
.//============================================================================
.//
.include "../../st_mc_helper/O_TPARM_utilities.arc"
.include "../../st_mc_helper/MWU_utilities.arc"
.include "../../st_mc_helper/Translation_Util.arc"
.//
.//
.//
.// Start of Translation Code
.//
.//
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .print "${o_obj.Name} : ${o_obj.Numb}"
  .//
  .// Get the Model and Code Identifiers
  .invoke mi = grp_GetModelIdentifiers(o_obj)
  .invoke ci = grp_GetCodeIdentifiers(o_obj)
  .//
  .select any sm_state related by o_obj->SM_ISM[R518]->SM_SM[R517]->SM_STATE[R501]
  .if (not_empty sm_state)
    .select one te_class related by o_obj->TE_CLASS[R2019]
    .assign selfIdentifier = "${ci.gblClassData}"
    .assign functName = "_${ci.uniqueId}_sm$r{mi.objName}"
    .assign paramList = ""
    .assign functSig = "${functName}"
    .if (te_class.MaxExtentSize > 0)
      .assign selfIdentifier = "${selfIdentifier}[d_index_${ci.uniqueId}]"
      .assign paramList = "${paramList}d_index_${ci.uniqueId}"
      .assign functSig = "${functSig}, 1, INTEGER"
    .end if
    .//
    .assign eventList = "${selfIdentifier}.events.evt_lst"
    .assign ismFlags = "${selfIdentifier}.ism"
    .// Add the File Header
(* Model Identifiers
     Component (Number): '${mi.compName}' (${mi.compNumb})
         Class (Number): '${mi.objName}' (${mi.objNumb})
         Qualified Name: '${mi.qName}'
   
Description: <Format Style="Block" Fill="Tab" Start="Cursor">${o_obj.Descrip}</Format>

Signature: JSR( ${functSig} );
*)

SBR( ${paramList} );

    .select many o_attrs related by o_obj->O_ATTR[R102]
    .for each o_attr in o_attrs
      .select one d_type related by o_attr->S_DT[R114]
      .if (d_type.Name == "inst_ref<Timer>")
TONR(${selfIdentifier}.tmr_${o_attr.Name});

	  .end if
    .end for
    .select one sm_sm related by o_obj->SM_ISM[R518]->SM_SM[R517]
${ismFlags}.b_done := b_FALSE;

while (Not ${ismFlags}.b_done) do
	${ismFlags}.b_done := b_TRUE;
	case (${selfIdentifier}.d_current_state) of
	0:  (* Uninstantiated Instance *)
	
		(* Exit Conditions *)
		if (${eventList}.b_creation_event) then
			(* Consume the Event *)
			${eventList}.b_creation_event := b_FALSE;

			${selfIdentifier}.d_current_state := 1;
			${ismFlags}.b_txn := b_FALSE;
			${ismFlags}.b_done := b_FALSE;
		end_if;

    .select many te_states related by sm_sm->SM_STATE[R501]->TE_STATE[R2037]
    .if (not_empty te_states)
      .// Put all of the states in numerical order to simplify lookup
      .invoke SortAscendingByNumbAttr(te_states)
      .assign item_count = cardinality te_states
      .assign item_number = 0
      .//
      .while ( item_number < item_count )
        .for each te_state in te_states
          .if ( te_state.Order == item_number )
            .select one sm_state related by te_state->SM_STATE[R2037]
	${sm_state.Numb}:  (* State: '${sm_state.Name}' *)
		(* Entry Action *)
		if (${ismFlags}.b_txn) then
			${ismFlags}.b_txn := b_FALSE;
			
            .select any sm_act related by sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
	        .if (not_empty sm_act)
			(*  Action:
				
				<Format Style="Block" Fill="Tab" Start="Cursor">${sm_act.Action_Semantics}</Format>
			*)

			(* TODO: Implement state action code here *)
			
	        .end if
		end_if;
		
		(* Exit Conditions *)
		    .select many o_new_state_transitions related by sm_state->SM_SEME[R503]->SM_NSTXN[R504]
		    .assign conditional_txt = "if"
		    .for each o_new_state_transition in o_new_state_transitions
		      .select one sm_evt related by o_new_state_transition->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		      .select one o_dst_state related by o_new_state_transition->SM_TXN[R507]->SM_STATE[R506]
		      .select any transition_action related by o_new_state_transition->SM_TXN[R507]->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]
		${conditional_txt} (${eventList}.b_${sm_evt.Mning}) then
			(* Exit Action *)
		      .if (not_empty transition_action)
			    .if ("" != transition_action.Action_Semantics)
			(*  Action:
				
				<Format Style="Block" Fill="Tab" Start="Cursor">${transition_action.Action_Semantics}</Format>
			*)

			(* TODO: Implement event action code here *)
			
			    .end if
		      .end if

			(* Consume the Event *)
			${eventList}.b_${sm_evt.Mning} := b_FALSE;

			${selfIdentifier}.d_current_state := ${o_dst_state.Numb};
			${ismFlags}.b_txn := b_TRUE;
			${ismFlags}.b_done := b_FALSE;
			
		      .assign conditional_txt = "elsif"
		    .end for
		    .//
		    .select many cant_happen_events related by sm_state->SM_SEME[R503]->SM_CH[R504]
            .for each cant_happen_event in cant_happen_events
              .select one sm_evt related by cant_happen_event->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		${conditional_txt} (${eventList}.b_${sm_evt.Mning}) then
			(* Can't Happen - The model indicates this event cannot occur in this state.
			
			   Description: <Format Style="Block" Fill="Tab" Start="Cursor">${cant_happen_event.Descrip}</Format>
			*)
			
			(* TODO: Add a diagnostic here. *)
			
		      .assign conditional_txt = "elsif"
		    .end for
		    .if (conditional_txt != "if")
		end_if;
		    .end if

            .break for
          .end if
        .end for
        .assign item_number = item_number + 1
      .end while
	else (* Invalid State - End of 'case' *)
		(* The state machine was directed to an invalid state.  Either a programming
		   error was made or a hardware failure has occurred in the PLC. *)
		
		(* TODO: Add a Diagnostic here. *)
		
		${selfIdentifier}.d_current_state := 0;
		${ismFlags}.b_txn := b_FALSE;
		${ismFlags}.b_done := b_FALSE;
    .end if
	end_case;
end_while;
    .//  
    .emit to file "../../src/${functName}.txt"
    .//  
  .end if
  .//
  .//
  .// Add a class (assigner) state machine if one exists.
  .//
  .//
  .select any sm_asm related by o_obj->SM_ASM[R519]
  .if (not_empty sm_asm)
    .assign selfIdentifier = "${ci.gblAssignerData}"
    .assign eventStruct = "${selfIdentifier}.events.evt_lst"
    .assign asmStruct = "${selfIdentifier}.asm"
    .assign functName = "_${ci.uniqueId}_asm$r{mi.objName}"
    .//assign paramList = "${selfIdentifier}"
    .assign functSig = "${functName}"
    .// Add the File Header
(* Model Identifiers
     Component (Number): '${mi.compName}' (${mi.compNumb})
         Class (Number): '${mi.objName}' (${mi.objNumb})
         Qualified Name: '${mi.qName}'
   
Description: Assigner (class) state machine for class ${ci.classIdentifier}

Signature: JSR( ${functSig} );
*)

SBR(  );

    .select one sm_sm related by sm_asm->SM_SM[R517]
${asmStruct}.b_done := b_FALSE;

while (Not ${asmStruct}.b_done) do
	${asmStruct}.b_done := b_TRUE;
	case (${selfIdentifier}.d_current_state) of
	0:  (* Not Created *)
	
		(* Exit Conditions *)
		if (${eventStruct}.b_creation_event) then
			(* Consume the Event *)
			${eventStruct}.b_creation_event := b_FALSE;

			${selfIdentifier}.d_current_state := 1;
			${asmStruct}.b_txn := b_FALSE;  (* Technically not a state change.  No entry action. *)
			${asmStruct}.b_done := b_FALSE;
		end_if;

    .select many te_states related by sm_sm->SM_STATE[R501]->TE_STATE[R2037]
    .if (not_empty te_states)
      .// Put all of the states in numerical order to simplify lookup
      .invoke SortAscendingByNumbAttr(te_states)
      .assign item_count = cardinality te_states
      .assign item_number = 0
      .//
      .while ( item_number < item_count )
        .for each te_state in te_states
          .if ( te_state.Order == item_number )
            .select one sm_state related by te_state->SM_STATE[R2037]
	${sm_state.Numb}:  (* State: '${sm_state.Name}' *)
		(* Entry Action *)
		if (${asmStruct}.b_txn) then
			${asmStruct}.b_txn := b_FALSE;
			
	        .select any sm_act related by sm_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
	        .if (not_empty sm_act)
			(*  Action:
				
				<Format Style="Block" Fill="Tab" Start="Cursor">${sm_act.Action_Semantics}</Format>
			*)

			(* TODO: Implement state action code here *)
			
	        .end if
		end_if;
		
		(* Exit Conditions *)
		    .select many o_new_state_transitions related by sm_state->SM_SEME[R503]->SM_NSTXN[R504]
		    .assign conditional_txt = "if"
		    .for each o_new_state_transition in o_new_state_transitions
		      .select one sm_evt related by o_new_state_transition->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		      .select one o_dst_state related by o_new_state_transition->SM_TXN[R507]->SM_STATE[R506]
		      .select any transition_action related by o_new_state_transition->SM_TXN[R507]->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]
		${conditional_txt} (${eventStruct}.b_${sm_evt.Mning}) then
			(* Exit Action *)
		      .if (not_empty transition_action)
			    .if ("" != transition_action.Action_Semantics)
			(*  Action:
				
				<Format Style="Block" Fill="Tab" Start="Cursor">${transition_action.Action_Semantics}</Format>
			*)

			(* TODO: Implement event action code here *)
			
			    .end if
		      .end if

			(* Consume the Event *)
			${eventStruct}.b_${sm_evt.Mning} := b_FALSE;

			${selfIdentifier}.d_current_state := ${o_dst_state.Numb};
			${asmStruct}.b_txn := b_TRUE;
			${asmStruct}.b_done := b_FALSE;
			
		      .assign conditional_txt = "elsif"
		    .end for		  
		    .select many cant_happen_events related by sm_state->SM_SEME[R503]->SM_CH[R504]
		    .for each cant_happen_event in cant_happen_events
		      .select one sm_evt related by cant_happen_event->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		${conditional_txt} (${eventStruct}.b_${sm_evt.Mning}) then
			(* Can't Happen - The model indicates this event cannot occur in this state.
			
			   Description: <Format Style="Block" Fill="Tab" Start="Cursor">${cant_happen_event.Descrip}</Format>
			*)
			
			(* TODO: Add a diagnostic here. *)
			
		      .assign conditional_txt = "elsif"
		    .end for
		    .if (conditional_txt != "if")
		end_if;
		    .end if

            .break for
          .end if
        .end for
        .assign item_number = item_number + 1
      .end while
	else (* Invalid State - End of 'case' *)
		(* The state machine was directed to an invalid state.  Either a programming
		   error was made or a hardware failure has occurred in the PLC. *)
		
		(* TODO: Add a Diagnostic here. *)
		
		${selfIdentifier}.d_current_state := 1;
		${asmStruct}.b_txn := b_FALSE;
		${asmStruct}.b_done := b_FALSE;
    .end if
	end_case;
end_while;
    .//  
    .emit to file "../../src/${functName}.txt"
    .//  
  .end if
.end for


