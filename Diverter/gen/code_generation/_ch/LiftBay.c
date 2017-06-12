/*----------------------------------------------------------------------------
 * File:  LiftBay.c
 *
 * UML Component Port Messages
 * Component/Module Name:  LiftBay
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "LiftBay.h"
#include "TIM_bridge.h"
#include "Motor_Drive_Brake.h"

/*
 * Interface:  LiftBayDigitalIO
 * Required Port:  Port2
 * To Provider Message:  BundleOffsetExtendCylinder
 */
void
LiftBay_Port2_BundleOffsetExtendCylinder()
{
}

/*
 * Interface:  LiftBayDigitalIO
 * Required Port:  Port2
 * To Provider Message:  BundleOffsetTopSheetHoldCylinder
 */
void
LiftBay_Port2_BundleOffsetTopSheetHoldCylinder()
{
}

/*
 * Interface:  LiftBayDigitalIO
 * Required Port:  Port2
 * From Provider Message:  CounterWeightMaxUpSensor
 */
void
LiftBay_Port2_CounterWeightMaxUpSensor()
{
}

