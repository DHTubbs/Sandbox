/*----------------------------------------------------------------------------
 * File:  Diverter_MANSEQ_class.c
 *
 * Class:       Manual Sequence  (MANSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE XTFRCNVR TO MANSEQ ACROSS R8
 */
void
Diverter_MANSEQ_R8_Link( Diverter_XTFRCNVR * supertype, Diverter_MANSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MANSEQ", "Diverter_MANSEQ_R8_Link" );
    return;
  }
  subtype->Id = supertype->Id;
  /* Optimized linkage for MANSEQ->XTFRCNVR[R8] */
  subtype->XTFRCNVR_R8 = supertype;
  /* Optimized linkage for XTFRCNVR->MANSEQ[R8] */
  supertype->R8_subtype = subtype;
  supertype->R8_object_id = Diverter_MANSEQ_CLASS_NUMBER;
}


/*
 * UNRELATE XTFRCNVR FROM MANSEQ ACROSS R8
 */
void
Diverter_MANSEQ_R8_Unlink( Diverter_XTFRCNVR * supertype, Diverter_MANSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MANSEQ", "Diverter_MANSEQ_R8_Unlink" );
    return;
  }
  subtype->XTFRCNVR_R8 = 0;
  supertype->R8_subtype = 0;
  supertype->R8_object_id = 0;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_MANSEQ_container[ Diverter_MANSEQ_MAX_EXTENT_SIZE ];
static Diverter_MANSEQ Diverter_MANSEQ_instances[ Diverter_MANSEQ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_MANSEQ_extent = {
  {0}, {0}, &Diverter_MANSEQ_container[ 0 ],
  (Escher_iHandle_t) &Diverter_MANSEQ_instances,
  sizeof( Diverter_MANSEQ ), Diverter_MANSEQ_STATE_1, Diverter_MANSEQ_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Manual Sequence  (MANSEQ)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Stopped]
 */
static void Diverter_MANSEQ_act1( Diverter_MANSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_MANSEQ_act1( Diverter_MANSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_Jog_Switch_Position_t position;
  /* ASSIGN position = Client::get_xtfr_jog_switch_position() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN position = Client::get_xtfr_jog_switch_position()" );
  position = Diverter_Client_get_xtfr_jog_switch_position();
  /* IF ( ( position == Operator ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( position == Operator ) )" );
  if ( ( position == Diverter_Jog_Switch_Position_Operator_e ) ) {
    /* GENERATE XTFRCNVR3:jog(direction:Operator) TO self */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR3:jog(direction:Operator) TO self" );
    { Diverter_XTFRCNVRevent3 * e = (Diverter_XTFRCNVRevent3 *) Escher_NewxtUMLEvent( self, &Diverter_XTFRCNVRevent3c );
      e->p_direction = Diverter_Machine_Side_Operator_e;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( position == Diverter_Jog_Switch_Position_Drive_e ) ) {
    /* GENERATE XTFRCNVR3:jog(direction:Drive) TO self */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR3:jog(direction:Drive) TO self" );
    { Diverter_XTFRCNVRevent3 * e = (Diverter_XTFRCNVRevent3 *) Escher_NewxtUMLEvent( self, &Diverter_XTFRCNVRevent3c );
      e->p_direction = Diverter_Machine_Side_Drive_e;
      Escher_SendSelfEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
}

/*
 * State 2:  [InitiateJog]
 */
static void Diverter_MANSEQ_act2( Diverter_MANSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_MANSEQ_act2( Diverter_MANSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_XTFRCNVRevent3 * rcvd_evt = (Diverter_XTFRCNVRevent3 *) event;
  Diverter_XTFRCNVR * conveyor=0;
  /* ASSIGN self.jog_direction = PARAM.direction */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.jog_direction = PARAM.direction" );
  self->jog_direction = rcvd_evt->p_direction;
  /* SELECT one conveyor RELATED BY self->XTFRCNVR[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one conveyor RELATED BY self->XTFRCNVR[R8]" );
  conveyor = ( 0 != self ) ? self->XTFRCNVR_R8 : 0;
  /* SEND xtfrcnvr::jog(acceleration:- 1, conveyor.GetMotorDirection(machine_side:PARAM.direction), duration:0000, velocity:- 1) */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::jog(acceleration:- 1, conveyor.GetMotorDirection(machine_side:PARAM.direction), duration:0000, velocity:- 1)" );
  Diverter_xtfrcnvr_jog( -1, Diverter_XTFRCNVR_op_GetMotorDirection(conveyor, rcvd_evt->p_direction), 0000, -1 );
}

/*
 * State 3:  [ConfirmedMoving]
 */
static void Diverter_MANSEQ_act3( Diverter_MANSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_MANSEQ_act3( Diverter_MANSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_Jog_Switch_Position_t position;
  /* ASSIGN position = Client::get_xtfr_jog_switch_position() */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN position = Client::get_xtfr_jog_switch_position()" );
  position = Diverter_Client_get_xtfr_jog_switch_position();
  /* IF ( ( ( ( position == Stop ) or ( ( position == Operator ) and ( self.jog_direction == Drive ) ) ) or ( ( position == Drive ) and ( self.jog_direction == Operator ) ) ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( ( ( position == Stop ) or ( ( position == Operator ) and ( self.jog_direction == Drive ) ) ) or ( ( position == Drive ) and ( self.jog_direction == Operator ) ) ) )" );
  if ( ( ( ( position == Diverter_Jog_Switch_Position_Stop_e ) || ( ( position == Diverter_Jog_Switch_Position_Operator_e ) && ( self->jog_direction == Diverter_Machine_Side_Drive_e ) ) ) || ( ( position == Diverter_Jog_Switch_Position_Drive_e ) && ( self->jog_direction == Diverter_Machine_Side_Operator_e ) ) ) ) {
    /* GENERATE XTFRCNVR4:jog_complete() TO self */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR4:jog_complete() TO self" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( self, &Diverter_XTFRCNVRevent4c );
      Escher_SendSelfEvent( e );
    }
  }
}

/*
 * State 4:  [InitiateStop]
 */
static void Diverter_MANSEQ_act4( Diverter_MANSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_MANSEQ_act4( Diverter_MANSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND xtfrcnvr::stop() */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::stop()" );
  Diverter_xtfrcnvr_stop();
}

const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE3c = {
  Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER, DIVERTER_MANSEQEVENT_XTFRCNVR_PE3NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE4c = {
  Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER, DIVERTER_MANSEQEVENT_XTFRCNVR_PE4NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE5c = {
  Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER, DIVERTER_MANSEQEVENT_XTFRCNVR_PE5NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE9c = {
  Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER, DIVERTER_MANSEQEVENT_XTFRCNVR_PE9NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE10c = {
  Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER, DIVERTER_MANSEQEVENT_XTFRCNVR_PE10NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_MANSEQ_StateEventMatrix[ 4 + 1 ][ 5 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_MANSEQ_STATE_1 (Stopped) */
  { Diverter_MANSEQ_STATE_1, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, Diverter_MANSEQ_STATE_2 },
  /* row 2:  Diverter_MANSEQ_STATE_2 (InitiateJog) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, Diverter_MANSEQ_STATE_3, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  Diverter_MANSEQ_STATE_3 (ConfirmedMoving) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, Diverter_MANSEQ_STATE_4, Diverter_MANSEQ_STATE_4 },
  /* row 4:  Diverter_MANSEQ_STATE_4 (InitiateStop) */
  { EVENT_CANT_HAPPEN, Diverter_MANSEQ_STATE_1, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_MANSEQ_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_MANSEQ_act1,  /* Stopped */
    (StateAction_t) Diverter_MANSEQ_act2,  /* InitiateJog */
    (StateAction_t) Diverter_MANSEQ_act3,  /* ConfirmedMoving */
    (StateAction_t) Diverter_MANSEQ_act4  /* InitiateStop */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 5 ] = {
    "",
    "Stopped",
    "InitiateJog",
    "ConfirmedMoving",
    "InitiateStop"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_MANSEQ_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 4 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Diverter_MANSEQ_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        STATE_TXN_START_TRACE( "MANSEQ", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_MANSEQ_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "MANSEQ", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "MANSEQ", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "MANSEQ", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


