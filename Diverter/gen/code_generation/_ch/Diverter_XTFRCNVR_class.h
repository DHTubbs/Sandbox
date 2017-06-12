/*----------------------------------------------------------------------------
 * File:  Diverter_XTFRCNVR_class.h
 *
 * Class:       Cross Transfer Conveyor  (XTFRCNVR)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_XTFRCNVR_CLASS_H
#define DIVERTER_XTFRCNVR_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Cross Transfer Conveyor  (XTFRCNVR)
 */
struct Diverter_XTFRCNVR {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id */
  i_t stopping_time;  /* - stopping_time */
  Diverter_Motor_Direction_t drive_side;  /* - drive_side */

  /* relationship storage */
  Diverter_ACTR * ACTR_R5;
  /* Note:  No storage needed for XTFRCNVR->DVRTBAY[R7] */
  void * R8_subtype;
  Escher_ClassNumber_t R8_object_id;
};
Diverter_Motor_Direction_t Diverter_XTFRCNVR_op_GetMotorDirection( Diverter_XTFRCNVR *, const Diverter_Machine_Side_t );

void Diverter_XTFRCNVR_R5_Link( Diverter_ACTR *, Diverter_XTFRCNVR * );
/* Note:  No ACTR<-R5->XTFRCNVR unrelate accessor needed.  */
void Diverter_XTFRCNVR_R7_Link( Diverter_DVRTBAY *, Diverter_XTFRCNVR * );
/* Note:  DVRTBAY<-R7->XTFRCNVR unrelate accessor not needed */

/* Accessors to XTFRCNVR[R8] subtypes */
#define Diverter_MANSEQ_R8_From_XTFRCNVR( XTFRCNVR ) \
   ( (((XTFRCNVR)->R8_object_id) == Diverter_MANSEQ_CLASS_NUMBER) ? \
     ((Diverter_MANSEQ *)((XTFRCNVR)->R8_subtype)) : (0) )
#define Diverter_AUTOSEQ_R8_From_XTFRCNVR( XTFRCNVR ) \
   ( (((XTFRCNVR)->R8_object_id) == Diverter_AUTOSEQ_CLASS_NUMBER) ? \
     ((Diverter_AUTOSEQ *)((XTFRCNVR)->R8_subtype)) : (0) )
#define Diverter_MOTINH_R8_From_XTFRCNVR( XTFRCNVR ) \
   ( (((XTFRCNVR)->R8_object_id) == Diverter_MOTINH_CLASS_NUMBER) ? \
     ((Diverter_MOTINH *)((XTFRCNVR)->R8_subtype)) : (0) )



#define Diverter_XTFRCNVR_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_XTFRCNVR_extent;

/*
 * instance event:  XTFRCNVR3:'jog'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  Diverter_Machine_Side_t p_direction; /* direction */
} Diverter_XTFRCNVRevent3;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent3c;

/*
 * instance event:  XTFRCNVR4:'jog_complete'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent4;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent4c;

/*
 * instance event:  XTFRCNVR7:'automatic_sequence_cmplt'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent7;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent7c;

/*
 * instance event:  XTFRCNVR6:'discharge'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  Diverter_Divert_Conv_Discharge_Alg_t p_control_alg; /* control_alg */
  Diverter_Machine_Side_t p_direction; /* direction */
} Diverter_XTFRCNVRevent6;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent6c;

/*
 * instance event:  ACTR1*:'activate'
 * Note:  Event is mapped from polymorphic event ACTR::ACTR1. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent_ACTR_PE1;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent_ACTR_PE1c;

/*
 * instance event:  XTFRCNVR5:'drive_rdy_for_inst'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent5;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent5c;

/*
 * instance event:  XTFRCNVR8:'sequence_aborted'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  XTFRCNVR9:'motor_stopped'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent9;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent9c;

/*
 * instance event:  XTFRCNVR10:'enable_control'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_XTFRCNVRevent10;
extern const Escher_xtUMLEventConstant_t Diverter_XTFRCNVRevent10c;

/*
 * union of events targeted towards 'XTFRCNVR' state machine
 */
typedef union {
  Diverter_XTFRCNVRevent3 xtfrcnvr3_1;  /* polymorphic event - not consumed by XTFRCNVR */
  Diverter_XTFRCNVRevent4 xtfrcnvr4_2;  /* polymorphic event - not consumed by XTFRCNVR */
  Diverter_XTFRCNVRevent7 xtfrcnvr7_3;  
  Diverter_XTFRCNVRevent6 xtfrcnvr6_4;  
  Diverter_XTFRCNVRevent_ACTR_PE1 xtfrcnvr1_5;  
  Diverter_XTFRCNVRevent5 xtfrcnvr5_6;  /* polymorphic event - not consumed by XTFRCNVR */
  Diverter_XTFRCNVRevent9 xtfrcnvr9_7;  /* polymorphic event - not consumed by XTFRCNVR */
  Diverter_XTFRCNVRevent10 xtfrcnvr10_8;  /* polymorphic event - not consumed by XTFRCNVR */
} Diverter_XTFRCNVR_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_XTFRCNVR_STATE_1 1  /* state [1]:  (ManualControl) */
#define Diverter_XTFRCNVR_STATE_2 2  /* state [2]:  (MotionInhibited) */
#define Diverter_XTFRCNVR_STATE_3 3  /* state [3]:  (AutomaticControl) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_XTFRCNVREVENT6NUM 0  /* XTFRCNVR6:'discharge' */
#define DIVERTER_XTFRCNVREVENT7NUM 1  /* XTFRCNVR7:'automatic_sequence_cmplt' */
#define DIVERTER_XTFRCNVREVENT_ACTR_PE1NUM 2  /* ACTR1*:'activate' */

/*
 * Enumeration of polymorphic event numbers
 */
#define DIVERTER_XTFRCNVREVENT3NUM 3  /* XTFRCNVR3:'jog' */
#define DIVERTER_XTFRCNVREVENT4NUM 4  /* XTFRCNVR4:'jog_complete' */
#define DIVERTER_XTFRCNVREVENT5NUM 5  /* XTFRCNVR5:'drive_rdy_for_inst' */
#define DIVERTER_XTFRCNVREVENT9NUM 6  /* XTFRCNVR9:'motor_stopped' */
#define DIVERTER_XTFRCNVREVENT10NUM 7  /* XTFRCNVR10:'enable_control' */
extern void Diverter_XTFRCNVR_Dispatch( Escher_xtUMLEvent_t * );
extern void Diverter_XTFRCNVR_R8PolymorphicEvent( const Diverter_XTFRCNVR * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_XTFRCNVR_CLASS_H */


