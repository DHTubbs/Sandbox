/*----------------------------------------------------------------------------
 * File:  VelocityControlDrive.c
 *
 * UML Component Port Messages
 * Component/Module Name:  VelocityControlDrive
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "VelocityControlDrive.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "Client.h"
#include "Diverter.h"
#include "prv_ExpectedResponse.h"
#include "VelocityControlDrive_classes.h"

/*
 * Interface:  JogMotor
 * Provided Port:  client
 * To Provider Message:  jog
 */
void
VelocityControlDrive_client_jog( const i_t p_acceleration, const Diverter_Motor_Direction_t p_direction, const i_t p_duration, const i_t p_velocity )
{
  VelocityControlDrive_MI * motion_inst;
  /* CREATE OBJECT INSTANCE motion_inst OF MI */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE motion_inst OF MI" );
  motion_inst = (VelocityControlDrive_MI *) Escher_CreateInstance( VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MI_CLASS_NUMBER );
  /* ASSIGN motion_inst.direction = PARAM.direction */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motion_inst.direction = PARAM.direction" );
  motion_inst->direction = p_direction;
  /* ASSIGN motion_inst.velocity = PARAM.velocity */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motion_inst.velocity = PARAM.velocity" );
  motion_inst->velocity = p_velocity;
  /* ASSIGN motion_inst.acceleration = PARAM.acceleration */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motion_inst.acceleration = PARAM.acceleration" );
  motion_inst->acceleration = p_acceleration;
  /* ASSIGN motion_inst.duration = PARAM.duration */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motion_inst.duration = PARAM.duration" );
  motion_inst->duration = p_duration;
  /* GENERATE MI_A1:jog_instruction_received() TO MI CLASS */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MI_A1:jog_instruction_received() TO MI CLASS" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( 0, &VelocityControlDrive_MI_CBevent1c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  JogMotor
 * Provided Port:  client
 * From Provider Message:  motion_complete
 */
void
VelocityControlDrive_client_motion_complete()
{
  Client_Port1_motion_complete();
  Diverter_xtfrcnvr_motion_complete();
  Diverter_Port1_motion_complete();
}

/*
 * Interface:  JogMotor
 * Provided Port:  client
 * From Provider Message:  motion_initiated
 */
void
VelocityControlDrive_client_motion_initiated()
{
  Client_Port1_motion_initiated();
  Diverter_xtfrcnvr_motion_initiated();
  Diverter_Port1_motion_initiated();
}

/*
 * Interface:  JogMotor
 * Provided Port:  client
 * To Provider Message:  stop
 */
void
VelocityControlDrive_client_stop()
{
  VelocityControlDrive_MC * motion_controller=0;
  /* SELECT any motion_controller FROM INSTANCES OF MC */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_controller FROM INSTANCES OF MC" );
  motion_controller = (VelocityControlDrive_MC *) Escher_SetGetAny( &pG_VelocityControlDrive_MC_extent.active );
  /* IF ( not_empty motion_controller ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty motion_controller )" );
  if ( ( 0 != motion_controller ) ) {
    /* GENERATE MC3:end_move() TO motion_controller */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE MC3:end_move() TO motion_controller" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( motion_controller, &VelocityControlDrive_MCevent3c );
      Escher_SendEvent( e );
    }
  }
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * From Provider Message:  done
 */
void
VelocityControlDrive_drive_done()
{
  VelocityControlDrive_MC * motion_controller=0;VelocityControlDrive_DE * drive_enable=0;
  /* SELECT any drive_enable FROM INSTANCES OF DE */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any drive_enable FROM INSTANCES OF DE" );
  drive_enable = (VelocityControlDrive_DE *) Escher_SetGetAny( &pG_VelocityControlDrive_DE_extent.active );
  /* GENERATE DE3:drive_signals_done() TO drive_enable */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE DE3:drive_signals_done() TO drive_enable" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( drive_enable, &VelocityControlDrive_DEevent3c );
    Escher_SendEvent( e );
  }
  /* SELECT any motion_controller FROM INSTANCES OF MC */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_controller FROM INSTANCES OF MC" );
  motion_controller = (VelocityControlDrive_MC *) Escher_SetGetAny( &pG_VelocityControlDrive_MC_extent.active );
  /* GENERATE MC4:drive_done() TO motion_controller */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MC4:drive_done() TO motion_controller" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( motion_controller, &VelocityControlDrive_MCevent4c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * To Provider Message:  enable_drive
 */
void
VelocityControlDrive_drive_enable_drive( const bool p_enable )
{
  prv_ExpectedResponse_Port1_enable_drive(  p_enable );
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * From Provider Message:  error
 */
void
VelocityControlDrive_drive_error()
{
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * From Provider Message:  in_progress
 */
void
VelocityControlDrive_drive_in_progress()
{
  VelocityControlDrive_MC * motion_controller=0;
  /* SELECT any motion_controller FROM INSTANCES OF MC */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any motion_controller FROM INSTANCES OF MC" );
  motion_controller = (VelocityControlDrive_MC *) Escher_SetGetAny( &pG_VelocityControlDrive_MC_extent.active );
  /* GENERATE MC2:drive_in_progress() TO motion_controller */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE MC2:drive_in_progress() TO motion_controller" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( motion_controller, &VelocityControlDrive_MCevent2c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * To Provider Message:  jog_motor
 */
void
VelocityControlDrive_drive_jog_motor( const i_t p_acceleration, const Diverter_Motor_Direction_t p_motor_direction, const i_t p_velocity )
{
  prv_ExpectedResponse_Port1_jog_motor(  p_acceleration, p_motor_direction, p_velocity );
}

/*
 * Interface:  VelocityControlDrive
 * Required Port:  drive
 * To Provider Message:  stop_motor
 */
void
VelocityControlDrive_drive_stop_motor()
{
  prv_ExpectedResponse_Port1_stop_motor();
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  Init
 */
void
VelocityControlDrive_Init()
{
  VelocityControlDrive_DE * drive_enable;VelocityControlDrive_MC * motion_controller;
  /* CREATE OBJECT INSTANCE motion_controller OF MC */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE motion_controller OF MC" );
  motion_controller = (VelocityControlDrive_MC *) Escher_CreateInstance( VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_MC_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE drive_enable OF DE */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE drive_enable OF DE" );
  drive_enable = (VelocityControlDrive_DE *) Escher_CreateInstance( VelocityControlDrive_DOMAIN_ID, VelocityControlDrive_DE_CLASS_NUMBER );
  /* ASSIGN drive_enable.disable_delay = 5000 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN drive_enable.disable_delay = 5000" );
  drive_enable->disable_delay = 5000;
  /* RELATE motion_controller TO drive_enable ACROSS R2 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE motion_controller TO drive_enable ACROSS R2" );
  VelocityControlDrive_MC_R2_Link_controls_enabling_circuit_of_drive_for( drive_enable, motion_controller );

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const VelocityControlDrive_class_info[ VelocityControlDrive_MAX_CLASS_NUMBERS ] = {
  &pG_VelocityControlDrive_MI_extent,
  &pG_VelocityControlDrive_DE_extent,
  &pG_VelocityControlDrive_MC_extent,
  &pG_VelocityControlDrive_MTRDRV_extent,
  0,
  &pG_VelocityControlDrive_FLT_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t VelocityControlDrive_EventDispatcher[ VelocityControlDrive_STATE_MODELS ] = {
  VelocityControlDrive_class_dispatchers
};

void VelocityControlDrive_execute_initialization()
{
}
