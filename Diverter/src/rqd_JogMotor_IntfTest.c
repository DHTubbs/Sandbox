/*----------------------------------------------------------------------------
 * File:  rqd_JogMotor_IntfTest.c
 *
 * UML Component Port Messages
 * Component/Module Name:  rqd_JogMotor_IntfTest
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "rqd_JogMotor_IntfTest.h"
#include "TIM_bridge.h"

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * To Provider Message:  jog
 */
void
rqd_JogMotor_IntfTest_Port1_jog( const i_t p_acceleration, const Diverter_Motor_Direction_t p_direction, const i_t p_duration, const i_t p_velocity )
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * From Provider Message:  motion_complete
 */
void
rqd_JogMotor_IntfTest_Port1_motion_complete()
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * From Provider Message:  motion_initiated
 */
void
rqd_JogMotor_IntfTest_Port1_motion_initiated()
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * To Provider Message:  stop
 */
void
rqd_JogMotor_IntfTest_Port1_stop()
{
}

