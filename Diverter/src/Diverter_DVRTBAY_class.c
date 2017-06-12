/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTBAY_class.c
 *
 * Class:       Diverter Bay  (DVRTBAY)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_DVRTBAY_container[ Diverter_DVRTBAY_MAX_EXTENT_SIZE ];
static Diverter_DVRTBAY Diverter_DVRTBAY_instances[ Diverter_DVRTBAY_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_DVRTBAY_extent = {
  {0}, {0}, &Diverter_DVRTBAY_container[ 0 ],
  (Escher_iHandle_t) &Diverter_DVRTBAY_instances,
  sizeof( Diverter_DVRTBAY ), Diverter_DVRTBAY_STATE_1, Diverter_DVRTBAY_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Diverter Bay  (DVRTBAY)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Empty]
 */
static void Diverter_DVRTBAY_act1( Diverter_DVRTBAY *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVRTBAY_act1( Diverter_DVRTBAY * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_DVRTSTK * divert_stack=0;
  /* SELECT one divert_stack RELATED BY self->DVRTSTK[R6] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one divert_stack RELATED BY self->DVRTSTK[R6]" );
  divert_stack = ( 0 != self ) ? self->DVRTSTK_R6_creates : 0;
  /* IF ( not_empty divert_stack ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty divert_stack )" );
  if ( ( 0 != divert_stack ) ) {
    /* UNRELATE self FROM divert_stack ACROSS R6 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM divert_stack ACROSS R6" );
    Diverter_DVRTSTK_R6_Unlink_creates( self, divert_stack );
    /* DELETE OBJECT INSTANCE divert_stack */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE divert_stack" );
    if ( 0 == divert_stack ) {
      XTUML_EMPTY_HANDLE_TRACE( "DVRTSTK", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) divert_stack, Diverter_DOMAIN_ID, Diverter_DVRTSTK_CLASS_NUMBER );
  }
}

/*
 * State 3:  [WaitForDischargeWindow]
 */
static void Diverter_DVRTBAY_act3( Diverter_DVRTBAY *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVRTBAY_act3( Diverter_DVRTBAY * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * timer_expired;
  /* CREATE EVENT INSTANCE timer_expired(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE timer_expired(  ) TO self" );
  timer_expired = Escher_NewxtUMLEvent( (void *) self, &Diverter_DVRTBAYevent3c );
  /* ASSIGN self.sheet_settling_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( ( 2 * 1000 ) * 1000 )) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.sheet_settling_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( ( 2 * 1000 ) * 1000 ))" );
  self->sheet_settling_timer = TIM_timer_start( (Escher_xtUMLEvent_t *)timer_expired, ( ( 2 * 1000 ) * 1000 ) );
}

/*
 * State 2:  [ReceivingSheets]
 */
static void Diverter_DVRTBAY_act2( Diverter_DVRTBAY *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVRTBAY_act2( Diverter_DVRTBAY * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_DVRTBAYevent1 * rcvd_evt = (Diverter_DVRTBAYevent1 *) event;
  Diverter_DVRTSTK * divert_stack=0;
  /* SELECT one divert_stack RELATED BY self->DVRTSTK[R6] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one divert_stack RELATED BY self->DVRTSTK[R6]" );
  divert_stack = ( 0 != self ) ? self->DVRTSTK_R6_creates : 0;
  /* IF ( empty divert_stack ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty divert_stack )" );
  if ( ( 0 == divert_stack ) ) {
    Diverter_DVRTPKT * divert_packet=0;
    /* CREATE OBJECT INSTANCE divert_stack OF DVRTSTK */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE divert_stack OF DVRTSTK" );
    divert_stack = (Diverter_DVRTSTK *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_DVRTSTK_CLASS_NUMBER );
    /* RELATE divert_stack TO self ACROSS R6 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE divert_stack TO self ACROSS R6" );
    Diverter_DVRTSTK_R6_Link_creates( self, divert_stack );
    /* SELECT one divert_packet RELATED BY self->DVRTPKT[R4] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one divert_packet RELATED BY self->DVRTPKT[R4]" );
    divert_packet = ( 0 != self ) ? self->DVRTPKT_R4_receives_next : 0;
    /* ASSIGN divert_stack.stack_type = divert_packet.type */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN divert_stack.stack_type = divert_packet.type" );
    divert_stack->stack_type = divert_packet->type;
    /* ASSIGN divert_stack.number_of_sheets = 1 */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN divert_stack.number_of_sheets = 1" );
    divert_stack->number_of_sheets = 1;
    /* ASSIGN divert_stack.stack_thickness = PARAM.sheet_caliper */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN divert_stack.stack_thickness = PARAM.sheet_caliper" );
    divert_stack->stack_thickness = rcvd_evt->p_sheet_caliper;
  }
  else {
    /* ASSIGN divert_stack.number_of_sheets = ( divert_stack.number_of_sheets + 1 ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN divert_stack.number_of_sheets = ( divert_stack.number_of_sheets + 1 )" );
    divert_stack->number_of_sheets = ( divert_stack->number_of_sheets + 1 );
    /* ASSIGN divert_stack.stack_thickness = ( divert_stack.stack_thickness + PARAM.sheet_caliper ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN divert_stack.stack_thickness = ( divert_stack.stack_thickness + PARAM.sheet_caliper )" );
    divert_stack->stack_thickness = ( divert_stack->stack_thickness + rcvd_evt->p_sheet_caliper );
  }
}

/*
 * State 4:  [Discharging]
 */
static void Diverter_DVRTBAY_act4( Diverter_DVRTBAY *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVRTBAY_act4( Diverter_DVRTBAY * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_Divert_Conv_Discharge_Alg_t discharge_alg;Diverter_Machine_Side_t discharge_dir;Diverter_XTFRCNVR * cross_transfer_conveyor=0;Diverter_DVRTSTK * divert_stack=0;
  /* SELECT one divert_stack RELATED BY self->DVRTSTK[R6] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one divert_stack RELATED BY self->DVRTSTK[R6]" );
  divert_stack = ( 0 != self ) ? self->DVRTSTK_R6_creates : 0;
  /* ASSIGN discharge_dir = Operator */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN discharge_dir = Operator" );
  discharge_dir = Diverter_Machine_Side_Operator_e;
  /* ASSIGN discharge_alg = Dist_x1_Rollout */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN discharge_alg = Dist_x1_Rollout" );
  discharge_alg = Diverter_Divert_Conv_Discharge_Alg_Dist_x1_Rollout_e;
  /* IF ( ( divert_stack.stack_type == Scrap ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( divert_stack.stack_type == Scrap ) )" );
  if ( ( divert_stack->stack_type == Diverter_Divert_Packet_Scrap_e ) ) {
    /* ASSIGN discharge_dir = Drive */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN discharge_dir = Drive" );
    discharge_dir = Diverter_Machine_Side_Drive_e;
    /* ASSIGN discharge_alg = Dist_x2_Hesitating_Rollout */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN discharge_alg = Dist_x2_Hesitating_Rollout" );
    discharge_alg = Diverter_Divert_Conv_Discharge_Alg_Dist_x2_Hesitating_Rollout_e;
  }
  /* SELECT one cross_transfer_conveyor RELATED BY self->XTFRCNVR[R7] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one cross_transfer_conveyor RELATED BY self->XTFRCNVR[R7]" );
  cross_transfer_conveyor = ( 0 != self ) ? self->XTFRCNVR_R7 : 0;
  /* GENERATE XTFRCNVR6:discharge(control_alg:discharge_alg, direction:discharge_dir) TO cross_transfer_conveyor */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE XTFRCNVR6:discharge(control_alg:discharge_alg, direction:discharge_dir) TO cross_transfer_conveyor" );
  { Diverter_XTFRCNVRevent6 * e = (Diverter_XTFRCNVRevent6 *) Escher_NewxtUMLEvent( cross_transfer_conveyor, &Diverter_XTFRCNVRevent6c );
    e->p_control_alg = discharge_alg;    e->p_direction = discharge_dir;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
}

const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent2c = {
  Diverter_DOMAIN_ID, Diverter_DVRTBAY_CLASS_NUMBER, DIVERTER_DVRTBAYEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent1c = {
  Diverter_DOMAIN_ID, Diverter_DVRTBAY_CLASS_NUMBER, DIVERTER_DVRTBAYEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent3c = {
  Diverter_DOMAIN_ID, Diverter_DVRTBAY_CLASS_NUMBER, DIVERTER_DVRTBAYEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_DVRTBAY_StateEventMatrix[ 4 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_DVRTBAY_STATE_1 (Empty) */
  { Diverter_DVRTBAY_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 2:  Diverter_DVRTBAY_STATE_2 (ReceivingSheets) */
  { Diverter_DVRTBAY_STATE_2, Diverter_DVRTBAY_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  Diverter_DVRTBAY_STATE_3 (WaitForDischargeWindow) */
  { Diverter_DVRTBAY_STATE_2, EVENT_CANT_HAPPEN, Diverter_DVRTBAY_STATE_4 },
  /* row 4:  Diverter_DVRTBAY_STATE_4 (Discharging) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_DVRTBAY_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_DVRTBAY_act1,  /* Empty */
    (StateAction_t) Diverter_DVRTBAY_act2,  /* ReceivingSheets */
    (StateAction_t) Diverter_DVRTBAY_act3,  /* WaitForDischargeWindow */
    (StateAction_t) Diverter_DVRTBAY_act4  /* Discharging */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 5 ] = {
    "",
    "Empty",
    "ReceivingSheets",
    "WaitForDischargeWindow",
    "Discharging"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_DVRTBAY_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = Diverter_DVRTBAY_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        STATE_TXN_START_TRACE( "DVRTBAY", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_DVRTBAY_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "DVRTBAY", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "DVRTBAY", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


