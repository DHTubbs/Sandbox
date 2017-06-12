.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_component.arc
.//
.// This file creates instance state machines for all objects in a component
.// that have an instance state machine in the model.  The output format is
.// structured text that can be copied and pasted into a PLC.
.//
.// Note: This is not the official method for creating files from a model, it
.//       is more of a quick hack.  However, it is suitable because the files
.//       generated are not formated for direct import into the PLC. 
.//============================================================================
.//
.include "../../ST_MC/PE_PE_utilities.arc"
.include "../../ST_MC/O_TPARM_utilities.arc"
.include "../../ST_MC/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.select any s_sys from instances of S_SYS
.print "System: ${s_sys.Name}"
.select many ep_pkgs related by s_sys->EP_PKG[R1405]
.for each ep_pkg in ep_pkgs
  .print "  Package: ${ep_pkg.Name}"
  .select many pe_pes related by ep_pkg->PE_PE[R8000]
  .for each pe_pe in pe_pes
    .select one c_c related by pe_pe->C_C[R8001]
    .if (not_empty c_c)
      .print "    Component: ${c_c.Name}"
    .else
      .select one cl_ic related by pe_pe->CL_IC[R8001]
      .if (not_empty cl_ic)
        .print "    Imported Component: ${cl_ic.Name}"
      .end if
    .end if
  .end for
.end for

.//
.select any comp from instances of C_C where (False)
.select many o_objs from instances of O_OBJ
.for each o_obj in o_objs
  .assign comp_name = ""
  .assign comp_num = -1
  .select any ep_pkg related by o_obj->PE_PE[R8001]->EP_PKG[R8000]
  .if (not_empty ep_pkg)
    .invoke r = C_C_getContainingComponent( ep_pkg )
    .assign comp = r.result
    .if (not_empty comp)
      .assign comp_name = comp.Name
      .invoke r = EP_PKG_getContainingPackage( comp )
      .assign comp_pkg = r.result
      .if (not_empty comp_pkg)
        .assign comp_num = comp_pkg.Num_Rng
      .end if
    .end if
  .end if
  .invoke r = formatIntegerIds(comp_num)
  .assign compNumStr = r.result
  .invoke r = formatIntegerIds(o_obj.Numb)
  .assign objNumStr = r.result
  .assign uniqueId = "${compNumStr}_${objNumStr}"
  .assign classIdentifier = "${o_obj.Name}_${uniqueId}"
  .assign selfIdentifier = "obj_$l_{classIdentifier}"
  .assign eventStruct = "${selfIdentifier}.events"
  .assign ismStruct = "${selfIdentifier}.ism"
  .print "${o_obj.Name} : ${o_obj.Numb}"
  .invoke r = createQualifiedName( o_obj )
  .assign qName = r.result + o_obj.Name
  .//
  .select any o_inst_sm related by o_obj->SM_ISM[R518]
  .if (not_empty o_inst_sm)
    .// Add the File Header
(* Model Identifiers
     Component (Number): ${comp_name} (${compNumStr})
         Class (Number): ${o_obj.Name} (${objNumStr})
         Qualified Name: ${qName}
   
Description: <Format Style="Block" Fill="Tab" Start="Cursor">${o_obj.Descrip}</Format>

*)

SBR( ${selfIdentifier} );

    .select many o_attrs related by o_obj->O_ATTR[R102]
    .for each o_attr in o_attrs
      .select one d_type related by o_attr->S_DT[R114]
      .if (d_type.Name == "inst_ref<Timer>")
TONR(${selfIdentifier}.tmr_disable);

	  .end if
    .end for
    .select one o_sm related by o_inst_sm->SM_SM[R517]
${ismStruct}.b_done := b_FALSE;

while (Not ${ismStruct}.b_done) do
	${ismStruct}.b_done := b_TRUE;
	case (${selfIdentifier}.d_current_state) of
	0:  (* Uninstantiated Instance *)
	
		(* Exit Conditions *)
		if (${eventStruct}.b_creation_event) then
			(* Consume the Event *)
			${eventStruct}.b_creation_event := b_FALSE;

			${selfIdentifier}.d_current_state := 1;
			${ismStruct}.b_txn := b_TRUE;
			${ismStruct}.b_done := b_FALSE;
		end_if;

    .select many o_states related by o_sm->SM_STATE[R501]
    .if (not_empty o_states)
      .for each o_state in o_states
	${o_state.Numb}:  (* State: '${o_state.Name}' *)
		(* Entry Action *)
		if (${ismStruct}.b_txn) then
			${ismStruct}.b_txn := b_FALSE
			
	    .select any o_action related by o_state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514]
	    .if (not_empty o_action)
			(*  Action:
				
				<Format Style="Block" Fill="Tab" Start="Cursor">${o_action.Action_Semantics}</Format>
			*)

			(* TODO: Implement state action code here *)
			
	    .end if
		end_if;
		
		(* Exit Conditions *)
		.select many o_new_state_transitions related by o_state->SM_SEME[R503]->SM_NSTXN[R504]
		.assign conditional_txt = "if"
		.for each o_new_state_transition in o_new_state_transitions
		  .select one o_event related by o_new_state_transition->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		  .select one o_dst_state related by o_new_state_transition->SM_TXN[R507]->SM_STATE[R506]
		  .select any transition_action related by o_new_state_transition->SM_TXN[R507]->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514]
		${conditional_txt} (${eventStruct}.b_${o_event.Mning}) then
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
			${eventStruct}.b_${o_event.Mning} := b_FALSE;

			${selfIdentifier}.d_current_state := ${o_dst_state.Numb};
			${ismStruct}.b_txn := b_TRUE;
			${ismStruct}.b_done := b_FALSE;
			
		  .assign conditional_txt = "elsif"
		.end for		  
		.select many cant_happen_events related by o_state->SM_SEME[R503]->SM_CH[R504]
		.for each cant_happen_event in cant_happen_events
		  .select one o_event related by cant_happen_event->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525]
		${conditional_txt} (${eventStruct}.b_${o_event.Mning}) then
			(* Can't Happen - The model indicates this event cannot occur in this state.
			
			   Description: <Format Style="Block" Fill="Tab" Start="Cursor">${cant_happen_event.Descrip}</Format>
			*)
			
			(* TODO: Add a diagnostic here. *)
			
		  .assign conditional_txt = "elsif"
		.end for
		.if (conditional_txt != "if")
		end_if;
		.end if

      .end for
	else (* Invalid State - End of 'case' *)
		(* The state machine was directed to an invalid state.  Either a programming
		   error was made or a hardware failure has occurred in the PLC. *)
		
		(* TODO: Add a Diagnostic here. *)
		
		${selfIdentifier}.d_current_state := 0;
		${ismStruct}.b_txn := b_FALSE;
		${ismStruct}.b_done := b_FALSE;
    .end if
	end_case;
end_while;
    .//  
    .emit to file "../../src/_${uniqueId}_sm$r{o_obj.Name}.txt"
    .//  
  .end if
  .//
  .//
  .// Add any operations to the file
  .//
  .select many o_tfrs related by o_obj->O_TFR[R115]
  .if (not_empty o_tfrs)
    .for each o_tfr in o_tfrs
      .assign functName = "_${uniqueId}_op${o_tfr.Name}"
      .assign functSig = functName
      .assign paramList = ""
      .select any o_tparm related by o_tfr->O_TPARM[R117]
      .if (not_empty o_tparm)
        .invoke r = O_TPARMfindFirstParameter( o_tparm )
        .assign headPtr = r.result
        .assign paramCount = 1
        .select one next_o_tparm related by headPtr->O_TPARM[R124.'succeeds']
        .while (not_empty next_o_tparm)
          .assign paramCount = paramCount + 1
          .select one next_o_tparm related by next_o_tparm->O_TPARM[R124.'succeeds']
        .end while
        .invoke r = O_TPARMcreateParameterList( headPtr )
        .assign paramList = r.result
        .assign functSig = "${functSig}, ${paramCount}, ${paramList}"
      .end if
      .// Check for a returned value
      .select one s_dt related by o_tfr->S_DT[R116]
      .assign returnStr = ""
      .if (s_dt.Name != "void")
        .assign returnStr = "(* TODO: Return Type: ${s_dt.Name} *)"
        .assign functSig = "${functSig}, ${returnStr}"
      .end if
(* Model Identifiers
     Component (Number): ${comp_name} (${compNumStr})
         Class (Number): ${o_obj.Name} (${objNumStr})
              Operation: ${o_tfr.Name}
         Qualified Name: ${qName}::${o_tfr.Name}
   
Description: <Format Style="Block" Fill="Tab" Start="Cursor">${o_tfr.Descrip}</Format>

Signature: JSR( ${functSig} );
*)

SBR( ${paramList} );

(*	Action:

	<Format Style="Block" Fill="Tab" Start="Cursor">${o_tfr.Action_Semantics}</Format>
*)

(* TODO: Implement operation action code here *)

      .if (returnStr != "")
RET( ${returnStr} );
      .end if
      .//  
      .emit to file "../../src/${functName}.txt"
      .//  
    .end for
  .end if
.end for


