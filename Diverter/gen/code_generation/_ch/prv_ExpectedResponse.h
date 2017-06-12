/*----------------------------------------------------------------------------
 * File:  prv_ExpectedResponse.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef PRV_EXPECTEDRESPONSE_H
#define PRV_EXPECTEDRESPONSE_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void prv_ExpectedResponse_Port1_done( void );
void prv_ExpectedResponse_Port1_enable_drive( const bool );
void prv_ExpectedResponse_Port1_error( void );
void prv_ExpectedResponse_Port1_in_progress( void );
void prv_ExpectedResponse_Port1_jog_motor( const i_t, const Diverter_Motor_Direction_t, const i_t );
void prv_ExpectedResponse_Port1_stop_motor( void );


#ifdef	__cplusplus
}
#endif
#endif  /* PRV_EXPECTEDRESPONSE_H */
