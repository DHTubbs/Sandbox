/*----------------------------------------------------------------------------
 * File:  Diverter.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/
/*
 Where does this show up?
 */

#include "Diverter_sys_types.h"
#include "Diverter.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"

/*
 * Interface:  DiverterClient
 * Provided Port:  Client
 * To Provider Message:  divert_pending
 */
void
Diverter_Client_divert_pending( const Diverter_Divert_Packet_t p_divert_type, const i_t p_number_of_sheets, const i_t p_packet_start_position, const i_t p_sheet_length )
{
  Diverter_DVRTPKT * divert_package;Diverter_DVRTBAY * diverter_bay=0;Diverter_DVRTPKT * dvrt_package=0;
  /* CREATE OBJECT INSTANCE divert_package OF DVRTPKT */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE divert_package OF DVRTPKT" );
  divert_package = (Diverter_DVRTPKT *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_DVRTPKT_CLASS_NUMBER );
  /* ASSIGN divert_package.type = PARAM.divert_type */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN divert_package.type = PARAM.divert_type" );
  divert_package->type = p_divert_type;
  /* ASSIGN divert_package.leading_edge_position = PARAM.packet_start_position */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN divert_package.leading_edge_position = PARAM.packet_start_position" );
  divert_package->leading_edge_position = p_packet_start_position;
  /* ASSIGN divert_package.trailing_edge_position = ( PARAM.packet_start_position - ( PARAM.sheet_length * PARAM.number_of_sheets ) ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN divert_package.trailing_edge_position = ( PARAM.packet_start_position - ( PARAM.sheet_length * PARAM.number_of_sheets ) )" );
  divert_package->trailing_edge_position = ( p_packet_start_position - ( p_sheet_length * p_number_of_sheets ) );
  /* ASSIGN divert_package.web_caliper = 0 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN divert_package.web_caliper = 0" );
  divert_package->web_caliper = 0;
  /* SELECT any diverter_bay FROM INSTANCES OF DVRTBAY */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any diverter_bay FROM INSTANCES OF DVRTBAY" );
  diverter_bay = (Diverter_DVRTBAY *) Escher_SetGetAny( &pG_Diverter_DVRTBAY_extent.active );
  /* SELECT one dvrt_package RELATED BY diverter_bay->DVRTPKT[R4] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one dvrt_package RELATED BY diverter_bay->DVRTPKT[R4]" );
  dvrt_package = ( 0 != diverter_bay ) ? diverter_bay->DVRTPKT_R4_receives_next : 0;
  /* IF ( not_empty dvrt_package ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( not_empty dvrt_package )" );
  if ( ( 0 != dvrt_package ) ) {
    /* WHILE ( not_empty dvrt_package ) */
    XTUML_OAL_STMT_TRACE( 2, "WHILE ( not_empty dvrt_package )" );
    while ( ( 0 != dvrt_package ) ) {
      /* SELECT one dvrt_package RELATED BY dvrt_package->DVRTPKT[R1.next] */
      XTUML_OAL_STMT_TRACE( 3, "SELECT one dvrt_package RELATED BY dvrt_package->DVRTPKT[R1.next]" );
      dvrt_package = ( 0 != dvrt_package ) ? dvrt_package->DVRTPKT_R1_next : 0;
    }
    /* RELATE divert_package TO dvrt_package ACROSS R1 */
    XTUML_OAL_STMT_TRACE( 2, "RELATE divert_package TO dvrt_package ACROSS R1" );
    Diverter_DVRTPKT_R1_Link_next( divert_package, dvrt_package );
  }
}

/*
 * Interface:  DiverterClient
 * Provided Port:  Client
 * From Provider Message:  diverter_ready
 */
void
Diverter_Client_diverter_ready( const bool p_ready )
{
}

/*
 * Interface:  DiverterClient
 * Provided Port:  Client
 * From Provider Message:  get_xtfr_jog_switch_position
 */
Diverter_Jog_Switch_Position_t
Diverter_Client_get_xtfr_jog_switch_position()
{
}

/*
 * Interface:  DiverterClient
 * Provided Port:  Client
 * To Provider Message:  request_status
 */
bool
Diverter_Client_request_status()
{
  /* RETURN FALSE */
  XTUML_OAL_STMT_TRACE( 1, "RETURN FALSE" );
  {bool xtumlOALrv = FALSE;
  return xtumlOALrv;}
}

/*
 * Interface:  DiverterClient
 * Provided Port:  Client
 * To Provider Message:  xtfr_jog_switch_position_changed
 */
void
Diverter_Client_xtfr_jog_switch_position_changed( const Diverter_Jog_Switch_Position_t p_new_position )
{
  Diverter_XTFRCNVR * xtfr_conveyor=0;
  /* SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR" );
  xtfr_conveyor = (Diverter_XTFRCNVR *) Escher_SetGetAny( &pG_Diverter_XTFRCNVR_extent.active );
  /* IF ( ( PARAM.new_position == Stop ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( PARAM.new_position == Stop ) )" );
  if ( ( p_new_position == Diverter_Jog_Switch_Position_Stop_e ) ) {
    /* GENERATE XTFRCNVR4:jog_complete() TO xtfr_conveyor */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR4:jog_complete() TO xtfr_conveyor" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent4c );
      Escher_SendEvent( e );
    }
  }
  else if ( ( p_new_position == Diverter_Jog_Switch_Position_Operator_e ) ) {
    /* GENERATE XTFRCNVR3:jog(direction:Operator) TO xtfr_conveyor */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR3:jog(direction:Operator) TO xtfr_conveyor" );
    { Diverter_XTFRCNVRevent3 * e = (Diverter_XTFRCNVRevent3 *) Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent3c );
      e->p_direction = Diverter_Machine_Side_Operator_e;
      Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( p_new_position == Diverter_Jog_Switch_Position_Drive_e ) ) {
    /* GENERATE XTFRCNVR3:jog(direction:Drive) TO xtfr_conveyor */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE XTFRCNVR3:jog(direction:Drive) TO xtfr_conveyor" );
    { Diverter_XTFRCNVRevent3 * e = (Diverter_XTFRCNVRevent3 *) Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent3c );
      e->p_direction = Diverter_Machine_Side_Drive_e;
      Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
    }
  }
  else if ( ( p_new_position == Diverter_Jog_Switch_Position_Impossible_e ) ) {
  }
}

/*
 * Interface:  JogMotor
 * Required Port:  xtfrcnvr
 * To Provider Message:  jog
 */
void
Diverter_xtfrcnvr_jog( const i_t p_acceleration, const Diverter_Motor_Direction_t p_direction, const i_t p_duration, const i_t p_velocity )
{
}

/*
 * Interface:  JogMotor
 * Required Port:  xtfrcnvr
 * From Provider Message:  motion_complete
 */
void
Diverter_xtfrcnvr_motion_complete()
{
  Diverter_XTFRCNVR * xtfr_conveyor=0;
  /* SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR" );
  xtfr_conveyor = (Diverter_XTFRCNVR *) Escher_SetGetAny( &pG_Diverter_XTFRCNVR_extent.active );
  /* GENERATE XTFRCNVR9:motor_stopped() TO xtfr_conveyor */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE XTFRCNVR9:motor_stopped() TO xtfr_conveyor" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent9c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  JogMotor
 * Required Port:  xtfrcnvr
 * From Provider Message:  motion_initiated
 */
void
Diverter_xtfrcnvr_motion_initiated()
{
  Diverter_XTFRCNVR * xtfr_conveyor=0;
  /* SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR */
  XTUML_OAL_STMT_TRACE( 1, "SELECT any xtfr_conveyor FROM INSTANCES OF XTFRCNVR" );
  xtfr_conveyor = (Diverter_XTFRCNVR *) Escher_SetGetAny( &pG_Diverter_XTFRCNVR_extent.active );
  /* GENERATE XTFRCNVR5:drive_rdy_for_inst() TO xtfr_conveyor */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE XTFRCNVR5:drive_rdy_for_inst() TO xtfr_conveyor" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent5c );
    Escher_SendEvent( e );
  }
}

/*
 * Interface:  JogMotor
 * Required Port:  xtfrcnvr
 * To Provider Message:  stop
 */
void
Diverter_xtfrcnvr_stop()
{
}

/*
 * Interface:  SpeedSignal
 * Required Port:  speed_ref
 * From Provider Message:  CutPulse
 */
void
Diverter_speed_ref_CutPulse()
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * To Provider Message:  jog
 */
void
Diverter_Port1_jog( const i_t p_acceleration, const Diverter_Motor_Direction_t p_direction, const i_t p_duration, const i_t p_velocity )
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * From Provider Message:  motion_complete
 */
void
Diverter_Port1_motion_complete()
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * From Provider Message:  motion_initiated
 */
void
Diverter_Port1_motion_initiated()
{
}

/*
 * Interface:  JogMotor
 * Required Port:  Port1
 * To Provider Message:  stop
 */
void
Diverter_Port1_stop()
{
}

/*
 * UML Domain Functions (Synchronous Services)
 */

/*
 * Domain Function:  Init
 */
void
Diverter_Init()
{
  Diverter_DVRTBAY * diverter_bay;Diverter_MANSEQ * manual;Diverter_XTFRCNVR * xtfr_conv;Diverter_FNGRS * fingers;Diverter_DVTPAN * diverter_pan;Diverter_ARBLST * air_blast;Diverter_ACTR * actuator;
  /* CREATE OBJECT INSTANCE actuator OF ACTR */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE actuator OF ACTR" );
  actuator = (Diverter_ACTR *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE air_blast OF ARBLST */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE air_blast OF ARBLST" );
  air_blast = (Diverter_ARBLST *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_ARBLST_CLASS_NUMBER );
  /* ASSIGN air_blast.position = 1000 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN air_blast.position = 1000" );
  air_blast->position = 1000;
  /* ASSIGN air_blast.blast_duration = 100 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN air_blast.blast_duration = 100" );
  air_blast->blast_duration = 100;
  /* RELATE air_blast TO actuator ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE air_blast TO actuator ACROSS R5" );
  Diverter_ARBLST_R5_Link( actuator, air_blast );
  /* CREATE OBJECT INSTANCE actuator OF ACTR */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE actuator OF ACTR" );
  actuator = (Diverter_ACTR *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE diverter_pan OF DVTPAN */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE diverter_pan OF DVTPAN" );
  diverter_pan = (Diverter_DVTPAN *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_DVTPAN_CLASS_NUMBER );
  /* ASSIGN diverter_pan.position = 900 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN diverter_pan.position = 900" );
  diverter_pan->position = 900;
  /* RELATE diverter_pan TO actuator ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE diverter_pan TO actuator ACROSS R5" );
  Diverter_DVTPAN_R5_Link( actuator, diverter_pan );
  /* CREATE OBJECT INSTANCE actuator OF ACTR */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE actuator OF ACTR" );
  actuator = (Diverter_ACTR *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE fingers OF FNGRS */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE fingers OF FNGRS" );
  fingers = (Diverter_FNGRS *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_FNGRS_CLASS_NUMBER );
  /* ASSIGN fingers.position = 900 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN fingers.position = 900" );
  fingers->position = 900;
  /* ASSIGN fingers.lower_time = 5 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN fingers.lower_time = 5" );
  fingers->lower_time = 5;
  /* ASSIGN fingers.raise_time = 5 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN fingers.raise_time = 5" );
  fingers->raise_time = 5;
  /* RELATE fingers TO actuator ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE fingers TO actuator ACROSS R5" );
  Diverter_FNGRS_R5_Link( actuator, fingers );
  /* CREATE OBJECT INSTANCE actuator OF ACTR */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE actuator OF ACTR" );
  actuator = (Diverter_ACTR *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_ACTR_CLASS_NUMBER );
  /* CREATE OBJECT INSTANCE xtfr_conv OF XTFRCNVR */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE xtfr_conv OF XTFRCNVR" );
  xtfr_conv = (Diverter_XTFRCNVR *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_XTFRCNVR_CLASS_NUMBER );
  /* ASSIGN xtfr_conv.stopping_time = 500 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN xtfr_conv.stopping_time = 500" );
  xtfr_conv->stopping_time = 500;
  /* ASSIGN xtfr_conv.drive_side = Forward */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN xtfr_conv.drive_side = Forward" );
  xtfr_conv->drive_side = Diverter_Motor_Direction_Forward_e;
  /* RELATE xtfr_conv TO actuator ACROSS R5 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE xtfr_conv TO actuator ACROSS R5" );
  Diverter_XTFRCNVR_R5_Link( actuator, xtfr_conv );
  /* CREATE OBJECT INSTANCE manual OF MANSEQ */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE manual OF MANSEQ" );
  manual = (Diverter_MANSEQ *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_MANSEQ_CLASS_NUMBER );
  /* RELATE manual TO xtfr_conv ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE manual TO xtfr_conv ACROSS R8" );
  Diverter_MANSEQ_R8_Link( xtfr_conv, manual );
  /* CREATE OBJECT INSTANCE diverter_bay OF DVRTBAY */
  XTUML_OAL_STMT_TRACE( 1, "CREATE OBJECT INSTANCE diverter_bay OF DVRTBAY" );
  diverter_bay = (Diverter_DVRTBAY *) Escher_CreateInstance( Diverter_DOMAIN_ID, Diverter_DVRTBAY_CLASS_NUMBER );
  /* RELATE diverter_bay TO xtfr_conv ACROSS R7 */
  XTUML_OAL_STMT_TRACE( 1, "RELATE diverter_bay TO xtfr_conv ACROSS R7" );
  Diverter_XTFRCNVR_R7_Link( diverter_bay, xtfr_conv );

}

/* xtUML class info (collections, sizes, etc.) */
Escher_Extent_t * const Diverter_class_info[ Diverter_MAX_CLASS_NUMBERS ] = {
  &pG_Diverter_ARBLST_extent,
  &pG_Diverter_MANSEQ_extent,
  &pG_Diverter_MOTINH_extent,
  &pG_Diverter_AUTOSEQ_extent,
  &pG_Diverter_CLX2HRDCGSEQ_extent,
  &pG_Diverter_CLX1DCGSEQ_extent,
  &pG_Diverter_DVRTPKT_extent,
  &pG_Diverter_ACTR_extent,
  &pG_Diverter_TRKPT_extent,
  &pG_Diverter_DVRTBAY_extent,
  &pG_Diverter_XTFRCNVR_extent,
  &pG_Diverter_FNGRS_extent,
  &pG_Diverter_DVTPAN_extent,
  0,
  0,
  &pG_Diverter_DVRTSHT_extent,
  &pG_Diverter_DVRTSTK_extent
};

/*
 * Array of pointers to the class event dispatcher method.
 * Index is the (model compiler enumerated) number of the state model.
 */
const EventTaker_t Diverter_EventDispatcher[ Diverter_STATE_MODELS ] = {
  Diverter_class_dispatchers
};

void Diverter_execute_initialization()
{
}
