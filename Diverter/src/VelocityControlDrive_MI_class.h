/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MI_class.h
 *
 * Class:       Motion Instruction  (MI)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_MI_CLASS_H
#define VELOCITYCONTROLDRIVE_MI_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Motion Instruction  (MI)
 */
struct VelocityControlDrive_MI {

  /* application analysis class attributes */
  Diverter_Motor_Direction_t direction;  /* - direction */
  i_t velocity;  /* - velocity */
  i_t acceleration;  /* - acceleration */
  i_t duration;  /* - duration */
  bool stop1;  /* - stop1 */

  /* relationship storage */
  /* Note:  No storage needed for MI->MC[R1] */
};



#define VelocityControlDrive_MI_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_VelocityControlDrive_MI_extent;

/*
 * class-based event:  MI_A1:'jog_instruction_received'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MI_CBevent1;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent1c;

/*
 * class-based event:  MI_A2:'drive_enabled'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MI_CBevent2;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent2c;

/*
 * class-based event:  MI_A3:'motion_complete'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MI_CBevent3;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent3c;

/*
 * class-based event:  MI_A5:'drive_disabled'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MI_CBevent5;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent5c;

/*
 * class-based event:  MI_A4:'drive_disable_lockout'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MI_CBevent4;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MI_CBevent4c;

/*
 * union of events targeted towards 'MI' state machine
 */
typedef union {
  VelocityControlDrive_MI_CBevent1 mi1_1;  
  VelocityControlDrive_MI_CBevent2 mi2_2;  
  VelocityControlDrive_MI_CBevent3 mi3_3;  
  VelocityControlDrive_MI_CBevent5 mi5_4;  
  VelocityControlDrive_MI_CBevent4 mi4_5;  
} VelocityControlDrive_MI_CB_Events_u;

/*
 * enumeration of state model states for class
 */
#define VelocityControlDrive_MI_CB_STATE_1 1  /* state [1]:  (WaitingForInstruction) */
#define VelocityControlDrive_MI_CB_STATE_2 2  /* state [2]:  (EnableDrive) */
#define VelocityControlDrive_MI_CB_STATE_3 3  /* state [3]:  (ExecuteInstruction) */
#define VelocityControlDrive_MI_CB_STATE_4 4  /* state [4]:  (InitiateDriveDisable) */
#define VelocityControlDrive_MI_CB_STATE_5 5  /* state [5]:  (DriveDisabling) */

/*
 * enumeration of state model event numbers
 */
#define VELOCITYCONTROLDRIVE_MI_CBEVENT1NUM 0  /* MI_A1:'jog_instruction_received' */
#define VELOCITYCONTROLDRIVE_MI_CBEVENT2NUM 1  /* MI_A2:'drive_enabled' */
#define VELOCITYCONTROLDRIVE_MI_CBEVENT3NUM 2  /* MI_A3:'motion_complete' */
#define VELOCITYCONTROLDRIVE_MI_CBEVENT4NUM 3  /* MI_A4:'drive_disable_lockout' */
#define VELOCITYCONTROLDRIVE_MI_CBEVENT5NUM 4  /* MI_A5:'drive_disabled' */

extern void VelocityControlDrive_MI_CBDispatch( Escher_xtUMLEvent_t * );


#ifdef	__cplusplus
}
#endif

#endif  /* VELOCITYCONTROLDRIVE_MI_CLASS_H */


