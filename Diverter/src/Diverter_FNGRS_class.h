/*----------------------------------------------------------------------------
 * File:  Diverter_FNGRS_class.h
 *
 * Class:       Fingers  (FNGRS)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_FNGRS_CLASS_H
#define DIVERTER_FNGRS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Fingers  (FNGRS)
 */
struct Diverter_FNGRS {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t position;  /* - position */
  i_t lower_time;  /* - lower_time */
  i_t raise_time;  /* - raise_time */

  /* relationship storage */
  Diverter_ACTR * ACTR_R5;
};

void Diverter_FNGRS_R5_Link( Diverter_ACTR *, Diverter_FNGRS * );
/* Note:  No ACTR<-R5->FNGRS unrelate accessor needed.  */


#define Diverter_FNGRS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_FNGRS_extent;

/*
 * instance event:  ACTR2*:'de_activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_FNGRSevent_ACTR_PE2;
extern const Escher_xtUMLEventConstant_t Diverter_FNGRSevent_ACTR_PE2c;

/*
 * instance event:  ACTR1*:'activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_FNGRSevent_ACTR_PE1;
extern const Escher_xtUMLEventConstant_t Diverter_FNGRSevent_ACTR_PE1c;

/*
 * union of events targeted towards 'FNGRS' state machine
 */
typedef union {
  Diverter_FNGRSevent_ACTR_PE2 fngrs2_1;  
  Diverter_FNGRSevent_ACTR_PE1 fngrs1_2;  
} Diverter_FNGRS_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_FNGRS_STATE_1 1  /* state [1]:  (Raised) */
#define Diverter_FNGRS_STATE_2 2  /* state [2]:  (Lowered) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_FNGRSEVENT_ACTR_PE1NUM 0  /* ACTR1*:'activate' */
#define DIVERTER_FNGRSEVENT_ACTR_PE2NUM 1  /* ACTR2*:'de_activate' */
extern void Diverter_FNGRS_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_FNGRS_CLASS_H */


