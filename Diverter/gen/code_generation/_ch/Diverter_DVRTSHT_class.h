/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTSHT_class.h
 *
 * Class:       Divert Sheet  (DVRTSHT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_DVRTSHT_CLASS_H
#define DIVERTER_DVRTSHT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Divert Sheet  (DVRTSHT)
 */
struct Diverter_DVRTSHT {

  /* application analysis class attributes */
  i_t Id;  /* * Id */
  i_t position;  /* - position */
  i_t length;  /* - length */

  /* relationship storage */
  Diverter_DVRTPKT * DVRTPKT_R2;
  Escher_ObjectSet_s TRKPT_R3;
};
void Diverter_DVRTSHT_op_UpdatePosition( Diverter_DVRTSHT *, const i_t, const i_t );

/* xtUML WARNING:  DVRTPKT<-R2->>DVRTSHT never related!  */
/* Note:  DVRTPKT<-R2->>DVRTSHT unrelate accessor not needed */
#define Diverter_TRKPT_R3_From_DVRTSHT( DVRTSHT ) ( &((DVRTSHT)->TRKPT_R3) )


#define Diverter_DVRTSHT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_DVRTSHT_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_DVRTSHT_CLASS_H */


