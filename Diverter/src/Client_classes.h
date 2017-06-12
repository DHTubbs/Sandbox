/*----------------------------------------------------------------------------
 * File:  Client_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  Client
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CLIENT_CLASSES_H
#define CLIENT_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  Client
 */
extern Escher_Extent_t * const Client_class_info[];
void Client_execute_initialization( void );

#define Client_STATE_MODELS 0
/* Define constants to map to class numbers.  */
#define Client_JS_CLASS_NUMBER 0
#define Client_MAX_CLASS_NUMBERS 1

/* Provide a map of classes to task numbers.  */
#define Client_TASK_NUMBERS 

#define Client_class_dispatchers

/* Provide definitions of the shapes of the class structures.  */

typedef struct Client_JS Client_JS;

/* union of class declarations so we may derive largest class size */
#define Client_CLASS_U \
  char Client_dummy;\

/*
 * UML Domain Functions (Synchronous Services)
 */
void Client_Init( void );
void Client_JogDriveSide( void );
void Client_JogOperatorSide( void );
void Client_StopJogging( void );


#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "Client.h"
#include "Client_JS_class.h"
#ifdef	__cplusplus
}
#endif
#endif  /* CLIENT_CLASSES_H */

