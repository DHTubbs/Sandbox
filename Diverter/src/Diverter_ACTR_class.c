/*----------------------------------------------------------------------------
 * File:  Diverter_ACTR_class.c
 *
 * Class:       Actuator  (ACTR)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/* Accessors to ACTR[R5] subtypes */


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_ACTR_container[ Diverter_ACTR_MAX_EXTENT_SIZE ];
static Diverter_ACTR Diverter_ACTR_instances[ Diverter_ACTR_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_ACTR_extent = {
  {0}, {0}, &Diverter_ACTR_container[ 0 ],
  (Escher_iHandle_t) &Diverter_ACTR_instances,
  sizeof( Diverter_ACTR ), 0, Diverter_ACTR_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Actuator  (ACTR)
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

const Escher_xtUMLEventConstant_t Diverter_ACTRevent2c = {
  Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER, DIVERTER_ACTREVENT2NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_POLYMORPHIC_EVENT };

const Escher_xtUMLEventConstant_t Diverter_ACTRevent1c = {
  Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER, DIVERTER_ACTREVENT1NUM,
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
Diverter_ACTR_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  if ( 0 != GetIsPolymorphicEvent( event ) ) {
    Diverter_ACTR_R5PolymorphicEvent( (Diverter_ACTR *) instance, event );
  }
}
/*
 * Transfer a polymorphic event down the R5 subtype hierarchy
 * to the dispatcher of the subtype that responds to the polymorphic event.
 * Modify the event to use the event constants of the receiving subtype
 * class.
 */
void
Diverter_ACTR_R5PolymorphicEvent( const Diverter_ACTR * const p_actr, Escher_xtUMLEvent_t * event )
{
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  if ( 0 != p_actr->R5_subtype )
  switch ( p_actr->R5_object_id ) {
    case Diverter_FNGRS_CLASS_NUMBER:  /* Fingers (FNGRS) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_ACTREVENT2NUM:  /* ACTR2*'de_activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_FNGRSevent_ACTR_PE2c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_FNGRS_Dispatch( event );
          break; /* after transition */
        case DIVERTER_ACTREVENT1NUM:  /* ACTR1*'activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_FNGRSevent_ACTR_PE1c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_FNGRS_Dispatch( event );
          break; /* after transition */
      }
      break;
    case Diverter_DVTPAN_CLASS_NUMBER:  /* Diverter Pan (DVTPAN) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_ACTREVENT2NUM:  /* ACTR2*'de_activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_DVTPANevent_ACTR_PE2c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_DVTPAN_Dispatch( event );
          break; /* after transition */
        case DIVERTER_ACTREVENT1NUM:  /* ACTR1*'activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_DVTPANevent_ACTR_PE1c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_DVTPAN_Dispatch( event );
          break; /* after transition */
      }
      break;
    case Diverter_ARBLST_CLASS_NUMBER:  /* Air Blast (ARBLST) */
      switch ( event_number ) {
        /* transition (or cant happen) events in subtype */
        case DIVERTER_ACTREVENT2NUM:  /* ACTR2*'de_activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_ARBLSTevent_ACTR_PE2c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_ARBLST_Dispatch( event );
          break; /* after transition */
        case DIVERTER_ACTREVENT1NUM:  /* ACTR1*'activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_ARBLSTevent_ACTR_PE1c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_ARBLST_Dispatch( event );
          break; /* after transition */
      }
      break;
    case Diverter_XTFRCNVR_CLASS_NUMBER:  /* Cross Transfer Conveyor (XTFRCNVR) */
      switch ( event_number ) {
        case DIVERTER_ACTREVENT2NUM:  /* ACTR2*'de_activate' */
          if ( 0 != ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_subtype )
          switch ( ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_object_id ) {
            case Diverter_MANSEQ_CLASS_NUMBER:  /* Manual Sequence (MANSEQ) */
              switch ( event_number ) {
              }
              break;
            case Diverter_AUTOSEQ_CLASS_NUMBER:  /* Automatic Sequence (AUTOSEQ) */
              switch ( event_number ) {
                case DIVERTER_ACTREVENT2NUM:  /* ACTR2*'de_activate' */
                  if ( 0 != ((Diverter_AUTOSEQ *) ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_subtype)->R9_subtype )
                  switch ( ((Diverter_AUTOSEQ *) ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_subtype)->R9_object_id ) {
                    case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
                      switch ( event_number ) {
                      }
                      break;
                    case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
                      switch ( event_number ) {
                      }
                      break;
                  }
                case DIVERTER_ACTREVENT1NUM:  /* ACTR1*'activate' */
                  if ( 0 != ((Diverter_AUTOSEQ *) ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_subtype)->R9_subtype )
                  switch ( ((Diverter_AUTOSEQ *) ((Diverter_XTFRCNVR *) p_actr->R5_subtype)->R8_subtype)->R9_object_id ) {
                    case Diverter_CLX1DCGSEQ_CLASS_NUMBER:  /* Conveyor Length Rollout (CLX1DCGSEQ) */
                      switch ( event_number ) {
                      }
                      break;
                    case Diverter_CLX2HRDCGSEQ_CLASS_NUMBER:  /* Hesitating Rollout (CLX2HRDCGSEQ) */
                      switch ( event_number ) {
                      }
                      break;
                  }
              }
              break;
            case Diverter_MOTINH_CLASS_NUMBER:  /* Motion Inhibited (MOTINH) */
              switch ( event_number ) {
              }
              break;
          }
        /* transition (or cant happen) events in subtype */
        case DIVERTER_ACTREVENT1NUM:  /* ACTR1*'activate' */
          event = Escher_ModifyxtUMLEvent( event, &Diverter_XTFRCNVRevent_ACTR_PE1c );
          SetEventTargetInstance( event, p_actr->R5_subtype );
          Diverter_XTFRCNVR_Dispatch( event );
          break; /* after transition */
      }
      break;
  }
}


