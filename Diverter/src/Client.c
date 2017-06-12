/*----------------------------------------------------------------------------
 * File:  Client.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Client
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "Client.h"
#include "TIM_bridge.h"
#include "TIM_bridge.h"
#include "Diverter.h"
#include "Client_classes.h"

/*
 * Interface:  DiverterClient
 * Required Port:  Port1
 * To Provider Message:  divert_pending
 */
void
Client_Port1_divert_pending( const Diverter_Divert_Packet_t p_divert_type, const i_t p_number_of_sheets, const i_t p_packet_start_position, const i_t p_sheet_length )
{
  Diverter_Client_divert_pending(  p_divert_type, p_number_of_sheets, p_packet_start_position, p_sheet_length );
}

/*
 * Interface:  DiverterClient
 * Required Port:  Port1
 * From Provider Message:  diverter_ready
 */
void
Client_Port1_diverter_ready( const bool p_ready )
{
}

/*
 * Interface:  DiverterClient
 * Required Port:  Port1
 * From Provider Message:  get_xtfr_jog_switch_position
 */
Diverter_Jog_Switch_Position_t
Client_Port1_get_xtfr_jog_switch_position()
{
  Client_JS * jog_switch=0;
  /* SELECT any jog_switch FROM INSTANCES OF JS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any jog_switch FROM INSTANCES OF JS" );
  jog_switch = (Client_JS *) Escher_SetGetAny( &pG_Client_JS_extent.active );
  /* RETURN jog_switch.position */
  XTUML_OAL_STMT_TRACE( 1, "RETURN jog_switch.position" );
  {Diverter_Jog_Switch_Position_t xtumlOALrv = jog_switch->position;
  return xtumlOALrv;}
}

/*
 * Interface:  DiverterClient
 * Required Port:  Port1
 * To Provider Message:  request_status
 */
bool
Client_Port1_request_status()
{
return   Diverter_Client_request_status();
}

/*
 * Interface:  DiverterClient
 * Required Port:  Port1
 * To Provider Message:  xtfr_jog_switch_position_changed
 */
void
Client_Port1_xtfr_jog_switch_position_changed( const Diverter_Jog_Switch_Position_t p_new_position )
{
  Diverter_Client_xtfr_jog_switch_position_changed(  p_new_position );
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  Init
 */
void
Client_Init()
{
  Client_JS * jog_switch=0;
  /* SELECT any jog_switch FROM INSTANCES OF JS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any jog_switch FROM INSTANCES OF JS" );
  jog_switch = (Client_JS *) Escher_SetGetAny( &pG_Client_JS_extent.active );
  /* IF ( empty jog_switch ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty jog_switch )" );
  if ( ( 0 == jog_switch ) ) {
    /* CREATE OBJECT INSTANCE jog_switch OF JS */
    XTUML_OAL_STMT_TRACE( 2, "CREATE OBJECT INSTANCE jog_switch OF JS" );
    jog_switch = (Client_JS *) Escher_CreateInstance( Client_DOMAIN_ID, Client_JS_CLASS_NUMBER );
    /* ASSIGN jog_switch.position = Stop */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN jog_switch.position = Stop" );
    jog_switch->position = Diverter_Jog_Switch_Position_Stop_e;
  }

}

/*
 * Domain Function:  JogDriveSide
 */
void
Client_JogDriveSide()
{
  Client_JS * jog_switch=0;
  /* SELECT any jog_switch FROM INSTANCES OF JS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any jog_switch FROM INSTANCES OF JS" );
  jog_switch = (Client_JS *) Escher_SetGetAny( &pG_Client_JS_extent.active );
  /* ASSIGN jog_switch.position = Drive */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN jog_switch.position = Drive" );
  jog_switch->position = Diverter_Jog_Switch_Position_Drive_e;
  /* SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position) */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position)" );
  Client_Port1_xtfr_jog_switch_position_changed( jog_switch->position );

}

/*
 * Domain Function:  JogOperatorSide
 */
void
Client_JogOperatorSide()
{
  Client_JS * jog_switch=0;
  /* SELECT any jog_switch FROM INSTANCES OF JS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any jog_switch FROM INSTANCES OF JS" );
  jog_switch = (Client_JS *) Escher_SetGetAny( &pG_Client_JS_extent.active );
  /* ASSIGN jog_switch.position = Operator */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN jog_switch.position = Operator" );
  jog_switch->position = Diverter_Jog_Switch_Position_Operator_e;
  /* SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position) */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position)" );
  Client_Port1_xtfr_jog_switch_position_changed( jog_switch->position );

}

/*
 * Domain Function:  StopJogging
 */
void
Client_StopJogging()
{
  Client_JS * jog_switch=0;
  /* SELECT any jog_switch FROM INSTANCES OF JS */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any jog_switch FROM INSTANCES OF JS" );
  jog_switch = (Client_JS *) Escher_SetGetAny( &pG_Client_JS_extent.active );
  /* ASSIGN jog_switch.position = Stop */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN jog_switch.position = Stop" );
  jog_switch->position = Diverter_Jog_Switch_Position_Stop_e;
  /* SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position) */
  XTUML_OAL_STMT_TRACE( 1, "SEND Port1::xtfr_jog_switch_position_changed(new_position:jog_switch.position)" );
  Client_Port1_xtfr_jog_switch_position_changed( jog_switch->position );

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Client_class_info[ Client_MAX_CLASS_NUMBERS ] = {
  &pG_Client_JS_extent
};


void Client_execute_initialization()
{
}
