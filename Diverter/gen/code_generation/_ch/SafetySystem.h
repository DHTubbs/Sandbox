/*----------------------------------------------------------------------------
 * File:  SafetySystem.h
 *
 * UML Component (Module) Declaration (Operations and Signals)
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef SAFETYSYSTEM_H
#define SAFETYSYSTEM_H
#ifdef	__cplusplus
extern	"C"	{
#endif

#include "Diverter_sys_types.h"
void SafetySystem_Port2_LiftBayScan( void );
void SafetySystem_Port2_LiftChainFailureProx( void );
void SafetySystem_Port2_LiftDownLimitSw( void );
void SafetySystem_Port2_LiftDownObstructionPE( void );
void SafetySystem_Port2_LiftMidPointObstructionPE( void );
void SafetySystem_Port2_LiftRaiseObstructionPE( void );
void SafetySystem_Port2_LiftTableLiftLocksEngagedProx( void );
void SafetySystem_Port2_PalletInfeedObstructionPE( void );
void SafetySystem_Port2_SafetyTripCable( void );
void SafetySystem_Port2_SheetHandlingSlidingDoorSw( void );
void SafetySystem_Port2_UpperLevelInfeedConveyorAccess( void );


#ifdef	__cplusplus
}
#endif
#endif  /* SAFETYSYSTEM_H */
