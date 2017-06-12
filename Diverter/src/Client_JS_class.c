/*----------------------------------------------------------------------------
 * File:  Client_JS_class.c
 *
 * Class:       xtfr_jog_switch  (JS)
 * Component:   Client
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "Client_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Client_JS_container[ Client_JS_MAX_EXTENT_SIZE ];
static Client_JS Client_JS_instances[ Client_JS_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Client_JS_extent = {
  {0}, {0}, &Client_JS_container[ 0 ],
  (Escher_iHandle_t) &Client_JS_instances,
  sizeof( Client_JS ), 0, Client_JS_MAX_EXTENT_SIZE
  };


