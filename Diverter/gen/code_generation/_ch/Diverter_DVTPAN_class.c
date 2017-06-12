/*----------------------------------------------------------------------------
 * File:  Diverter_DVTPAN_class.c
 *
 * Class:       Diverter Pan  (DVTPAN)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE ACTR TO DVTPAN ACROSS R5
 */
void
Diverter_DVTPAN_R5_Link( Diverter_ACTR * supertype, Diverter_DVTPAN * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVTPAN", "Diverter_DVTPAN_R5_Link" );
    return;
  }
  /* Optimized linkage for DVTPAN->ACTR[R5] */
  subtype->ACTR_R5 = supertype;
  /* Optimized linkage for ACTR->DVTPAN[R5] */
  supertype->R5_subtype = subtype;
  supertype->R5_object_id = Diverter_DVTPAN_CLASS_NUMBER;
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_DVTPAN_container[ Diverter_DVTPAN_MAX_EXTENT_SIZE ];
static Diverter_DVTPAN Diverter_DVTPAN_instances[ Diverter_DVTPAN_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_DVTPAN_extent = {
  {0}, {0}, &Diverter_DVTPAN_container[ 0 ],
  (Escher_iHandle_t) &Diverter_DVTPAN_instances,
  sizeof( Diverter_DVTPAN ), Diverter_DVTPAN_STATE_1, Diverter_DVTPAN_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Diverter Pan  (DVTPAN)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 3:  [PanDown]
 */
static void Diverter_DVTPAN_act3( Diverter_DVTPAN *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVTPAN_act3( Diverter_DVTPAN * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [PanUp]
 */
static void Diverter_DVTPAN_act2( Diverter_DVTPAN *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVTPAN_act2( Diverter_DVTPAN * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 1:  [Initial]
 */
static void Diverter_DVTPAN_act1( Diverter_DVTPAN *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVTPAN_act1( Diverter_DVTPAN * self, const Escher_xtUMLEvent_t * const event )
{
}

const Escher_xtUMLEventConstant_t Diverter_DVTPANevent_ACTR_PE2c = {
  Diverter_DOMAIN_ID, Diverter_DVTPAN_CLASS_NUMBER, DIVERTER_DVTPANEVENT_ACTR_PE2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_DVTPANevent_ACTR_PE1c = {
  Diverter_DOMAIN_ID, Diverter_DVTPAN_CLASS_NUMBER, DIVERTER_DVTPANEVENT_ACTR_PE1NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_DVTPAN_StateEventMatrix[ 3 + 1 ][ 2 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_DVTPAN_STATE_1 (Initial) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 2:  Diverter_DVTPAN_STATE_2 (PanUp) */
  { EVENT_CANT_HAPPEN, Diverter_DVTPAN_STATE_3 },
  /* row 3:  Diverter_DVTPAN_STATE_3 (PanDown) */
  { Diverter_DVTPAN_STATE_2, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_DVTPAN_acts[ 4 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_DVTPAN_act1,  /* Initial */
    (StateAction_t) Diverter_DVTPAN_act2,  /* PanUp */
    (StateAction_t) Diverter_DVTPAN_act3  /* PanDown */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 4 ] = {
    "",
    "Initial",
    "PanUp",
    "PanDown"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_DVTPAN_Dispatch( Escher_xtUMLEvent_t * event )
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
      next_state = Diverter_DVTPAN_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 3 ) {
        STATE_TXN_START_TRACE( "DVTPAN", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_DVTPAN_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "DVTPAN", next_state, state_name_strings[ next_state ] );
        instance->current_state = next_state;
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "DVTPAN", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


