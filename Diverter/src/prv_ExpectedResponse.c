/*----------------------------------------------------------------------------
 * File:  prv_ExpectedResponse.c
 *
 * UML Component Port Messages
 * Component/Module Name:  prv_ExpectedResponse
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "prv_ExpectedResponse.h"
#include "TIM_bridge.h"

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * From Provider Message:  done
 */
void
prv_ExpectedResponse_Port1_done()
{
}

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * To Provider Message:  enable_drive
 */
void
prv_ExpectedResponse_Port1_enable_drive( const bool p_enable )
{
  /* SEND Port1::done() */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::done()" );
  prv_ExpectedResponse_Port1_done();
}

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * From Provider Message:  error
 */
void
prv_ExpectedResponse_Port1_error()
{
}

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * From Provider Message:  in_progress
 */
void
prv_ExpectedResponse_Port1_in_progress()
{
}

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * To Provider Message:  jog_motor
 */
void
prv_ExpectedResponse_Port1_jog_motor( const i_t p_acceleration, const Diverter_Motor_Direction_t p_motor_direction, const i_t p_velocity )
{
  /* SEND Port1::in_progress() */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::in_progress()" );
  prv_ExpectedResponse_Port1_in_progress();
}

/*
 * Interface:  VelocityControlDrive
 * Provided Port:  Port1
 * To Provider Message:  stop_motor
 */
void
prv_ExpectedResponse_Port1_stop_motor()
{
  /* SEND Port1::done() */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::done()" );
  prv_ExpectedResponse_Port1_done();
}

