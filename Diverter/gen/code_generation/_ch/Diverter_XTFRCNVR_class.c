/*----------------------------------------------------------------------------
 * File:  Diverter_XTFRCNVR_class.c
 *
 * Class:       Cross Transfer Conveyor  (XTFRCNVR)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"

/*
 * instance operation:  GetMotorDirection
 */
Diverter_Motor_Direction_t
Diverter_XTFRCNVR_op_GetMotorDirection( Diverter_XTFRCNVR * self, const Diverter_Machine_Side_t p_machine_side )
{
  Diverter_Motor_Direction_t motor_dir;
  /* ASSIGN motor_dir = self.drive_side */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motor_dir = self.drive_side" );
  motor_dir = self->drive_side;
  /* IF ( ( PARAM.machine_side == Operator ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.machine_side == Operator ) )" );
  if ( ( p_machine_side == Diverter_Machine_Side_Operator_e ) ) {
    /* ASSIGN motor_dir = Forward */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN motor_dir = Forward" );
    motor_dir = Diverter_Motor_Direction_Forward_e;
    /* IF ( ( self.drive_side == Forward ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( self.drive_side == Forward ) )" );
    if ( ( self->drive_side == Diverter_Motor_Direction_Forward_e ) ) {
      /* ASSIGN motor_dir = Reverse */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN motor_dir = Reverse" );
      motor_dir = Diverter_Motor_Direction_Reverse_e;
    }
  }
  /* RETURN motor_dir */
  XTUML_OAL_STMT_TRACE( 1, "RETURN motor_dir" );
  {Diverter_Motor_Direction_t xtumlOALrv = motor_dir;
  return xtumlOALrv;}

}


/*
 * RELATE ACTR TO XTFRCNVR ACROSS R5
 */
void
Diverter_XTFRCNVR_R5_Link( Diverter_ACTR * supertype, Diverter_XTFRCNVR * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "XTFRCNVR", "Diverter_XTFRCNVR_R5_Link" );
    return;
  }
  /* Optimized linkage for XTFRCNVR->ACTR[R5] */
  subtype->ACTR_R5 = supertype;
  /* Optimized linkage for ACTR->XTFRCNVR[R5] */
  supertype->R5_subtype = subtype;
  supertype->R5_object_id = Diverter_XTFRCNVR_CLASS_NUMBER;
}


/*
 * RELATE DVRTBAY TO XTFRCNVR ACROSS R7
 */
void
Diverter_XTFRCNVR_R7_Link( Diverter_DVRTBAY * part, Diverter_XTFRCNVR * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "XTFRCNVR", "Diverter_XTFRCNVR_R7_Link" );
    return;
  }
  /* Note:  XTFRCNVR->DVRTBAY[R7] not navigated */
  part->XTFRCNVR_R7 = form;
}

/* Accessors to XTFRCNVR[R8] subtypes */



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Cross Transfer Conveyor  (XTFRCNVR)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_XTFRCNVR_container[ Diverter_XTFRCNVR_MAX_EXTENT_SIZE ];
static Diverter_XTFRCNVR Diverter_XTFRCNVR_instances[ Diverter_XTFRCNVR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_XTFRCNVR_extent = {
  {0}, {0}, &Diverter_XTFRCNVR_container[ 0 ],
  (Escher_iHandle_t) &Diverter_XTFRCNVR_instances,
  sizeof( Diverter_XTFRCNVR ), Diverter_XTFRCNVR_STATE_1, Diverter_XTFRCNVR_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Cross Transfer Conveyor  (XTFRCNVR)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [ManualControl]
 */
static void Diverter_XTFRCNVR_act1( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_act1( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_MANSEQ * man_seq;
  /* CREATE OBJECT INSTANCE man_seq OF MANSEQ */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE man_seq OF MANSEQ" );
  man_seq = (Diverter_MANSEQ *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER );
  /* RELATE man_seq TO self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE man_seq TO self ACROSS R8" );
  Diverter_MANSEQ_R8_Link( self, man_seq );
  /* GENERATE XTFRCNVR10:enable_control() TO man_seq */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE XTFRCNVR10:enable_control() TO man_seq" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( man_seq, &Diverter_XTFRCNVRevent10c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [MotionInhibited]
 */
static void Diverter_XTFRCNVR_act2( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_act2( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_MOTINH * motion_inh;
  /* CREATE OBJECT INSTANCE motion_inh OF MOTINH */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE motion_inh OF MOTINH" );
  motion_inh = (Diverter_MOTINH *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_MOTINH_CLASS_NUMBER );
  /* RELATE motion_inh TO self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE motion_inh TO self ACROSS R8" );
  Diverter_MOTINH_R8_Link( self, motion_inh );
  /* SEND xtfrcnvr::stop() */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::stop()" );
  Diverter_xtfrcnvr_stop();
}

/*
 * State 3:  [AutomaticControl]
 */
static void Diverter_XTFRCNVR_act3( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_act3( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_XTFRCNVRevent6 * rcvd_evt = (Diverter_XTFRCNVRevent6 *) event;
  Diverter_AUTOSEQ * auto_seq;Diverter_XTFRCNVR * xtfr_cnvr=0;
  /* CREATE OBJECT INSTANCE auto_seq OF AUTOSEQ */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE auto_seq OF AUTOSEQ" );
  auto_seq = (Diverter_AUTOSEQ *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_AUTOSEQ_CLASS_NUMBER );
  /* RELATE auto_seq TO self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE auto_seq TO self ACROSS R8" );
  Diverter_AUTOSEQ_R8_Link( self, auto_seq );
  /* SELECT one xtfr_cnvr RELATED BY auto_seq->XTFRCNVR[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one xtfr_cnvr RELATED BY auto_seq->XTFRCNVR[R8]" );
  xtfr_cnvr = ( 0 != auto_seq ) ? auto_seq->XTFRCNVR_R8 : 0;
  /* ASSIGN auto_seq.motor_direction = xtfr_cnvr.GetMotorDirection(machine_side:PARAM.direction) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN auto_seq.motor_direction = xtfr_cnvr.GetMotorDirection(machine_side:PARAM.direction)" );
  auto_seq->motor_direction = Diverter_XTFRCNVR_op_GetMotorDirection(xtfr_cnvr, rcvd_evt->p_direction);
  /* IF ( ( PARAM.control_alg == Dist_x1_Rollout ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.control_alg == Dist_x1_Rollout ) )" );
  if ( ( rcvd_evt->p_control_alg == Diverter_Divert_Conv_Discharge_Alg_Dist_x1_Rollout_e ) ) {
    Diverter_CLX1DCGSEQ * conv_len_rollout;
    /* CREATE OBJECT INSTANCE conv_len_rollout OF CLX1DCGSEQ */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE conv_len_rollout OF CLX1DCGSEQ" );
    conv_len_rollout = (Diverter_CLX1DCGSEQ *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_CLX1DCGSEQ_CLASS_NUMBER );
    /* RELATE conv_len_rollout TO auto_seq ACROSS R9 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE conv_len_rollout TO auto_seq ACROSS R9" );
    Diverter_CLX1DCGSEQ_R9_Link( auto_seq, conv_len_rollout );
    /* ASSIGN auto_seq.time_to_run = 90 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN auto_seq.time_to_run = 90" );
    auto_seq->time_to_run = 90;
  }
  else if ( ( rcvd_evt->p_control_alg == Diverter_Divert_Conv_Discharge_Alg_Dist_x2_Hesitating_Rollout_e ) ) {
    Diverter_CLX2HRDCGSEQ * hesitate_rollout;
    /* CREATE OBJECT INSTANCE hesitate_rollout OF CLX2HRDCGSEQ */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE hesitate_rollout OF CLX2HRDCGSEQ" );
    hesitate_rollout = (Diverter_CLX2HRDCGSEQ *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER );
    /* RELATE hesitate_rollout TO auto_seq ACROSS R9 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE hesitate_rollout TO auto_seq ACROSS R9" );
    Diverter_CLX2HRDCGSEQ_R9_Link( auto_seq, hesitate_rollout );
    /* ASSIGN auto_seq.time_to_run = 180 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN auto_seq.time_to_run = 180" );
    auto_seq->time_to_run = 180;
  }
  /* GENERATE AUTOSEQ11:initiate_auto_seq() TO auto_seq */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE AUTOSEQ11:initiate_auto_seq() TO auto_seq" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( auto_seq, &Diverter_AUTOSEQevent11c );
    Escher_SendEvent( e );
  }
}

/*
 */
static void Diverter_XTFRCNVR_xact1( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_xact1( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_MANSEQ * manual_seq=0;
  /* SELECT one manual_seq RELATED BY self->MANSEQ[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one manual_seq RELATED BY self->MANSEQ[R8]" );
  manual_seq = 0;
  if ( ( 0 != self ) && ( Diverter_MANSEQ_CLASS_NUMBER == self->R8_object_id ) )  manual_seq = ( 0 != self ) ? (Diverter_MANSEQ *) self->R8_subtype : 0;
  /* UNRELATE manual_seq FROM self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE manual_seq FROM self ACROSS R8" );
  Diverter_MANSEQ_R8_Unlink( self, manual_seq );
  /* DELETE OBJECT INSTANCE manual_seq */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE manual_seq" );
  if ( 0 == manual_seq ) {
    XTUML_EMPTY_HANDLE_TRACE( "MANSEQ", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) manual_seq, Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER );
}

/*
 */
static void Diverter_XTFRCNVR_xact2( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_xact2( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_MOTINH * motion_inh=0;
  /* SELECT one motion_inh RELATED BY self->MOTINH[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one motion_inh RELATED BY self->MOTINH[R8]" );
  motion_inh = 0;
  if ( ( 0 != self ) && ( Diverter_MOTINH_CLASS_NUMBER == self->R8_object_id ) )  motion_inh = ( 0 != self ) ? (Diverter_MOTINH *) self->R8_subtype : 0;
  /* UNRELATE motion_inh FROM self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE motion_inh FROM self ACROSS R8" );
  Diverter_MOTINH_R8_Unlink( self, motion_inh );
  /* DELETE OBJECT INSTANCE motion_inh */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE motion_inh" );
  if ( 0 == motion_inh ) {
    XTUML_EMPTY_HANDLE_TRACE( "MOTINH", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) motion_inh, Diverter_DOMAIN_ID, Diverter_MOTINH_CLASS_NUMBER );
}

/*
 */
static void Diverter_XTFRCNVR_xact3( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_xact3( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_AUTOSEQ * auto_seq=0;
  /* SELECT one auto_seq RELATED BY self->AUTOSEQ[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one auto_seq RELATED BY self->AUTOSEQ[R8]" );
  auto_seq = 0;
  if ( ( 0 != self ) && ( Diverter_AUTOSEQ_CLASS_NUMBER == self->R8_object_id ) )  auto_seq = ( 0 != self ) ? (Diverter_AUTOSEQ *) self->R8_subtype : 0;
  /* UNRELATE auto_seq FROM self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE auto_seq FROM self ACROSS R8" );
  Diverter_AUTOSEQ_R8_Unlink( self, auto_seq );
  /* DELETE OBJECT INSTANCE auto_seq */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE auto_seq" );
  if ( 0 == auto_seq ) {
    XTUML_EMPTY_HANDLE_TRACE( "AUTOSEQ", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) auto_seq, Diverter_DOMAIN_ID, Diverter_AUTOSEQ_CLASS_NUMBER );
}

/*
 */
static void Diverter_XTFRCNVR_xact4( Diverter_XTFRCNVR *, const Escher_xtUMLEvent_t * const );
static void
Diverter_XTFRCNVR_xact4( Diverter_XTFRCNVR * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_XTFRCNVRevent6 * rcvd_evt = (Diverter_XTFRCNVRevent6 *) event;
  Diverter_MOTINH * motion_inh=0;
  /* SELECT one motion_inh RELATED BY self->MOTINH[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one motion_inh RELATED BY self->MOTINH[R8]" );
  motion_inh = 0;
  if ( ( 0 != self ) && ( Diverter_MOTINH_CLASS_NUMBER == self->R8_object_id ) )  motion_inh = ( 0 != self ) ? (Diverter_MOTINH *) self->R8_subtype : 0;
  /* UNRELATE motion_inh FROM self ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE motion_inh FROM self ACROSS R8" );
  Diverter_MOTINH_R8_Unlink( self, motion_inh );
  /* DELETE OBJECT INSTANCE motion_inh */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE motion_inh" );
  if ( 0 == motion_inh ) {
    XTUML_EMPTY_HANDLE_TRACE( "MOTINH", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) motion_inh, Diverter_DOMAIN_ID, Diverter_MOTINH_CLASS_NUMBER );
}

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent3c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent4c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent7c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT7NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent6c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT6NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent_ACTR_PE1c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT_ACTR_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent5c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT5NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };


const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent9c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT9NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent10c = {
  Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER, DIVERTER_XTFRCNVREVENT10NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_XTFRCNVR_StateEventMatrix[ 3 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_XTFRCNVR_STATE_1 (ManualControl) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, (1<<8) + Diverter_XTFRCNVR_STATE_2 },
  /* row 2:  Diverter_XTFRCNVR_STATE_2 (MotionInhibited) */
  { (4<<8) + Diverter_XTFRCNVR_STATE_3, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  Diverter_XTFRCNVR_STATE_3 (AutomaticControl) */
  { EVENT_CANT_HAPPEN, (3<<8) + Diverter_XTFRCNVR_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_XTFRCNVR_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_XTFRCNVR_act1,  /* ManualControl */
    (StateAction_t) Diverter_XTFRCNVR_act2,  /* MotionInhibited */
    (StateAction_t) Diverter_XTFRCNVR_act3  /* AutomaticControl */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "ManualControl",
    "MotionInhibited",
    "AutomaticControl"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t Diverter_XTFRCNVR_xacts[ 4 ] = {
    (StateAction_t) Diverter_XTFRCNVR_xact1,
    (StateAction_t) Diverter_XTFRCNVR_xact2,
    (StateAction_t) Diverter_XTFRCNVR_xact3,
    (StateAction_t) Diverter_XTFRCNVR_xact4
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_XTFRCNVR_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  /* If event is polymorphic, forward to the dispatcher in the responding
     subtype below us in the generalization hierarchy.  */
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    Diverter_XTFRCNVR_R8PolymorphicEvent( (Diverter_XTFRCNVR *) instance, event );
  } else  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 3 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Diverter_XTFRCNVR_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "XTFRCNVR", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_XTFRCNVR_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "XTFRCNVR", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "XTFRCNVR", current_state );
      } else {
        STATE_TXN_START_TRACE( "XTFRCNVR", current_state, state_name_strings[ current_state ] );
        ( *Diverter_XTFRCNVR_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *Diverter_XTFRCNVR_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "XTFRCNVR", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}
/*
 * Transfer a polymorphic event down the R8 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
Diverter_XTFRCNVR_R8PolymorphicEvent( const Diverter_XTFRCNVR * const p_xtfrcnvr, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_xtfrcnvr->R8_subtype )
  switch ( p_xtfrcnvr->R8_object_id ) {
    case Diverter_MANSEQ_CLASS_NUMBER:  /* Manual Sequence (MANSEQ) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_XTFRCNVREVENT3NUM:  /* XTFRCNVR3*'jog' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_MANSEQevent_XTFRCNVR_PE3c );
          SetEventTargetInstance( event, p_xtfrcnvr->R8_subtype );
          Diverter_MANSEQ_Dispatch( event );
          break; /* after transition */
        case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_MANSEQevent_XTFRCNVR_PE4c );
          SetEventTargetInstance( event, p_xtfrcnvr->R8_subtype );
          Diverter_MANSEQ_Dispatch( event );
          break; /* after transition */
        case DIVERTER_XTFRCNVREVENT5NUM:  /* XTFRCNVR5*'drive_rdy_for_inst' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_MANSEQevent_XTFRCNVR_PE5c );
          SetEventTargetInstance( event, p_xtfrcnvr->R8_subtype );
          Diverter_MANSEQ_Dispatch( event );
          break; /* after transition */
        case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_MANSEQevent_XTFRCNVR_PE9c );
          SetEventTargetInstance( event, p_xtfrcnvr->R8_subtype );
          Diverter_MANSEQ_Dispatch( event );
          break; /* after transition */
        case DIVERTER_XTFRCNVREVENT10NUM:  /* XTFRCNVR10*'enable_control' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_MANSEQevent_XTFRCNVR_PE10c );
          SetEventTargetInstance( event, p_xtfrcnvr->R8_subtype );
          Diverter_MANSEQ_Dispatch( event );
          break; /* after transition */
      }
      break;
    case Diverter_AUTOSEQ_CLASS_NUMBER:  /* Automatic Sequence (AUTOSEQ) */
      switch ( event_number ) {
        case DIVERTER_XTFRCNVREVENT3NUM:  /* XTFRCNVR3*'jog' */
          if ( 0 != ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype )
          switch ( ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_object_id ) {
            case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE4c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
            case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
          }
        case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
          if ( 0 != ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype )
          switch ( ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_object_id ) {
            case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE4c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
            case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT4NUM:  /* XTFRCNVR4*'jog_complete' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
          }
        case DIVERTER_XTFRCNVREVENT5NUM:  /* XTFRCNVR5*'drive_rdy_for_inst' */
          if ( 0 != ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype )
          switch ( ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_object_id ) {
            case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
            case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
          }
        case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
          if ( 0 != ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype )
          switch ( ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_object_id ) {
            case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX1DCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
            case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
              switch ( event_number ) {
                /* transition (or cant happen) events in subtype */
                case DIVERTER_XTFRCNVREVENT9NUM:  /* XTFRCNVR9*'motor_stopped' */
                  event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c );
                  SetEventTargetInstance( event, ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype );
                  Diverter_CLX2HRDCGSEQ_Dispatch( event );
                  break; /* after transition */
              }
              break;
          }
        case DIVERTER_XTFRCNVREVENT10NUM:  /* XTFRCNVR10*'enable_control' */
          if ( 0 != ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_subtype )
          switch ( ((Diverter_AUTOSEQ *) p_xtfrcnvr->R8_subtype)->R9_object_id ) {
            case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
              switch ( event_number ) {
              }
              break;
            case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
              switch ( event_number ) {
              }
              break;
          }
      }
      break;
    case Diverter_MOTINH_CLASS_NUMBER:  /* Motion Inhibited (MOTINH) */
      switch ( event_number ) {
      }
      break;
  }
}


