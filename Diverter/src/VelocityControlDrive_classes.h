/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_CLASSES_H
#define VELOCITYCONTROLDRIVE_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  VelocityControlDrive
 */
extern Escher_Extent_t * const VelocityControlDrive_class_info[];
extern const EventTaker_t VelocityControlDrive_EventDispatcher[];
void VelocityControlDrive_execute_initialization( void );

#define VelocityControlDrive_STATE_MODELS 5
/* Define constants to map to class numbers.  */
#define VelocityControlDrive_MI_CLASS_NUMBER 0
#define VelocityControlDrive_DE_CLASS_NUMBER 1
#define VelocityControlDrive_MC_CLASS_NUMBER 2
#define VelocityControlDrive_MTRDRV_CLASS_NUMBER 3
#define VelocityControlDrive_MI_CLASS_NUMBER_CB 4
#define VelocityControlDrive_FLT_CLASS_NUMBER 5
#define VelocityControlDrive_MAX_CLASS_NUMBERS 6

/* Provide a map of classes to task numbers.  */
#define VelocityControlDrive_TASK_NUMBERS  0, 0, 0, 0, 0

#define VelocityControlDrive_class_dispatchers\
  0,\
  VelocityControlDrive_DE_Dispatch,\
  VelocityControlDrive_MC_Dispatch,\
  VelocityControlDrive_MTRDRV_Dispatch,\
  VelocityControlDrive_MI_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct VelocityControlDrive_MI VelocityControlDrive_MI;
typedef struct VelocityControlDrive_DE VelocityControlDrive_DE;
typedef struct VelocityControlDrive_MC VelocityControlDrive_MC;
typedef struct VelocityControlDrive_MTRDRV VelocityControlDrive_MTRDRV;
typedef struct VelocityControlDrive_MI_CB VelocityControlDrive_MI_CB;
typedef struct VelocityControlDrive_FLT VelocityControlDrive_FLT;

/* union of class declarations so we may derive largest class size */
#define VelocityControlDrive_CLASS_U \
  char VelocityControlDrive_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void VelocityControlDrive_Init( void );


#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "VelocityControlDrive.h"
#include "VelocityControlDrive_MI_class.h"
#include "VelocityControlDrive_DE_class.h"
#include "VelocityControlDrive_MC_class.h"
#include "VelocityControlDrive_FLT_class.h"
#include "VelocityControlDrive_MTRDRV_class.h"
/*
 * roll-up of all events (with their parameters) for component VelocityControlDrive
 */
typedef union {
  VelocityControlDrive_DE_Events_u VelocityControlDrive_DE_Events_u_namespace;
  VelocityControlDrive_MC_Events_u VelocityControlDrive_MC_Events_u_namespace;
  VelocityControlDrive_MI_CB_Events_u VelocityControlDrive_MI_CB_Events_u_namespace;
} VelocityControlDrive_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* VELOCITYCONTROLDRIVE_CLASSES_H */

