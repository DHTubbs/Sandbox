/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MTRDRV_class.c
 *
 * Class:       Motor Drive  (MTRDRV)
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
static Escher_SetElement_s VelocityControlDrive_MTRDRV_container[ VelocityControlDrive_MTRDRV_MAX_EXTENT_SIZE ];
static VelocityControlDrive_MTRDRV VelocityControlDrive_MTRDRV_instances[ VelocityControlDrive_MTRDRV_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_VelocityControlDrive_MTRDRV_extent = {
  {0}, {0}, &VelocityControlDrive_MTRDRV_container[ 0 ],
  (Escher_iHandle_t) &VelocityControlDrive_MTRDRV_instances,
  sizeof( VelocityControlDrive_MTRDRV ), VelocityControlDrive_MTRDRV_STATE_1, VelocityControlDrive_MTRDRV_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Motor Drive  (MTRDRV)
 * Component:  VelocityControlDrive
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [WaitingForInstruction]
 */
static void VelocityControlDrive_MTRDRV_act1( VelocityControlDrive_MTRDRV *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MTRDRV_act1( VelocityControlDrive_MTRDRV * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [EnableDrive]
 */
static void VelocityControlDrive_MTRDRV_act2( VelocityControlDrive_MTRDRV *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MTRDRV_act2( VelocityControlDrive_MTRDRV * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 3:  [ChangeVelocity]
 */
static void VelocityControlDrive_MTRDRV_act3( VelocityControlDrive_MTRDRV *, const Escher_xtUMLEvent_t * const );
static void
VelocityControlDrive_MTRDRV_act3( VelocityControlDrive_MTRDRV * self, const Escher_xtUMLEvent_t * const event )
{
}





















/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t VelocityControlDrive_MTRDRV_StateEventMatrix[ 3 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  VelocityControlDrive_MTRDRV_STATE_1 (WaitingForInstruction) */
  {  },
  /* row 2:  VelocityControlDrive_MTRDRV_STATE_2 (EnableDrive) */
  {  },
  /* row 3:  VelocityControlDrive_MTRDRV_STATE_3 (ChangeVelocity) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t VelocityControlDrive_MTRDRV_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) VelocityControlDrive_MTRDRV_act1,  /* WaitingForInstruction */
    (StateAction_t) VelocityControlDrive_MTRDRV_act2,  /* EnableDrive */
    (StateAction_t) VelocityControlDrive_MTRDRV_act3  /* ChangeVelocity */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "WaitingForInstruction",
    "EnableDrive",
    "ChangeVelocity"
  };

/*
 * instance state machine event dispatching
 */
void
VelocityControlDrive_MTRDRV_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 3 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = VelocityControlDrive_MTRDRV_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "MTRDRV", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *VelocityControlDrive_MTRDRV_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "MTRDRV", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "MTRDRV", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


