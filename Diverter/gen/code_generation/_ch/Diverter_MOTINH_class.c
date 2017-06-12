/*----------------------------------------------------------------------------
 * File:  Diverter_MOTINH_class.c
 *
 * Class:       Motion Inhibited  (MOTINH)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE XTFRCNVR TO MOTINH ACROSS R8
 */
void
Diverter_MOTINH_R8_Link( Diverter_XTFRCNVR * supertype, Diverter_MOTINH * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MOTINH", "Diverter_MOTINH_R8_Link" );
    return;
  }
  subtype->Id = supertype->Id;
  /* Optimized linkage for MOTINH->XTFRCNVR[R8] */
  subtype->XTFRCNVR_R8 = supertype;
  /* Optimized linkage for XTFRCNVR->MOTINH[R8] */
  supertype->R8_subtype = subtype;
  supertype->R8_object_id = Diverter_MOTINH_CLASS_NUMBER;
}


/*
 * UNRELATE XTFRCNVR FROM MOTINH ACROSS R8
 */
void
Diverter_MOTINH_R8_Unlink( Diverter_XTFRCNVR * supertype, Diverter_MOTINH * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "MOTINH", "Diverter_MOTINH_R8_Unlink" );
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
static Escher_SetElement_s Diverter_MOTINH_container[ Diverter_MOTINH_MAX_EXTENT_SIZE ];
static Diverter_MOTINH Diverter_MOTINH_instances[ Diverter_MOTINH_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_MOTINH_extent = {
  {0}, {0}, &Diverter_MOTINH_container[ 0 ],
  (Escher_iHandle_t) &Diverter_MOTINH_instances,
  sizeof( Diverter_MOTINH ), 0, Diverter_MOTINH_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Motion Inhibited  (MOTINH)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/
/*
 * This class is modeled as having a state chart, but it has no states.
 * This makes good sense in a supertype class receiving polymorphic events.
 * If this is not the intention, add states to the model or unmark the
 * instance or class state chart setting.
 */
static void empty_state_chart_action( void );
static void empty_state_chart_action( void ) {}



  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 1 ] = {
    "",
  };

/*
 * For this state machine, there are either no events,
 * no transitions, or no states.
 */
void
Diverter_MOTINH_Dispatch( Escher_xtUMLEvent_t * event )
{
  /*
   * Since polymorphic events could land here, it is not safe to have
   * an invalid state machine.  We therefore cause a compilation error.
   * If you wish to allow this empty state model, define a function
   * to receive this invocation or eliminate it with a macro.
   * You have been warned.
   */
  Empty_state_model_Must_define_what_to_with_events_landing_here( event );
}


