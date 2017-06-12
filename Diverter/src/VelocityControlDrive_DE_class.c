/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_DE_class.c
 *
 * Class:       Drive Enable  (DE)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "VelocityControlDrive_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s VelocityControlDrive_DE_container[ VelocityControlDrive_DE_MAX_EXTENT_SIZE ];
static VelocityControlDrive_DE VelocityControlDrive_DE_instances[ VelocityControlDrive_DE_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_VelocityControlDrive_DE_extent = {
  {0}, {0}, &VelocityControlDrive_DE_container[ 0 ],
  (Escher_iHandle_t) &VelocityControlDrive_DE_instances,
  sizeof( VelocityControlDrive_DE ), VelocityControlDrive_DE_STATE_1, VelocityControlDrive_DE_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Drive Enable  (DE)
 * Component:  VelocityControlDrive
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [DriveDisabled]
 */
static void VelocityControlDrive_DE_act1( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_act1( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  /* GENERATE MI_A5:drive_disabled() TO MI CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MI_A5:drive_disabled() TO MI CLASS" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent5c );
    Escher_SendEvent( e );
  }
}

/*
 * State 2:  [InitiateEnable]
 */
static void VelocityControlDrive_DE_act2( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_act2( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND drive::enable_drive(enable:TRUE) */
  XTUML_OAL_STMT_TRACE( 1, "SEND drive::enable_drive(enable:TRUE)" );
  VelocityControlDrive_drive_enable_drive( TRUE );
}

/*
 * State 3:  [DriveEnabled]
 */
static void VelocityControlDrive_DE_act3( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_act3( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  /* GENERATE MI_A2:drive_enabled() TO MI CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MI_A2:drive_enabled() TO MI CLASS" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * State 4:  [DisableDelay]
 */
static void VelocityControlDrive_DE_act4( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_act4( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  Escher_xtUMLEvent_t * timer_expired;
  /* CREATE EVENT INSTANCE timer_expired(  ) TO self */
  XTUML_OAL_STMT_TRACE( 1, "CREATE EVENT INSTANCE timer_expired(  ) TO self" );
  timer_expired = Escher_NewxtUMLEvent( (void *) self, &VelocityControlDrive_DEevent4c );
  /* ASSIGN self.disable_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( self.disable_delay * 1000 )) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN self.disable_timer = TIM::timer_start(event_inst:timer_expired, microseconds:( self.disable_delay * 1000 ))" );
  self->disable_timer = TIM_timer_start( (Escher_xtUMLEvent_t *)timer_expired, ( self->disable_delay * 1000 ) );
}

/*
 * State 5:  [InitiateDisable]
 */
static void VelocityControlDrive_DE_act5( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_act5( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  /* SEND drive::enable_drive(enable:FALSE) */
  XTUML_OAL_STMT_TRACE( 1, "SEND drive::enable_drive(enable:FALSE)" );
  VelocityControlDrive_drive_enable_drive( FALSE );
  /* GENERATE MI_A4:drive_disable_lockout() TO MI CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MI_A4:drive_disable_lockout() TO MI CLASS" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent4c );
    Escher_SendEvent( e );
  }
}

/*
 */
static void VelocityControlDrive_DE_xact1( VelocityControlDrive_DE *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_DE_xact1( VelocityControlDrive_DE * self, const Escher_xtUMLEvent_t * const event )
{
  bool existed;
  /* ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.disable_timer) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN existed = TIM::timer_cancel(timer_inst_ref:self.disable_timer)" );
  existed = TIM_timer_cancel( self->disable_timer );
}

const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent1c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_DE_CLASS_NUMBER, VELOCITYCONTROLDRIVE_DEEVENT1NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent2c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_DE_CLASS_NUMBER, VELOCITYCONTROLDRIVE_DEEVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent3c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_DE_CLASS_NUMBER, VELOCITYCONTROLDRIVE_DEEVENT3NUM,
  ESCHER_IS_INSTANCE_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent4c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_DE_CLASS_NUMBER, VELOCITYCONTROLDRIVE_DEEVENT4NUM,
  ESCHER_IS_INSTANCE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t VelocityControlDrive_DE_StateEventMatrix[ 5 + 1 ][ 4 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  VelocityControlDrive_DE_STATE_1 (DriveDisabled) */
  { VelocityControlDrive_DE_STATE_2, EVENT_CANT_HAPPEN, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN },
  /* row 2:  VelocityControlDrive_DE_STATE_2 (InitiateEnable) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, VelocityControlDrive_DE_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  VelocityControlDrive_DE_STATE_3 (DriveEnabled) */
  { VelocityControlDrive_DE_STATE_3, VelocityControlDrive_DE_STATE_4, EVENT_IS_IGNORED, EVENT_CANT_HAPPEN },
  /* row 4:  VelocityControlDrive_DE_STATE_4 (DisableDelay) */
  { (1<<8) + VelocityControlDrive_DE_STATE_3, EVENT_CANT_HAPPEN, EVENT_IS_IGNORED, VelocityControlDrive_DE_STATE_5 },
  /* row 5:  VelocityControlDrive_DE_STATE_5 (InitiateDisable) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, VelocityControlDrive_DE_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t VelocityControlDrive_DE_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) VelocityControlDrive_DE_act1,  /* DriveDisabled */
    (StateAction_t) VelocityControlDrive_DE_act2,  /* InitiateEnable */
    (StateAction_t) VelocityControlDrive_DE_act3,  /* DriveEnabled */
    (StateAction_t) VelocityControlDrive_DE_act4,  /* DisableDelay */
    (StateAction_t) VelocityControlDrive_DE_act5  /* InitiateDisable */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "DriveDisabled",
    "InitiateEnable",
    "DriveEnabled",
    "DisableDelay",
    "InitiateDisable"
  };

  /*
   * Array of pointers to the class transition action procedures.
   * Index is the (MC enumerated) number of the transition action to execute.
   */
  static const StateAction_t VelocityControlDrive_DE_xacts[ 1 ] = {
    (StateAction_t) VelocityControlDrive_DE_xact1
  };

/*
 * instance state machine event dispatching
 */
void
VelocityControlDrive_DE_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_SEMcell_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = VelocityControlDrive_DE_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "DE", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *VelocityControlDrive_DE_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "DE", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "DE", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "DE", current_state );
      } else {
        STATE_TXN_START_TRACE( "DE", current_state, state_name_strings[ current_state ] );
        ( *VelocityControlDrive_DE_xacts[ (next_state>>8)-1 ] )( instance, event );
        next_state = next_state & 0x00ff;
        instance->current_state = next_state;
        ( *VelocityControlDrive_DE_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "DE", next_state, state_name_strings[ next_state ] );
      }
    }
  }
}


