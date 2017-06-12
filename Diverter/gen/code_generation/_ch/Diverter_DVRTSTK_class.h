/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTSTK_class.h
 *
 * Class:       Divert Stack  (DVRTSTK)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_DVRTSTK_CLASS_H
#define DIVERTER_DVRTSTK_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Divert Stack  (DVRTSTK)
 */
struct Diverter_DVRTSTK {

  /* application analysis class attributes */
  Diverter_Divert_Packet_t stack_type;  /* - stack_type */
  i_t number_of_sheets;  /* - number_of_sheets */
  i_t stack_thickness;  /* - stack_thickness */

  /* relationship storage */
  /* Note:  No storage needed for DVRTSTK->DVRTBAY[R6] */
};

void Diverter_DVRTSTK_R6_Link_creates( Diverter_DVRTBAY *, Diverter_DVRTSTK * );
void Diverter_DVRTSTK_R6_Unlink_creates( Diverter_DVRTBAY *, Diverter_DVRTSTK * );


#define Diverter_DVRTSTK_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_DVRTSTK_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_DVRTSTK_CLASS_H */


