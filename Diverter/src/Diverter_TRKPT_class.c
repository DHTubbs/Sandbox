/*----------------------------------------------------------------------------
 * File:  Diverter_TRKPT_class.c
 *
 * Class:       Tracking Point  (TRKPT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"

/* Note:  Link DVRTSHT to ACTR across R3 using TRKPT not needed.  */

/*
 * UNRELATE DVRTSHT FROM ACTR ACROSS R3 USING TRKPT
 */
void
Diverter_TRKPT_R3_Unlink( Diverter_DVRTSHT * aone, Diverter_ACTR * aoth, Diverter_TRKPT * assr )
{
  if ( (aone == 0) || (aoth == 0) || (assr == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "TRKPT", "Diverter_TRKPT_R3_Unlink" );
    return;
  }
  assr->DVRTSHT_R3_responds_to_position_of = 0;
  assr->ACTR_R3_initiates_motion_on = 0;
  Escher_SetRemoveElement( &aone->TRKPT_R3, assr );
  Escher_SetRemoveElement( &aoth->TRKPT_R3, assr );
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_TRKPT_container[ Diverter_TRKPT_MAX_EXTENT_SIZE ];
static Diverter_TRKPT Diverter_TRKPT_instances[ Diverter_TRKPT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_TRKPT_extent = {
  {0}, {0}, &Diverter_TRKPT_container[ 0 ],
  (Escher_iHandle_t) &Diverter_TRKPT_instances,
  sizeof( Diverter_TRKPT ), 0, Diverter_TRKPT_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Tracking Point  (TRKPT)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [CorrectForVelocity]
 */
static void Diverter_TRKPT_CB_act1( Diverter_TRKPT *, const Escher_xtUMLEvent_t * const );
static void
Diverter_TRKPT_CB_act1( Diverter_TRKPT * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_TRKPT * tracking_point=0;i_t sheet_handler_velocity;Escher_ObjectSet_s tracking_points_space={0}; Escher_ObjectSet_s * tracking_points = &tracking_points_space;
  /* ASSIGN sheet_handler_velocity = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sheet_handler_velocity = 0" );
  sheet_handler_velocity = 0;
  /* SELECT many tracking_points FROM INSTANCES OF TRKPT */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many tracking_points FROM INSTANCES OF TRKPT" );
  Escher_CopySet( tracking_points, &pG_Diverter_TRKPT_extent.active );
  /* FOR EACH tracking_point IN tracking_points */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH tracking_point IN tracking_points" );
  { Escher_Iterator_s itertracking_point;
  Diverter_TRKPT * iitracking_point;
  Escher_IteratorReset( &itertracking_point, tracking_points );
  while ( (iitracking_point = (Diverter_TRKPT *)Escher_IteratorNext( &itertracking_point )) != 0 ) {
    tracking_point = iitracking_point; {
    /* ASSIGN tracking_point.effective_position = ( tracking_point.actual_position - ( sheet_handler_velocity * tracking_point.offset_time ) ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN tracking_point.effective_position = ( tracking_point.actual_position - ( sheet_handler_velocity * tracking_point.offset_time ) )" );
    tracking_point->effective_position = ( tracking_point->actual_position - ( sheet_handler_velocity * tracking_point->offset_time ) );
  }}}
  Escher_ClearSet( tracking_points );
}




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_TRKPT_CB_StateEventMatrix[ 1 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  Diverter_TRKPT_CB_STATE_1 (CorrectForVelocity) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_TRKPT_CB_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_TRKPT_CB_act1  /* CorrectForVelocity */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 2 ] = {
    "",
    "CorrectForVelocity"
  };

/*
 * class-based state machine event dispatching
 */
void
Diverter_TRKPT_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { Diverter_TRKPT_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = Diverter_TRKPT_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 1 ) {
    STATE_TXN_START_TRACE( "TRKPT", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *Diverter_TRKPT_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "TRKPT", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "TRKPT", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "TRKPT", current_state );
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


