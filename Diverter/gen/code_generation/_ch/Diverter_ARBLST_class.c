/*----------------------------------------------------------------------------
 * File:  Diverter_ARBLST_class.c
 *
 * Class:       Air Blast  (ARBLST)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE ACTR TO ARBLST ACROSS R5
 */
void
Diverter_ARBLST_R5_Link( Diverter_ACTR * supertype, Diverter_ARBLST * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "ARBLST", "Diverter_ARBLST_R5_Link" );
    return;
  }
  /* Optimized linkage for ARBLST->ACTR[R5] */
  subtype->ACTR_R5 = supertype;
  /* Optimized linkage for ACTR->ARBLST[R5] */
  supertype->R5_subtype = subtype;
  supertype->R5_object_id = Diverter_ARBLST_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_ARBLST_container[ Diverter_ARBLST_MAX_EXTENT_SIZE ];
static Diverter_ARBLST Diverter_ARBLST_instances[ Diverter_ARBLST_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_ARBLST_extent = {
  {0}, {0}, &Diverter_ARBLST_container[ 0 ],
  (Escher_iHandle_t) &Diverter_ARBLST_instances,
  sizeof( Diverter_ARBLST ), Diverter_ARBLST_STATE_1, Diverter_ARBLST_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Air Blast  (ARBLST)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Off]
 */
static void Diverter_ARBLST_act1( Diverter_ARBLST *, const Escher_xtUMLEvent_t * const );
static void
Diverter_ARBLST_act1( Diverter_ARBLST * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [On]
 */
static void Diverter_ARBLST_act2( Diverter_ARBLST *, const Escher_xtUMLEvent_t * const );
static void
Diverter_ARBLST_act2( Diverter_ARBLST * self, const Escher_xtUMLEvent_t * const event )
{
}

const Escher_xtUMLEventConstant_t Diverter_ARBLSTevent_ACTR_PE1c = {
  Diverter_DOMAIN_ID, Diverter_ARBLST_CLASS_NUMBER, DIVERTER_ARBLSTEVENT_ACTR_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_ARBLSTevent_ACTR_PE2c = {
  Diverter_DOMAIN_ID, Diverter_ARBLST_CLASS_NUMBER, DIVERTER_ARBLSTEVENT_ACTR_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_ARBLST_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_ARBLST_STATE_1 (Off) */
  { EVENT_CANT_HAPPEN, Diverter_ARBLST_STATE_2 },
  /* row 2:  Diverter_ARBLST_STATE_2 (On) */
  { Diverter_ARBLST_STATE_1, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_ARBLST_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_ARBLST_act1,  /* Off */
    (StateAction_t) Diverter_ARBLST_act2  /* On */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "Off",
    "On"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_ARBLST_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 2 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Diverter_ARBLST_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "ARBLST", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_ARBLST_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "ARBLST", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "ARBLST", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


