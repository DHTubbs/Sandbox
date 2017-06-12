/*----------------------------------------------------------------------------
 * File:  Backstop.c
 *
 * UML Component Port Messages
 * Component/Module Name:  Backstop
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "Backstop.h"
#include "TIM_bridge.h"
#include "Motor_Drive_Brake.h"
#include "Motor_Drive.h"

/*
 * Interface:  BackstopDigitalIO
 * Required Port:  Port3
 * From Provider Message:  BackstopJammed
 */
void
Backstop_Port3_BackstopJammed()
{
}

/*
 * Interface:  BackstopDigitalIO
 * Required Port:  Port3
 * To Provider Message:  BundleOffsetUpDownCylinder
 */
void
Backstop_Port3_BundleOffsetUpDownCylinder()
{
}

/*
 * Interface:  BackstopDigitalIO
 * Required Port:  Port3
 * From Provider Message:  StackHeightSensors
 */
void
Backstop_Port3_StackHeightSensors()
{
}

/*
 * Interface:  BackstopDigitalIO
 * Required Port:  Port3
 * To Provider Message:  UpDownCylinder
 */
void
Backstop_Port3_UpDownCylinder()
{
}

