/*----------------------------------------------------------------------------
 * File:  rqd_JogMotor_IntfTest.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef RQD_JOGMOTOR_INTFTEST_H
#define RQD_JOGMOTOR_INTFTEST_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void rqd_JogMotor_IntfTest_Port1_jog( const i_t, const Diverter_Motor_Direction_t, const i_t, const i_t );
void rqd_JogMotor_IntfTest_Port1_motion_complete( void );
void rqd_JogMotor_IntfTest_Port1_motion_initiated( void );
void rqd_JogMotor_IntfTest_Port1_stop( void );


#ifdef	__cplusplus
}
#endif
#endif  /* RQD_JOGMOTOR_INTFTEST_H */
