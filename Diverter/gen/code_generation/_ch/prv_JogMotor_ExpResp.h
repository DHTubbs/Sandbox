/*----------------------------------------------------------------------------
 * File:  prv_JogMotor_ExpResp.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PRV_JOGMOTOR_EXPRESP_H
#define PRV_JOGMOTOR_EXPRESP_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void prv_JogMotor_ExpResp_Port1_jog( const i_t, const Diverter_Motor_Direction_t, const i_t, const i_t );
void prv_JogMotor_ExpResp_Port1_motion_complete( void );
void prv_JogMotor_ExpResp_Port1_motion_initiated( void );
void prv_JogMotor_ExpResp_Port1_stop( void );


#ifdef	__cplusplus
}
#endif
#endif  /* PRV_JOGMOTOR_EXPRESP_H */
