/*----------------------------------------------------------------------------
 * File:  Diverter.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_H
#define DIVERTER_H
#ifdef	__cplusplus
extern	"C"	{
#endif
/*
Where does this show up?
*/

#include "Diverter_sys_types.h"
void Diverter_Client_divert_pending( const Diverter_Divert_Packet_t, const i_t, const i_t, const i_t );
void Diverter_Client_diverter_ready( const bool );
Diverter_Jog_Switch_Position_t Diverter_Client_get_xtfr_jog_switch_position( void );
bool Diverter_Client_request_status( void );
void Diverter_Client_xtfr_jog_switch_position_changed( const Diverter_Jog_Switch_Position_t );
void Diverter_xtfrcnvr_jog( const i_t, const Diverter_Motor_Direction_t, const i_t, const i_t );
void Diverter_xtfrcnvr_motion_complete( void );
void Diverter_xtfrcnvr_motion_initiated( void );
void Diverter_xtfrcnvr_stop( void );
void Diverter_speed_ref_CutPulse( void );
void Diverter_Port1_jog( const i_t, const Diverter_Motor_Direction_t, const i_t, const i_t );
void Diverter_Port1_motion_complete( void );
void Diverter_Port1_motion_initiated( void );
void Diverter_Port1_stop( void );


#ifdef	__cplusplus
}
#endif
#endif  /* DIVERTER_H */
