/*----------------------------------------------------------------------------
 * File:  Diverter_ARBLST_class.h
 *
 * Class:       Air Blast  (ARBLST)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_ARBLST_CLASS_H
#define DIVERTER_ARBLST_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Air Blast  (ARBLST)
 */
struct Diverter_ARBLST {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t position;  /* - position */
  i_t blast_duration;  /* - blast_duration */

  /* relationship storage */
  Diverter_ACTR * ACTR_R5;
};

void Diverter_ARBLST_R5_Link( Diverter_ACTR *, Diverter_ARBLST * );
/* Note:  No ACTR<-R5->ARBLST unrelate accessor needed.  */


#define Diverter_ARBLST_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_ARBLST_extent;

/*
 * instance event:  ACTR1*:'activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_ARBLSTevent_ACTR_PE1;
extern const Escher_xtUMLEventConstant_t Diverter_ARBLSTevent_ACTR_PE1c;

/*
 * instance event:  ACTR2*:'de_activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_ARBLSTevent_ACTR_PE2;
extern const Escher_xtUMLEventConstant_t Diverter_ARBLSTevent_ACTR_PE2c;

/*
 * union of events targeted towards 'ARBLST' state machine
 */
typedef union {
  Diverter_ARBLSTevent_ACTR_PE1 arblst1_1;  
  Diverter_ARBLSTevent_ACTR_PE2 arblst2_2;  
} Diverter_ARBLST_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_ARBLST_STATE_1 1  /* state [1]:  (Off) */
#define Diverter_ARBLST_STATE_2 2  /* state [2]:  (On) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_ARBLSTEVENT_ACTR_PE2NUM 0  /* ACTR2*:'de_activate' */
#define DIVERTER_ARBLSTEVENT_ACTR_PE1NUM 1  /* ACTR1*:'activate' */
extern void Diverter_ARBLST_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_ARBLST_CLASS_H */


