/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTBAY_class.h
 *
 * Class:       Diverter Bay  (DVRTBAY)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_DVRTBAY_CLASS_H
#define DIVERTER_DVRTBAY_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Diverter Bay  (DVRTBAY)
 */
struct Diverter_DVRTBAY {
  Escher_StateNumber_t current_state;
  /* application analysis class attributes */
  Escher_Timer_t * sheet_settling_timer;  /* - sheet_settling_timer */

  /* relationship storage */
  Diverter_DVRTPKT * DVRTPKT_R4_receives_next;
  Diverter_DVRTSTK * DVRTSTK_R6_creates;
  Diverter_XTFRCNVR * XTFRCNVR_R7;
};



#define Diverter_DVRTBAY_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_DVRTBAY_extent;

/*
 * instance event:  DVRTBAY2:'divert_packet_received'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_DVRTBAYevent2;
extern const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent2c;

/*
 * instance event:  DVRTBAY1:'receive_sheet'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  i_t p_sheet_caliper; /* sheet_caliper */
} Diverter_DVRTBAYevent1;
extern const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent1c;

/*
 * instance event:  DVRTBAY3:'start_discharge'
 */
typedef struct {
  EVENT_BASE_ATTRIBUTE_LIST         /* base attributes of all event classes */
  /* Note:  no supplemental data for this event */
} Diverter_DVRTBAYevent3;
extern const Escher_xtUMLEventConstant_t Diverter_DVRTBAYevent3c;

/*
 * instance event:  DVRTBAY4:'discharge_complete'
 * warning:  Event is not used in application - no code generated.
 */

/*
 * union of events targeted towards 'DVRTBAY' state machine
 */
typedef union {
  Diverter_DVRTBAYevent2 dvrtbay2_1;  
  Diverter_DVRTBAYevent1 dvrtbay1_2;  
  Diverter_DVRTBAYevent3 dvrtbay3_3;  
} Diverter_DVRTBAY_Events_u;

/*
 * enumeration of state model states for class
 */
#define Diverter_DVRTBAY_STATE_1 1  /* state [1]:  (Empty) */
#define Diverter_DVRTBAY_STATE_2 2  /* state [2]:  (ReceivingSheets) */
#define Diverter_DVRTBAY_STATE_3 3  /* state [3]:  (WaitForDischargeWindow) */
#define Diverter_DVRTBAY_STATE_4 4  /* state [4]:  (Discharging) */
/*
 * enumeration of state model event numbers
 */
#define DIVERTER_DVRTBAYEVENT1NUM 0  /* DVRTBAY1:'receive_sheet' */
#define DIVERTER_DVRTBAYEVENT2NUM 1  /* DVRTBAY2:'divert_packet_received' */
#define DIVERTER_DVRTBAYEVENT3NUM 2  /* DVRTBAY3:'start_discharge' */
extern void Diverter_DVRTBAY_Dispatch( Escher_xtUMLEvent_t * );

#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_DVRTBAY_CLASS_H */


