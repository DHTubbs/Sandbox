/*----------------------------------------------------------------------------
 * File:  Diverter_CLX2HRDCGSEQ_class.h
 *
 * Class:       Hesitating Rollout  (CLX2HRDCGSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_CLX2HRDCGSEQ_CLASS_H
#define DIVERTER_CLX2HRDCGSEQ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Hesitating Rollout  (CLX2HRDCGSEQ)
 */
struct Diverter_CLX2HRDCGSEQ {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id (R9) */
  i_t preliminary_move_time;  /* - preliminary_move_time */

  /* relationship storage */
  Diverter_AUTOSEQ * AUTOSEQ_R9;
};

void Diverter_CLX2HRDCGSEQ_R9_Link( Diverter_AUTOSEQ *, Diverter_CLX2HRDCGSEQ * );
void Diverter_CLX2HRDCGSEQ_R9_Unlink( Diverter_AUTOSEQ *, Diverter_CLX2HRDCGSEQ * );


#define Diverter_CLX2HRDCGSEQ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_CLX2HRDCGSEQ_extent;

/*
 * instance event:  CLX2HRDCGSEQ2:'jog_time_expired'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  AUTOSEQ11*:'initiate_auto_seq'
 * Note:  Event is mapped from polymorphic event AUTOSEQ::AUTOSEQ11. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX2HRDCGSEQevent_AUTOSEQ_PE11;
extern const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_AUTOSEQ_PE11c;

/*
 * instance event:  XTFRCNVR4*:'jog_complete'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR4. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4;
extern const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4c;

/*
 * instance event:  XTFRCNVR9*:'motor_stopped'
 * Note:  Event is mapped from polymorphic event XTFRCNVR::XTFRCNVR9. */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9;
extern const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c;

/*
 * union of events targeted towards 'CLX2HRDCGSEQ' state machine
 */
typedef union {
  Diverter_CLX2HRDCGSEQevent_AUTOSEQ_PE11 clx2hrdcgseq11_1;  
  Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4 clx2hrdcgseq4_2;  
  Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9 clx2hrdcgseq9_3;  
} Diverter_CLX2HRDCGSEQ_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_CLX2HRDCGSEQ_STATE_1 1  /* state [1]:  (Waiting) */
#define Diverter_CLX2HRDCGSEQ_STATE_2 2  /* state [2]:  (FirstMove) */
#define Diverter_CLX2HRDCGSEQ_STATE_3 3  /* state [3]:  (BackupMove) */
#define Diverter_CLX2HRDCGSEQ_STATE_4 4  /* state [4]:  (FullLengthMove) */
#define Diverter_CLX2HRDCGSEQ_STATE_5 5  /* state [5]:  (ConveyorEmpty) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_CLX2HRDCGSEQEVENT_XTFRCNVR_PE9NUM 0  /* XTFRCNVR9*:'motor_stopped' */
#define DIVERTER_CLX2HRDCGSEQEVENT_XTFRCNVR_PE4NUM 1  /* XTFRCNVR4*:'jog_complete' */
#define DIVERTER_CLX2HRDCGSEQEVENT_AUTOSEQ_PE11NUM 2  /* AUTOSEQ11*:'initiate_auto_seq' */
extern void Diverter_CLX2HRDCGSEQ_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_CLX2HRDCGSEQ_CLASS_H */


