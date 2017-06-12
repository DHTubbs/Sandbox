/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_DE_class.h
 *
 * Class:       Drive Enable  (DE)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_DE_CLASS_H
#define VELOCITYCONTROLDRIVE_DE_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Drive Enable  (DE)
 */
struct VelocityControlDrive_DE {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  i_t disable_delay;  /* - disable_delay */
  Escher_Timer_t * disable_timer;  /* - disable_timer */

  /* relationship storage */
  /* Note:  No storage needed for DE->MC[R2] */
};



#define VelocityControlDrive_DE_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_VelocityControlDrive_DE_extent;

/*
 * instance event:  DE1:'enable_drive'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_DEevent1;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent1c;

/*
 * instance event:  DE2:'disable_drive'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_DEevent2;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent2c;

/*
 * instance event:  DE3:'drive_signals_done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_DEevent3;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent3c;

/*
 * instance event:  DE4:'delay_timer_expired'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_DEevent4;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_DEevent4c;

/*
 * union of events targeted towards 'DE' state machine
 */
typedef union {
  VelocityControlDrive_DEevent1 de1_1;  
  VelocityControlDrive_DEevent2 de2_2;  
  VelocityControlDrive_DEevent3 de3_3;  
  VelocityControlDrive_DEevent4 de4_4;  
} VelocityControlDrive_DE_Events_u;

/*
 * enumeration of state model states for class
 */
#define VelocityControlDrive_DE_STATE_1 1  /* state [1]:  (DriveDisabled) */
#define VelocityControlDrive_DE_STATE_2 2  /* state [2]:  (InitiateEnable) */
#define VelocityControlDrive_DE_STATE_3 3  /* state [3]:  (DriveEnabled) */
#define VelocityControlDrive_DE_STATE_4 4  /* state [4]:  (DisableDelay) */
#define VelocityControlDrive_DE_STATE_5 5  /* state [5]:  (InitiateDisable) */
/*
 * enumeration of state model event numbers
 */
#define VELOCITYCONTROLDRIVE_DEEVENT1NUM 0  /* DE1:'enable_drive' */
#define VELOCITYCONTROLDRIVE_DEEVENT2NUM 1  /* DE2:'disable_drive' */
#define VELOCITYCONTROLDRIVE_DEEVENT3NUM 2  /* DE3:'drive_signals_done' */
#define VELOCITYCONTROLDRIVE_DEEVENT4NUM 3  /* DE4:'delay_timer_expired' */
extern void VelocityControlDrive_DE_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* VELOCITYCONTROLDRIVE_DE_CLASS_H */


