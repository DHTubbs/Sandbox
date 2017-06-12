/*----------------------------------------------------------------------------
 * File:  Diverter_DVTPAN_class.h
 *
 * Class:       Diverter Pan  (DVTPAN)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_DVTPAN_CLASS_H
#define DIVERTER_DVTPAN_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Diverter Pan  (DVTPAN)
 */
struct Diverter_DVTPAN {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t position;  /* - position */

  /* relationship storage */
  Diverter_ACTR * ACTR_R5;
};

void Diverter_DVTPAN_R5_Link( Diverter_ACTR *, Diverter_DVTPAN * );
/* Note:  No ACTR<-R5->DVTPAN unrelate accessor needed.  */


#define Diverter_DVTPAN_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_DVTPAN_extent;

/*
 * instance event:  ACTR2*:'de_activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR2. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_DVTPANevent_ACTR_PE2;
extern const Escher_xtUMLEventConstant_t Diverter_DVTPANevent_ACTR_PE2c;

/*
 * instance event:  ACTR1*:'activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_DVTPANevent_ACTR_PE1;
extern const Escher_xtUMLEventConstant_t Diverter_DVTPANevent_ACTR_PE1c;

/*
 * instance event:  DVTPAN3:'LowerPan'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * union of events targeted towards 'DVTPAN' state machine
 */
typedef union {
  Diverter_DVTPANevent_ACTR_PE2 dvtpan2_1;  
  Diverter_DVTPANevent_ACTR_PE1 dvtpan1_2;  
} Diverter_DVTPAN_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_DVTPAN_STATE_1 1  /* state [1]:  (Initial) */
#define Diverter_DVTPAN_STATE_2 2  /* state [2]:  (PanUp) */
#define Diverter_DVTPAN_STATE_3 3  /* state [3]:  (PanDown) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_DVTPANEVENT_ACTR_PE1NUM 0  /* ACTR1*:'activate' */
#define DIVERTER_DVTPANEVENT_ACTR_PE2NUM 1  /* ACTR2*:'de_activate' */
extern void Diverter_DVTPAN_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_DVTPAN_CLASS_H */


