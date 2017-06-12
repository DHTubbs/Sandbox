/*----------------------------------------------------------------------------
 * File:  Diverter_AUTOSEQ_class.h
 *
 * Class:       Automatic Sequence  (AUTOSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_AUTOSEQ_CLASS_H
#define DIVERTER_AUTOSEQ_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Automatic Sequence  (AUTOSEQ)
 */
struct Diverter_AUTOSEQ {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id (R8) */
  i_t time_to_run;  /* - time_to_run */
  Diverter_Motor_Direction_t motor_direction;  /* - motor_direction */

  /* relationship storage */
  Diverter_XTFRCNVR * XTFRCNVR_R8;
  void * R9_subtype;
  Escher_ClassNumber_t R9_object_id;
};

void Diverter_AUTOSEQ_R8_Link( Diverter_XTFRCNVR *, Diverter_AUTOSEQ * );
void Diverter_AUTOSEQ_R8_Unlink( Diverter_XTFRCNVR *, Diverter_AUTOSEQ * );

/* Accessors to AUTOSEQ[R9] subtypes */
#define Diverter_CLX1DCGSEQ_R9_From_AUTOSEQ( AUTOSEQ ) \
   ( (((AUTOSEQ)->R9_object_id) == Diverter_CLX1DCGSEQ_CLASS_NUMBER) ? \
     ((Diverter_CLX1DCGSEQ *)((AUTOSEQ)->R9_subtype)) : (0) )
#define Diverter_CLX2HRDCGSEQ_R9_From_AUTOSEQ( AUTOSEQ ) \
   ( (((AUTOSEQ)->R9_object_id) == Diverter_CLX2HRDCGSEQ_CLASS_NUMBER) ? \
     ((Diverter_CLX2HRDCGSEQ *)((AUTOSEQ)->R9_subtype)) : (0) )



#define Diverter_AUTOSEQ_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_AUTOSEQ_extent;

/*
 * instance event:  AUTOSEQ10:'auto_seq_cmplt'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  AUTOSEQ11:'initiate_auto_seq'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_AUTOSEQevent11;
extern const Escher_xtUMLEventConstant_t Diverter_AUTOSEQevent11c;

/*
 * union of events targeted towards 'AUTOSEQ' state machine
 */
typedef union {
  Diverter_AUTOSEQevent11 autoseq11_1;  /* polymorphic event - not consumed by AUTOSEQ */
} Diverter_AUTOSEQ_Events_u;

/* WARNING! No states defined for state model */
/*
 * enumeration of state model event numbers
 */

/*
 * Enumeration of polymorphic event numbers
 */
#define DIVERTER_AUTOSEQEVENT11NUM 0  /* AUTOSEQ11:'initiate_auto_seq' */
extern void Diverter_AUTOSEQ_Dispatch( Escher_xtUMLEvent_t * );
extern void Diverter_AUTOSEQ_R9PolymorphicEvent( const Diverter_AUTOSEQ * const, Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_AUTOSEQ_CLASS_H */


