/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MC_class.h
 *
 * Class:       Motion Controller  (MC)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_MC_CLASS_H
#define VELOCITYCONTROLDRIVE_MC_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Motion Controller  (MC)
 */
struct VelocityControlDrive_MC {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  Escher_Timer_t * move_timer;  /* - move_timer */
  i_t move_duration;  /* - move_duration */

  /* relationship storage */
  /* Note:  No storage needed for MC->MI[R1] */
  /* Note:  No storage needed for MC->DE[R2] */
};

/* xtUML WARNING:  MI<-R1->MC never related!  */
/* Note:  MI<-R1->MC unrelate accessor not needed */
void VelocityControlDrive_MC_R2_Link_controls_enabling_circuit_of_drive_for( VelocityControlDrive_DE *, VelocityControlDrive_MC * );
/* Note:  DE<-R2->MC unrelate accessor not needed */


#define VelocityControlDrive_MC_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_VelocityControlDrive_MC_extent;

/*
 * instance event:  MC1:'jog_cmd'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_acceleration; /* acceleration */
  Diverter_Motor_Direction_t p_direction; /* direction */
  i_t p_duration; /* duration */
  i_t p_velocity; /* velocity */
} VelocityControlDrive_MCevent1;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent1c;

/*
 * instance event:  MC2:'drive_in_progress'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MCevent2;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent2c;

/*
 * instance event:  MC3:'end_move'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MCevent3;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent3c;

/*
 * instance event:  MC4:'drive_done'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} VelocityControlDrive_MCevent4;
extern const Escher_xtUMLEventConstant_t VelocityControlDrive_MCevent4c;

/*
 * union of events targeted towards 'MC' state machine
 */
typedef union {
  VelocityControlDrive_MCevent1 mc1_1;  
  VelocityControlDrive_MCevent2 mc2_2;  
  VelocityControlDrive_MCevent3 mc3_3;  
  VelocityControlDrive_MCevent4 mc4_4;  
} VelocityControlDrive_MC_Events_u;

/*
 * enumeration of state model states for class
 */
#define VelocityControlDrive_MC_STATE_1 1  /* state [1]:  (Idle) */
#define VelocityControlDrive_MC_STATE_2 2  /* state [2]:  (InitiateMove) */
#define VelocityControlDrive_MC_STATE_3 3  /* state [3]:  (Moving) */
#define VelocityControlDrive_MC_STATE_4 4  /* state [4]:  (InitiateStop) */
/*
 * enumeration of state model event numbers
 */
#define VELOCITYCONTROLDRIVE_MCEVENT1NUM 0  /* MC1:'jog_cmd' */
#define VELOCITYCONTROLDRIVE_MCEVENT2NUM 1  /* MC2:'drive_in_progress' */
#define VELOCITYCONTROLDRIVE_MCEVENT3NUM 2  /* MC3:'end_move' */
#define VELOCITYCONTROLDRIVE_MCEVENT4NUM 3  /* MC4:'drive_done' */
extern void VelocityControlDrive_MC_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* VELOCITYCONTROLDRIVE_MC_CLASS_H */


