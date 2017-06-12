/*----------------------------------------------------------------------------
 * File:  Client.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CLIENT_H
#define CLIENT_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void Client_Port1_divert_pending( const Diverter_Divert_Packet_t, const i_t, const i_t, const i_t );
void Client_Port1_diverter_ready( const bool );
Diverter_Jog_Switch_Position_t Client_Port1_get_xtfr_jog_switch_position( void );
bool Client_Port1_request_status( void );
void Client_Port1_xtfr_jog_switch_position_changed( const Diverter_Jog_Switch_Position_t );


#ifdef	__cplusplus
}
#endif
#endif  /* CLIENT_H */
