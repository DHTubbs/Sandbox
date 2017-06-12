/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MC_class.c
 *
 * Class:       Motion Controller  (MC)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "VelocityControlDrive_classes.h"


/*
 * RELATE DE TO MC ACROSS R2
 */
void
VelocityControlDrive_MC_R2_Link_controls_enabling_circuit_of_drive_for( VelocityControlDrive_DE * part, VelocityControlDrive_MC * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MC", "VelocityControlDrive_MC_R2_Link_controls_enabling_circuit_of_drive_for" );
    return;
  }
  /* Note:  MC->DE[R2] not navigated */
  /* Note:  DE->MC[R2] not navigated */
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s VelocityControlDrive_MC_container[ VelocityControlDrive_MC_MAX_EXTENT_SIZE ];
static VelocityControlDrive_MC VelocityControlDrive_MC_instances[ VelocityControlDrive_MC_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_VelocityControlDrive_MC_extent = {
  {0}, {0}, &VelocityControlDrive_MC_container[ 0 ],
  (Escher_iHandle_t) &VelocityControlDrive_MC_instances,
  sizeof( VelocityControlDrive_MC ), VelocityControlDrive_MC_STATE_1, VelocityControlDrive_MC_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Motion Controller  (MC)
 * Component:  VelocityControlDrive
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Idle]
 */
static void VelocityControlDrive_MC_act1( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_act1( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  /* GENERATE MI_A3:motion_complete() TO MI CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MI_A3:motion_complete() TO MI CLASS" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent3c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [InitiateMove]
 */
static void VelocityControlDrive_MC_act2( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_act2( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_MCevent1 * rcvd_evt = (VelocityControlDrive_MCevent1 *) event;
  /* SEND drive::jog_motor(acceleration:PARAM.acceleration, motor_direction:PARAM.direction, velocity:PARAM.velocity) */
  XTUML_OAL_STMT_TRACE( 1, "SEND drive::jog_motor(acceleration:PARAM.acceleration, motor_direction:PARAM.direction, velocity:PARAM.velocity)" );
  VelocityControlDrive_drive_jog_motor( rcvd_evt->p_acceleration, rcvd_evt->p_direction, rcvd_evt->p_velocity );
  /* ASSIGN self.move_duration = PARAM.duration */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.move_duration = PARAM.duration" );
  self->move_duration = rcvd_evt->p_duration;
}

/*
 * State 3:  [Moving]
 */
static void VelocityControlDrive_MC_act3( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_act3( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  /* IF ( ( self.move_duration > 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( self.move_duration > 0 ) )" );
  if ( ( self->move_duration > 0 ) ) {
    Escher_xtUMLEvent_t * timer_expired;
    /* CREATE EVENT INSTANCE timer_expired(  ) TO self */
    XTUML_OAL_STMT_TRACE( 2, "CREATE EVENT INSTANCE timer_expired(  ) TO self" );
    timer_expired = Escher_NewxtUMLEvent( (void *) self, &VelocityControlDrive_MCevent3c );
    /* ASSIGN self.move_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( self.move_duration * 1000 )) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.move_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( self.move_duration * 1000 ))" );
    self->move_timer = TIM_timer_start( (Escher_xtUMLEvent_t *)timer_expired, ( self->move_duration * 1000 ) );
  }
}

/*
 * State 4:  [InitiateStop]
 */
static void VelocityControlDrive_MC_act4( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_act4( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND drive::stop_motor() */
  XTUML_OAL_STMT_TRACE( 1, "SEND drive::stop_motor()" );
  VelocityControlDrive_drive_stop_motor();
}

/*
 */
static void VelocityControlDrive_MC_xact1( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_xact1( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  bool existed;
  /* ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.move_timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.move_timer)" );
  existed = TIM_timer_cancel( self->move_timer );
}

/*
 */
static void VelocityControlDrive_MC_xact2( VelocityControlDrive_MC *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MC_xact2( VelocityControlDrive_MC * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_MCevent1 * rcvd_evt = (VelocityControlDrive_MCevent1 *) event;
  bool existed;
  /* ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.move_timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.move_timer)" );
  existed = TIM_timer_cancel( self->move_timer );
}

const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent1c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MC_CLASS_NUMBER, VELOCITYCONTROLDRIVE_MCEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent2c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MC_CLASS_NUMBER, VELOCITYCONTROLDRIVE_MCEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent3c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MC_CLASS_NUMBER, VELOCITYCONTROLDRIVE_MCEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent4c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MC_CLASS_NUMBER, VELOCITYCONTROLDRIVE_MCEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t VelocityControlDrive_MC_StateEventMatrix[ 4 + 1 ][ 4 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  VelocityControlDrive_MC_STATE_1 (Idle) */
  { VelocityControlDrive_MC_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_IS_IGNORED },
  /* row 2:  VelocityControlDrive_MC_STATE_2 (InitiateMove) */
  { EVENT_CANT_HAPPEN, VelocityControlDrive_MC_STATE_3, EVENT_CANT_HAPPEN, EVENT_IS_IGNORED },
  /* row 3:  VelocityControlDrive_MC_STATE_3 (Moving) */
  { (2<<8) + VelocityControlDrive_MC_STATE_2, EVENT_CANT_HAPPEN, (1<<8) + VelocityControlDrive_MC_STATE_4, EVENT_IS_IGNORED },
  /* row 4:  VelocityControlDrive_MC_STATE_4 (InitiateStop) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, VelocityControlDrive_MC_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t VelocityControlDrive_MC_acts[ 5 ] = {
    (StateAction_t) 0,
    (StateAction_t) VelocityControlDrive_MC_act1,  /* Idle */
    (StateAction_t) VelocityControlDrive_MC_act2,  /* InitiateMove */
    (StateAction_t) VelocityControlDrive_MC_act3,  /* Moving */
    (StateAction_t) VelocityControlDrive_MC_act4  /* InitiateStop */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 5 ] = {
    "",
    "Idle",
    "InitiateMove",
    "Moving",
    "InitiateStop"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t VelocityControlDrive_MC_xacts[ 2 ] = {
    (StateAction_t) VelocityControlDrive_MC_xact1,
    (StateAction_t) VelocityControlDrive_MC_xact2
  };

/*
 * instance state machine event dispatching
 */
void
VelocityControlDrive_MC_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 4 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = VelocityControlDrive_MC_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 4 ) {
        STATE_TXN_START_TRACE( "MC", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *VelocityControlDrive_MC_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "MC", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "MC", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "MC", current_state );
      } else {
        STATE_TXN_START_TRACE( "MC", current_state, state_name_strings[ current_state ] );
        ( *VelocityControlDrive_MC_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *VelocityControlDrive_MC_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "MC", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}


