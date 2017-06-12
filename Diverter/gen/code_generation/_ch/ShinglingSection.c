/*----------------------------------------------------------------------------
 * File:  ShinglingSection.c
 *
 * UML Component Port Messages
 * Component/Module Name:  ShinglingSection
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "ShinglingSection.h"
#include "TIM_bridge.h"
#include "Motor_Drive.h"

/*
 * Interface:  ShinglingSectionDigitalIO
 * Required Port:  Port3
 * To Provider Message:  ChamberDampers
 */
void
ShinglingSection_Port3_ChamberDampers()
{
}

/*
 * Interface:  ShinglingSectionDigitalIO
 * Required Port:  Port3
 * To Provider Message:  MainDampers
 */
void
ShinglingSection_Port3_MainDampers()
{
}

/*
 * Interface:  ShinglingSectionDigitalIO
 * Required Port:  Port3
 * To Provider Message:  Multi_Flute
 */
void
ShinglingSection_Port3_Multi_Flute()
{
}

/*
 * Interface:  ShinglingSectionDigitalIO
 * Required Port:  Port3
 * To Provider Message:  SyncVacCylinders
 */
void
ShinglingSection_Port3_SyncVacCylinders()
{
}

