/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef VELOCITYCONTROLDRIVE_H
#define VELOCITYCONTROLDRIVE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void VelocityControlDrive_client_jog( const i_t, const Diverter_Motor_Direction_t, const i_t, const i_t );
void VelocityControlDrive_client_motion_complete( void );
void VelocityControlDrive_client_motion_initiated( void );
void VelocityControlDrive_client_stop( void );
void VelocityControlDrive_drive_done( void );
void VelocityControlDrive_drive_enable_drive( const bool );
void VelocityControlDrive_drive_error( void );
void VelocityControlDrive_drive_in_progress( void );
void VelocityControlDrive_drive_jog_motor( const i_t, const Diverter_Motor_Direction_t, const i_t );
void VelocityControlDrive_drive_stop_motor( void );


#ifdef	__cplusplus
}
#endif
#endif  /* VELOCITYCONTROLDRIVE_H */
