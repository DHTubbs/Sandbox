/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_FLT_class.c
 *
 * Class:       Fault  (FLT)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "VelocityControlDrive_classes.h"


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s VelocityControlDrive_FLT_container[ VelocityControlDrive_FLT_MAX_EXTENT_SIZE ];
static VelocityControlDrive_FLT VelocityControlDrive_FLT_instances[ VelocityControlDrive_FLT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_VelocityControlDrive_FLT_extent = {
  {0}, {0}, &VelocityControlDrive_FLT_container[ 0 ],
  (Escher_iHandle_t) &VelocityControlDrive_FLT_instances,
  sizeof( VelocityControlDrive_FLT ), 0, VelocityControlDrive_FLT_MAX_EXTENT_SIZE
  };


