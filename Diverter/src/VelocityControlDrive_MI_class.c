/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MI_class.c
 *
 * Class:       Motion Instruction  (MI)
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
static Escher_SetElement_s VelocityControlDrive_MI_container[ VelocityControlDrive_MI_MAX_EXTENT_SIZE ];
static VelocityControlDrive_MI VelocityControlDrive_MI_instances[ VelocityControlDrive_MI_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_VelocityControlDrive_MI_extent = {
  {0}, {0}, &VelocityControlDrive_MI_container[ 0 ],
  (Escher_iHandle_t) &VelocityControlDrive_MI_instances,
  sizeof( VelocityControlDrive_MI ), 0, VelocityControlDrive_MI_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Motion Instruction  (MI)
 * Component:  VelocityControlDrive
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [WaitingForInstruction]
 */
static void VelocityControlDrive_MI_CB_act1( VelocityControlDrive_MI *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MI_CB_act1( VelocityControlDrive_MI * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_MI * motion_inst=0;
  /* SELECT any motion_inst FROM INSTANCES OF MI */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_inst FROM INSTANCES OF MI" );
  motion_inst = (VelocityControlDrive_MI *) Escher_SetGetAny( &pG_VelocityControlDrive_MI_extent.active );
  /* IF ( not_empty motion_inst ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty motion_inst )" );
  if ( ( 0 != motion_inst ) ) {
    /* GENERATE MI_A1:jog_instruction_received() TO MI CLASS */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE MI_A1:jog_instruction_received() TO MI CLASS" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent1c );
      Escher_SendEvent( e );
    }
  }
}

/*
 * State 2:  [EnableDrive]
 */
static void VelocityControlDrive_MI_CB_act2( VelocityControlDrive_MI *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MI_CB_act2( VelocityControlDrive_MI * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_DE * drive_enable=0;
  /* SELECT any drive_enable FROM INSTANCES OF DE */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any drive_enable FROM INSTANCES OF DE" );
  drive_enable = (VelocityControlDrive_DE *) Escher_SetGetAny( &pG_VelocityControlDrive_DE_extent.active );
  /* GENERATE DE1:enable_drive() TO drive_enable */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE DE1:enable_drive() TO drive_enable" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( drive_enable, &VelocityControlDrive_DEevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * State 3:  [ExecuteInstruction]
 */
static void VelocityControlDrive_MI_CB_act3( VelocityControlDrive_MI *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MI_CB_act3( VelocityControlDrive_MI * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_MI * motion_inst=0;VelocityControlDrive_MC * motion_controller=0;
  /* SELECT any motion_controller FROM INSTANCES OF MC */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_controller FROM INSTANCES OF MC" );
  motion_controller = (VelocityControlDrive_MC *) Escher_SetGetAny( &pG_VelocityControlDrive_MC_extent.active );
  /* SELECT any motion_inst FROM INSTANCES OF MI */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_inst FROM INSTANCES OF MI" );
  motion_inst = (VelocityControlDrive_MI *) Escher_SetGetAny( &pG_VelocityControlDrive_MI_extent.active );
  /* GENERATE MC1:jog_cmd(velocity:motion_inst.velocity, acceleration:motion_inst.acceleration, duration:motion_inst.duration, direction:motion_inst.direction) TO motion_controller */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MC1:jog_cmd(velocity:motion_inst.velocity, acceleration:motion_inst.acceleration, duration:motion_inst.duration, direction:motion_inst.direction) TO motion_controller" );
  { VelocityControlDrive_MCevent1 * e = (VelocityControlDrive_MCevent1 *) Escher_NewxtUMLEvent( motion_controller, &VelocityControlDrive_MCevent1c );
    e->p_velocity = motion_inst->velocity;    e->p_acceleration = motion_inst->acceleration;    e->p_duration = motion_inst->duration;    e->p_direction = motion_inst->direction;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* DELETE OBJECT INSTANCE motion_inst */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE motion_inst" );
  if ( 0 == motion_inst ) {
    XTUML_EMPTY_HANDLE_TRACE( "MI", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) motion_inst, VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER );
  /* SEND client::motion_initiated() */
  XTUML_OAL_STMT_TRACE( 1, "SEND client::motion_initiated()" );
  VelocityControlDrive_client_motion_initiated();
}

/*
 * State 4:  [InitiateDriveDisable]
 */
static void VelocityControlDrive_MI_CB_act4( VelocityControlDrive_MI *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MI_CB_act4( VelocityControlDrive_MI * self, const Escher_xtUMLEvent_t * const event )
{
  VelocityControlDrive_DE * drive_enable=0;
  /* SELECT any drive_enable FROM INSTANCES OF DE */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any drive_enable FROM INSTANCES OF DE" );
  drive_enable = (VelocityControlDrive_DE *) Escher_SetGetAny( &pG_VelocityControlDrive_DE_extent.active );
  /* GENERATE DE2:disable_drive() TO drive_enable */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE DE2:disable_drive() TO drive_enable" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( drive_enable, &VelocityControlDrive_DEevent2c );
    Escher_SendEvent( e );
  }
  /* SEND client::motion_complete() */
  XTUML_OAL_STMT_TRACE( 1, "SEND client::motion_complete()" );
  VelocityControlDrive_client_motion_complete();
}

/*
 * State 5:  [DriveDisabling]
 */
static void VelocityControlDrive_MI_CB_act5( VelocityControlDrive_MI *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MI_CB_act5( VelocityControlDrive_MI * self, const Escher_xtUMLEvent_t * const event )
{
}

const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent1c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER_CB, VELOCITYCONTROLDRIVE_MI_CBEVENT1NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent2c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER_CB, VELOCITYCONTROLDRIVE_MI_CBEVENT2NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent3c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER_CB, VELOCITYCONTROLDRIVE_MI_CBEVENT3NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent5c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER_CB, VELOCITYCONTROLDRIVE_MI_CBEVENT5NUM,
  ESCHER_IS_ASSIGNER_EVENT };

const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent4c = {
  VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER_CB, VELOCITYCONTROLDRIVE_MI_CBEVENT4NUM,
  ESCHER_IS_ASSIGNER_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t VelocityControlDrive_MI_CB_StateEventMatrix[ 5 + 1 ][ 5 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  VelocityControlDrive_MI_CB_STATE_1 (WaitingForInstruction) */
  { VelocityControlDrive_MI_CB_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 2:  VelocityControlDrive_MI_CB_STATE_2 (EnableDrive) */
  { EVENT_CANT_HAPPEN, VelocityControlDrive_MI_CB_STATE_3, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 3:  VelocityControlDrive_MI_CB_STATE_3 (ExecuteInstruction) */
  { VelocityControlDrive_MI_CB_STATE_3, EVENT_CANT_HAPPEN, VelocityControlDrive_MI_CB_STATE_4, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 4:  VelocityControlDrive_MI_CB_STATE_4 (InitiateDriveDisable) */
  { VelocityControlDrive_MI_CB_STATE_2, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, VelocityControlDrive_MI_CB_STATE_5, EVENT_CANT_HAPPEN },
  /* row 5:  VelocityControlDrive_MI_CB_STATE_5 (DriveDisabling) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, VelocityControlDrive_MI_CB_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t VelocityControlDrive_MI_CB_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) VelocityControlDrive_MI_CB_act1,  /* WaitingForInstruction */
    (StateAction_t) VelocityControlDrive_MI_CB_act2,  /* EnableDrive */
    (StateAction_t) VelocityControlDrive_MI_CB_act3,  /* ExecuteInstruction */
    (StateAction_t) VelocityControlDrive_MI_CB_act4,  /* InitiateDriveDisable */
    (StateAction_t) VelocityControlDrive_MI_CB_act5  /* DriveDisabling */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 6 ] = {
    "",
    "WaitingForInstruction",
    "EnableDrive",
    "ExecuteInstruction",
    "InitiateDriveDisable",
    "DriveDisabling"
  };

/*
 * class-based state machine event dispatching
 */
void
VelocityControlDrive_MI_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { VelocityControlDrive_MI_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = VelocityControlDrive_MI_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 5 ) {
    STATE_TXN_START_TRACE( "MI", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *VelocityControlDrive_MI_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "MI", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "MI", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "MI", current_state );
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


