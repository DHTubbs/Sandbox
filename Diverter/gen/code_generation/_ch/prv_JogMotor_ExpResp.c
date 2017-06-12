/*----------------------------------------------------------------------------
 * File:  prv_JogMotor_ExpResp.c
 *
 * UML Component Port Messages
 * Component/Module Name:  prv_JogMotor_ExpResp
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "prv_JogMotor_ExpResp.h"
#include "TIM_bridge.h"

/*
 * Interface:  JogMotor
 * Provided Port:  Port1
 * To Provider Message:  jog
 */
void
prv_JogMotor_ExpResp_Port1_jog( const i_t p_acceleration, const Diverter_Motor_Direction_t p_direction, const i_t p_duration, const i_t p_velocity )
{
}

/*
 * Interface:  JogMotor
 * Provided Port:  Port1
 * From Provider Message:  motion_complete
 */
void
prv_JogMotor_ExpResp_Port1_motion_complete()
{
}

/*
 * Interface:  JogMotor
 * Provided Port:  Port1
 * From Provider Message:  motion_initiated
 */
void
prv_JogMotor_ExpResp_Port1_motion_initiated()
{
}

/*
 * Interface:  JogMotor
 * Provided Port:  Port1
 * To Provider Message:  stop
 */
void
prv_JogMotor_ExpResp_Port1_stop()
{
}

