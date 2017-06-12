/*----------------------------------------------------------------------------
 * File:  Diverter_CLX1DCGSEQ_class.h
 *
 * Class:       Conveyor Length Rollout  (CLX1DCGSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_CLX1DCGSEQ_CLASS_H
#define DIVERTER_CLX1DCGSEQ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Conveyor Length Rollout  (CLX1DCGSEQ)
 */
struct Diverter_CLX1DCGSEQ {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id (R9) */

  /* relationship storage */
  Diverter_AUTOSEQ * AUTOSEQ_R9;
};

void Diverter_CLX1DCGSEQ_R9_Link( Diverter_AUTOSEQ *, Diverter_CLX1DCGSEQ * );
void Diverter_CLX1DCGSEQ_R9_Unlink( Diverter_AUTOSEQ *, Diverter_CLX1DCGSEQ * );


#define Diverter_CLX1DCGSEQ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_CLX1DCGSEQ_extent;

/*
 * instance event:  CLX1DCGSEQ3:'jog_time_expired'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  AUTOSEQ11*:'initiate_auto_seq'
 * Note:  Event is mapped from polymorphic event AUTOSEQ::AUTOSEQ11. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX1DCGSEQevent_AUTOSEQ_PE11;
extern const Escher_xtUMLEventConstant_t Diverter_CLX1DCGSEQevent_AUTOSEQ_PE11c;

/*
 * instance event:  XTFRCNVR4*:'jog_complete'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR4. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX1DCGSEQevent_XTFRCNVR_PE4;
extern const Escher_xtUMLEventConstant_t Diverter_CLX1DCGSEQevent_XTFRCNVR_PE4c;

/*
 * instance event:  XTFRCNVR9*:'motor_stopped'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR9. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9;
extern const Escher_xtUMLEventConstant_t Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9c;

/*
 * union of events targeted towards 'CLX1DCGSEQ' state machine
 */
typedef union {
  Diverter_CLX1DCGSEQevent_AUTOSEQ_PE11 clx1dcgseq11_1;  
  Diverter_CLX1DCGSEQevent_XTFRCNVR_PE4 clx1dcgseq4_2;  
  Diverter_CLX1DCGSEQevent_XTFRCNVR_PE9 clx1dcgseq9_3;  
} Diverter_CLX1DCGSEQ_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_CLX1DCGSEQ_STATE_1 1  /* state [1]:  (Waiting) */
#define Diverter_CLX1DCGSEQ_STATE_2 2  /* state [2]:  (InitiatingConveyorJog) */
#define Diverter_CLX1DCGSEQ_STATE_3 3  /* state [3]:  (MotorStopConfirmed) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_CLX1DCGSEQEVENT_XTFRCNVR_PE9NUM 0  /* XTFRCNVR9*:'motor_stopped' */
#define DIVERTER_CLX1DCGSEQEVENT_XTFRCNVR_PE4NUM 1  /* XTFRCNVR4*:'jog_complete' */
#define DIVERTER_CLX1DCGSEQEVENT_AUTOSEQ_PE11NUM 2  /* AUTOSEQ11*:'initiate_auto_seq' */
extern void Diverter_CLX1DCGSEQ_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_CLX1DCGSEQ_CLASS_H */


