/*----------------------------------------------------------------------------
 * File:  Diverter_MANSEQ_class.h
 *
 * Class:       Manual Sequence  (MANSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_MANSEQ_CLASS_H
#define DIVERTER_MANSEQ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Manual Sequence  (MANSEQ)
 */
struct Diverter_MANSEQ {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id (R8) */
  Diverter_Machine_Side_t jog_direction;  /* - jog_direction */

  /* relationship storage */
  Diverter_XTFRCNVR * XTFRCNVR_R8;
};

void Diverter_MANSEQ_R8_Link( Diverter_XTFRCNVR *, Diverter_MANSEQ * );
void Diverter_MANSEQ_R8_Unlink( Diverter_XTFRCNVR *, Diverter_MANSEQ * );


#define Diverter_MANSEQ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_MANSEQ_extent;

/*
 * instance event:  XTFRCNVR3*:'jog'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR3. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  Diverter_Machine_Side_t p_direction; /* direction */
} Diverter_MANSEQevent_XTFRCNVR_PE3;
extern const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE3c;

/*
 * instance event:  XTFRCNVR4*:'jog_complete'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR4. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_MANSEQevent_XTFRCNVR_PE4;
extern const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE4c;

/*
 * instance event:  XTFRCNVR5*:'drive_rdy_for_inst'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR5. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_MANSEQevent_XTFRCNVR_PE5;
extern const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE5c;

/*
 * instance event:  XTFRCNVR9*:'motor_stopped'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR9. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_MANSEQevent_XTFRCNVR_PE9;
extern const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE9c;

/*
 * instance event:  XTFRCNVR10*:'enable_control'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR10. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_MANSEQevent_XTFRCNVR_PE10;
extern const Escher_xtUMLEventConstant_t Diverter_MANSEQevent_XTFRCNVR_PE10c;

/*
 * union of events targeted towards 'MANSEQ' state machine
 */
typedef union {
  Diverter_MANSEQevent_XTFRCNVR_PE3 manseq3_1;  
  Diverter_MANSEQevent_XTFRCNVR_PE4 manseq4_2;  
  Diverter_MANSEQevent_XTFRCNVR_PE5 manseq10_3;  
  Diverter_MANSEQevent_XTFRCNVR_PE9 manseq9_4;  
  Diverter_MANSEQevent_XTFRCNVR_PE10 manseq10_5;  
} Diverter_MANSEQ_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_MANSEQ_STATE_1 1  /* state [1]:  (Stopped) */
#define Diverter_MANSEQ_STATE_2 2  /* state [2]:  (InitiateJog) */
#define Diverter_MANSEQ_STATE_3 3  /* state [3]:  (ConfirmedMoving) */
#define Diverter_MANSEQ_STATE_4 4  /* state [4]:  (InitiateStop) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_MANSEQEVENT_XTFRCNVR_PE10NUM 0  /* XTFRCNVR10*:'enable_control' */
#define DIVERTER_MANSEQEVENT_XTFRCNVR_PE9NUM 1  /* XTFRCNVR9*:'motor_stopped' */
#define DIVERTER_MANSEQEVENT_XTFRCNVR_PE5NUM 2  /* XTFRCNVR5*:'drive_rdy_for_inst' */
#define DIVERTER_MANSEQEVENT_XTFRCNVR_PE4NUM 3  /* XTFRCNVR4*:'jog_complete' */
#define DIVERTER_MANSEQEVENT_XTFRCNVR_PE3NUM 4  /* XTFRCNVR3*:'jog' */
extern void Diverter_MANSEQ_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_MANSEQ_CLASS_H */


