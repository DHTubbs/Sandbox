/*----------------------------------------------------------------------------
 * File:  Diverter_AUTOSEQ_class.c
 *
 * Class:       Automatic Sequence  (AUTOSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE XTFRCNVR TO AUTOSEQ ACROSS R8
 */
void
Diverter_AUTOSEQ_R8_Link( Diverter_XTFRCNVR * supertype, Diverter_AUTOSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "AUTOSEQ", "Diverter_AUTOSEQ_R8_Link" );
    return;
  }
  subtype->Id = supertype->Id;
  /* Optimized linkage for AUTOSEQ->XTFRCNVR[R8] */
  subtype->XTFRCNVR_R8 = supertype;
  /* Optimized linkage for XTFRCNVR->AUTOSEQ[R8] */
  supertype->R8_subtype = subtype;
  supertype->R8_object_id = Diverter_AUTOSEQ_CLASS_NUMBER;
}


/*
 * UNRELATE XTFRCNVR FROM AUTOSEQ ACROSS R8
 */
void
Diverter_AUTOSEQ_R8_Unlink( Diverter_XTFRCNVR * supertype, Diverter_AUTOSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "AUTOSEQ", "Diverter_AUTOSEQ_R8_Unlink" );
    return;
  }
  subtype->XTFRCNVR_R8 = 0;
  supertype->R8_subtype = 0;
  supertype->R8_object_id = 0;
}


/* Accessors to AUTOSEQ[R9] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_AUTOSEQ_container[ Diverter_AUTOSEQ_MAX_EXTENT_SIZE ];
static Diverter_AUTOSEQ Diverter_AUTOSEQ_instances[ Diverter_AUTOSEQ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_AUTOSEQ_extent = {
  {0}, {0}, &Diverter_AUTOSEQ_container[ 0 ],
  (Escher_iHandle_t) &Diverter_AUTOSEQ_instances,
  sizeof( Diverter_AUTOSEQ ), 0, Diverter_AUTOSEQ_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Automatic Sequence  (AUTOSEQ)
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


const Escher_xtUMLEventConstant_t Diverter_AUTOSEQevent11c = {
  Diverter_DOMAIN_ID, Diverter_AUTOSEQ_CLASS_NUMBER, DIVERTER_AUTOSEQEVENT11NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };



  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 1 ] = {
    "",
  };

/*
 * No transitions in state model, but polymorphic events are present.
 * This dispatch level will move a polymorphic event down the relationship
 * hierarchy as dictated by the application analysis.
 */
void
Diverter_AUTOSEQ_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    Diverter_AUTOSEQ_R9PolymorphicEvent( (Diverter_AUTOSEQ *) instance, event );
  }
}
/*
 * Transfer a polymorphic event down the R9 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
Diverter_AUTOSEQ_R9PolymorphicEvent( const Diverter_AUTOSEQ * const p_autoseq, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_autoseq->R9_subtype )
  switch ( p_autoseq->R9_object_id ) {
    case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_AUTOSEQEVENT11NUM:  /* AUTOSEQ11*'initiate_auto_seq' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX1DCGSEQevent_AUTOSEQ_PE11c );
          SetEventTargetInstance( event, p_autoseq->R9_subtype );
          Diverter_CLX1DCGSEQ_Dispatch( event );
          break; /* after transition */
      }
      break;
    case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_AUTOSEQEVENT11NUM:  /* AUTOSEQ11*'initiate_auto_seq' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_CLX2HRDCGSEQevent_AUTOSEQ_PE11c );
          SetEventTargetInstance( event, p_autoseq->R9_subtype );
          Diverter_CLX2HRDCGSEQ_Dispatch( event );
          break; /* after transition */
      }
      break;
  }
}


