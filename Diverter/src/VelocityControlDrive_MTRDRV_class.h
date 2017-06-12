/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive_MTRDRV_class.h
 *
 * Class:       Motor Drive  (MTRDRV)
 * Component:   VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_MTRDRV_CLASS_H
#define VELOCITYCONTROLDRIVE_MTRDRV_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Motor Drive  (MTRDRV)
 */
struct VelocityControlDrive_MTRDRV {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  c_t str[ESCHER_SYS_MAX_STRING_LEN];  /* - str */
  r_t rl;  /* - rl */
  bool b1;  /* - b1 */
  bool b2;  /* - b2 */
  i_t int;  /* - int */
  Escher_Timer_t * timer;  /* - timer */

};



#define VelocityControlDrive_MTRDRV_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_VelocityControlDrive_MTRDRV_extent;

/*
 * instance event:  MTRDRV1:'Stop'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV2:'Jog'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV3:'event1'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV4:'event2'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV5:'event3'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV6:'event4'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV7:'event5'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV8:'event6'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV9:'event7'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV10:'event8'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV11:'event9'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV12:'event10'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV13:'event11'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV14:'event12'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV15:'event13'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV16:'event14'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV17:'event15'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * instance event:  MTRDRV18:'event16'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define VelocityControlDrive_MTRDRV_STATE_1 1  /* state [1]:  (WaitingForInstruction) */
#define VelocityControlDrive_MTRDRV_STATE_2 2  /* state [2]:  (EnableDrive) */
#define VelocityControlDrive_MTRDRV_STATE_3 3  /* state [3]:  (ChangeVelocity) */
/*
 * enumeration of state model event numbers
 */
extern void VelocityControlDrive_MTRDRV_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* VELOCITYCONTROLDRIVE_MTRDRV_CLASS_H */


