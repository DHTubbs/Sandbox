/*----------------------------------------------------------------------------
 * File:  Diverter_ACTR_class.h
 *
 * Class:       Actuator  (ACTR)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_ACTR_CLASS_H
#define DIVERTER_ACTR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Actuator  (ACTR)
 */
struct Diverter_ACTR {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id */

  /* relationship storage */
  Escher_ObjectSet_s TRKPT_R3;
  void * R5_subtype;
  Escher_ClassNumber_t R5_object_id;
};

#define Diverter_TRKPT_R3_From_ACTR( ACTR ) ( &((ACTR)->TRKPT_R3) )

/* Accessors to ACTR[R5] subtypes */
/* Note:  ACTR->FNGRS[R5] not navigated */
/* Note:  ACTR->DVTPAN[R5] not navigated */
/* Note:  ACTR->ARBLST[R5] not navigated */
/* Note:  ACTR->XTFRCNVR[R5] not navigated */



#define Diverter_ACTR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_ACTR_extent;

/*
 * instance event:  ACTR2:'de_activate'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_ACTRevent2;
extern const Escher_xtUMLEventConstant_t Diverter_ACTRevent2c;

/*
 * instance event:  ACTR1:'activate'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_ACTRevent1;
extern const Escher_xtUMLEventConstant_t Diverter_ACTRevent1c;

/*
 * union of events targeted towards 'ACTR' state machine
 */
typedef union {
  Diverter_ACTRevent2 actr2_1;  /* polymorphic event - not consumed by ACTR */
  Diverter_ACTRevent1 actr1_2;  /* polymorphic event - not consumed by ACTR */
} Diverter_ACTR_Events_u;

/* WARNING! No states defined for state model */

/*
 * Enumeration of polymorphic event numbers
 */
#define DIVERTER_ACTREVENT2NUM 0  /* ACTR2:'de_activate' */
#define DIVERTER_ACTREVENT1NUM 1  /* ACTR1:'activate' */
extern void Diverter_ACTR_Dispatch( Escher_xtUMLEvent_t * );
extern void Diverter_ACTR_R5PolymorphicEvent( const Diverter_ACTR * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_ACTR_CLASS_H */


