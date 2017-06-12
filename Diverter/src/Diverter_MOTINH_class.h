/*----------------------------------------------------------------------------
 * File:  Diverter_MOTINH_class.h
 *
 * Class:       Motion Inhibited  (MOTINH)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_MOTINH_CLASS_H
#define DIVERTER_MOTINH_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Motion Inhibited  (MOTINH)
 */
struct Diverter_MOTINH {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t Id;  /* * Id (R8) */

  /* relationship storage */
  Diverter_XTFRCNVR * XTFRCNVR_R8;
};

void Diverter_MOTINH_R8_Link( Diverter_XTFRCNVR *, Diverter_MOTINH * );
void Diverter_MOTINH_R8_Unlink( Diverter_XTFRCNVR *, Diverter_MOTINH * );


#define Diverter_MOTINH_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_MOTINH_extent;


/* WARNING! No states defined for state model */
/* note:  no events defined in state model */
extern void Diverter_MOTINH_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_MOTINH_CLASS_H */


