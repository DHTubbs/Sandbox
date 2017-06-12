/*----------------------------------------------------------------------------
 * File:  Diverter_FNGRS_class.c
 *
 * Class:       Fingers  (FNGRS)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE ACTR TO FNGRS ACROSS R5
 */
void
Diverter_FNGRS_R5_Link( Diverter_ACTR * supertype, Diverter_FNGRS * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "FNGRS", "Diverter_FNGRS_R5_Link" );
    return;
  }
  /* Optimized linkage for FNGRS->ACTR[R5] */
  subtype->ACTR_R5 = supertype;
  /* Optimized linkage for ACTR->FNGRS[R5] */
  supertype->R5_subtype = subtype;
  supertype->R5_object_id = Diverter_FNGRS_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_FNGRS_container[ Diverter_FNGRS_MAX_EXTENT_SIZE ];
static Diverter_FNGRS Diverter_FNGRS_instances[ Diverter_FNGRS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_FNGRS_extent = {
  {0}, {0}, &Diverter_FNGRS_container[ 0 ],
  (Escher_iHandle_t) &Diverter_FNGRS_instances,
  sizeof( Diverter_FNGRS ), Diverter_FNGRS_STATE_1, Diverter_FNGRS_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Fingers  (FNGRS)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Raised]
 */
static void Diverter_FNGRS_act1( Diverter_FNGRS *, const Escher_xtUMLEvent_t * const );
static void
Diverter_FNGRS_act1( Diverter_FNGRS * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [Lowered]
 */
static void Diverter_FNGRS_act2( Diverter_FNGRS *, const Escher_xtUMLEvent_t * const );
static void
Diverter_FNGRS_act2( Diverter_FNGRS * self, const Escher_xtUMLEvent_t * const event )
{
}

const Escher_xtUMLEventConstant_t Diverter_FNGRSevent_ACTR_PE2c = {
  Diverter_DOMAIN_ID, Diverter_FNGRS_CLASS_NUMBER, DIVERTER_FNGRSEVENT_ACTR_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_FNGRSevent_ACTR_PE1c = {
  Diverter_DOMAIN_ID, Diverter_FNGRS_CLASS_NUMBER, DIVERTER_FNGRSEVENT_ACTR_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_FNGRS_StateEventMatrix[ 2 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_FNGRS_STATE_1 (Raised) */
  { Diverter_FNGRS_STATE_2, EVENT_CANT_HAPPEN },
  /* row 2:  Diverter_FNGRS_STATE_2 (Lowered) */
  { EVENT_CANT_HAPPEN, Diverter_FNGRS_STATE_1 }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_FNGRS_acts[ 3 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_FNGRS_act1,  /* Raised */
    (StateAction_t) Diverter_FNGRS_act2  /* Lowered */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 3 ] = {
    "",
    "Raised",
    "Lowered"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_FNGRS_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = Diverter_FNGRS_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 2 ) {
        STATE_TXN_START_TRACE( "FNGRS", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_FNGRS_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "FNGRS", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "FNGRS", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


