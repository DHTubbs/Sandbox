/*----------------------------------------------------------------------------
 * File:  Backstop.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef BACKSTOP_H
#define BACKSTOP_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void Backstop_Port3_BackstopJammed( void );
void Backstop_Port3_BundleOffsetUpDownCylinder( void );
void Backstop_Port3_StackHeightSensors( void );
void Backstop_Port3_UpDownCylinder( void );


#ifdef	__cplusplus
}
#endif
#endif  /* BACKSTOP_H */
