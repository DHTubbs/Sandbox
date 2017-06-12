/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTSTK_class.c
 *
 * Class:       Divert Stack  (DVRTSTK)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE DVRTBAY TO DVRTSTK ACROSS R6
 */
void
Diverter_DVRTSTK_R6_Link_creates( Diverter_DVRTBAY * part, Diverter_DVRTSTK * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTSTK", "Diverter_DVRTSTK_R6_Link_creates" );
    return;
  }
  /* Note:  DVRTSTK->DVRTBAY[R6] not navigated */
  part->DVRTSTK_R6_creates = form;
}

/*
 * UNRELATE DVRTBAY FROM DVRTSTK ACROSS R6
 */
void
Diverter_DVRTSTK_R6_Unlink_creates( Diverter_DVRTBAY * part, Diverter_DVRTSTK * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTSTK", "Diverter_DVRTSTK_R6_Unlink_creates" );
    return;
  }
  /* Note:  DVRTSTK->DVRTBAY[R6] not navigated */
  part->DVRTSTK_R6_creates = 0;
}

/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_DVRTSTK_container[ Diverter_DVRTSTK_MAX_EXTENT_SIZE ];
static Diverter_DVRTSTK Diverter_DVRTSTK_instances[ Diverter_DVRTSTK_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_DVRTSTK_extent = {
  {0}, {0}, &Diverter_DVRTSTK_container[ 0 ],
  (Escher_iHandle_t) &Diverter_DVRTSTK_instances,
  sizeof( Diverter_DVRTSTK ), 0, Diverter_DVRTSTK_MAX_EXTENT_SIZE
  };


