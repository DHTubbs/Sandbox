/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTPKT_class.h
 *
 * Class:       Divert Packet  (DVRTPKT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_DVRTPKT_CLASS_H
#define DIVERTER_DVRTPKT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Divert Packet  (DVRTPKT)
 */
struct Diverter_DVRTPKT {

  /* application analysis class attributes */
  i_t Id;  /* * Id */
  Diverter_Divert_Packet_t type;  /* - type */
  i_t leading_edge_position;  /* - leading_edge_position */
  i_t trailing_edge_position;  /* - trailing_edge_position */
  i_t web_caliper;  /* - web_caliper */

  /* relationship storage */
  Diverter_DVRTPKT * DVRTPKT_R1_next;
  Diverter_DVRTPKT * DVRTPKT_R1_prev;
  Escher_ObjectSet_s DVRTSHT_R2_consists_of;
  Diverter_DVRTBAY * DVRTBAY_R4;
};
void Diverter_DVRTPKT_op_SheetDiverted( Diverter_DVRTPKT * );
void Diverter_DVRTPKT_op_UpdatePosition( Diverter_DVRTPKT *, const i_t, const i_t );

      
/*
 * R1 is Simple Reflexive:  0..1:0..1
 *  Formalizing DVRTPKT next participant
 *  Participant DVRTPKT prev formalizer
 */
/* Navigation phrase:  R1.'next' */
void Diverter_DVRTPKT_R1_Link_next( Diverter_DVRTPKT *, Diverter_DVRTPKT * );
void Diverter_DVRTPKT_R1_Unlink_next( Diverter_DVRTPKT *, Diverter_DVRTPKT * );
/* Navigation phrase:  R1.'prev' */
void Diverter_DVRTPKT_R1_Link_prev( Diverter_DVRTPKT *, Diverter_DVRTPKT * );
void Diverter_DVRTPKT_R1_Unlink_prev( Diverter_DVRTPKT *, Diverter_DVRTPKT * );
#define Diverter_DVRTSHT_R2_From_DVRTPKT_consists_of( DVRTPKT ) ( &((DVRTPKT)->DVRTSHT_R2_consists_of) )
void Diverter_DVRTPKT_R4_Link_receives_next( Diverter_DVRTBAY *, Diverter_DVRTPKT * );
void Diverter_DVRTPKT_R4_Unlink_receives_next( Diverter_DVRTBAY *, Diverter_DVRTPKT * );


#define Diverter_DVRTPKT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_DVRTPKT_extent;

/*
 * class-based event:  DVRTPKT_A1:'calc_new_position'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define Diverter_DVRTPKT_CB_STATE_1 1  /* state [1]:  (Tracking) */

/*
 * enumeration of state model event numbers
 */

extern void Diverter_DVRTPKT_CBDispatch( Escher_xtUMLEvent_t * );


#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_DVRTPKT_CLASS_H */


