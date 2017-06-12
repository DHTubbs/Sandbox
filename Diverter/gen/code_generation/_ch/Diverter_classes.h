/*----------------------------------------------------------------------------
 * File:  Diverter_classes.h
 *
 * This file defines the object type identification numbers for all classes
 * in the component:  Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_CLASSES_H
#define DIVERTER_CLASSES_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Initialization services for component:  Diverter
 */
extern Escher_Extent_t * const Diverter_class_info[];
extern const EventTaker_t Diverter_EventDispatcher[];
void Diverter_execute_initialization( void );

#define Diverter_STATE_MODELS 15
/* Define constants to map to class numbers.  */
#define Diverter_ARBLST_CLASS_NUMBER 0
#define Diverter_MANSEQ_CLASS_NUMBER 1
#define Diverter_MOTINH_CLASS_NUMBER 2
#define Diverter_AUTOSEQ_CLASS_NUMBER 3
#define Diverter_CLX2HRDCGSEQ_CLASS_NUMBER 4
#define Diverter_CLX1DCGSEQ_CLASS_NUMBER 5
#define Diverter_DVRTPKT_CLASS_NUMBER 6
#define Diverter_ACTR_CLASS_NUMBER 7
#define Diverter_TRKPT_CLASS_NUMBER 8
#define Diverter_DVRTBAY_CLASS_NUMBER 9
#define Diverter_XTFRCNVR_CLASS_NUMBER 10
#define Diverter_FNGRS_CLASS_NUMBER 11
#define Diverter_DVTPAN_CLASS_NUMBER 12
#define Diverter_DVRTPKT_CLASS_NUMBER_CB 13
#define Diverter_TRKPT_CLASS_NUMBER_CB 14
#define Diverter_DVRTSHT_CLASS_NUMBER 15
#define Diverter_DVRTSTK_CLASS_NUMBER 16
#define Diverter_MAX_CLASS_NUMBERS 17

/* Provide a map of classes to task numbers.  */
#define Diverter_TASK_NUMBERS  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

#define Diverter_class_dispatchers\
  Diverter_ARBLST_Dispatch,\
  Diverter_MANSEQ_Dispatch,\
  Diverter_MOTINH_Dispatch,\
  Diverter_AUTOSEQ_Dispatch,\
  Diverter_CLX2HRDCGSEQ_Dispatch,\
  Diverter_CLX1DCGSEQ_Dispatch,\
  0,\
  Diverter_ACTR_Dispatch,\
  0,\
  Diverter_DVRTBAY_Dispatch,\
  Diverter_XTFRCNVR_Dispatch,\
  Diverter_FNGRS_Dispatch,\
  Diverter_DVTPAN_Dispatch,\
  Diverter_DVRTPKT_CBDispatch,\
  Diverter_TRKPT_CBDispatch

/* Provide definitions of the shapes of the class structures.  */

typedef struct Diverter_ARBLST Diverter_ARBLST;
typedef struct Diverter_MANSEQ Diverter_MANSEQ;
typedef struct Diverter_MOTINH Diverter_MOTINH;
typedef struct Diverter_AUTOSEQ Diverter_AUTOSEQ;
typedef struct Diverter_CLX2HRDCGSEQ Diverter_CLX2HRDCGSEQ;
typedef struct Diverter_CLX1DCGSEQ Diverter_CLX1DCGSEQ;
typedef struct Diverter_DVRTPKT Diverter_DVRTPKT;
typedef struct Diverter_ACTR Diverter_ACTR;
typedef struct Diverter_TRKPT Diverter_TRKPT;
typedef struct Diverter_DVRTBAY Diverter_DVRTBAY;
typedef struct Diverter_XTFRCNVR Diverter_XTFRCNVR;
typedef struct Diverter_FNGRS Diverter_FNGRS;
typedef struct Diverter_DVTPAN Diverter_DVTPAN;
typedef struct Diverter_DVRTPKT_CB Diverter_DVRTPKT_CB;
typedef struct Diverter_TRKPT_CB Diverter_TRKPT_CB;
typedef struct Diverter_DVRTSHT Diverter_DVRTSHT;
typedef struct Diverter_DVRTSTK Diverter_DVRTSTK;

/* union of class declarations so we may derive largest class size */
#define Diverter_CLASS_U \
  char Diverter_dummy;\

/*
 * Internal enumerated and structured data types for component:  Diverter
 */

/*
 * Enumerated Data Type:  Divert_Conv_Discharge_Alg
 */
typedef enum {
 Diverter_Divert_Conv_Discharge_Alg__UNINITIALIZED__e = -1,
 Diverter_Divert_Conv_Discharge_Alg_Dist_x1_Rollout_e = 0,
 Diverter_Divert_Conv_Discharge_Alg_Dist_x2_Hesitating_Rollout_e = 1
} Diverter_Divert_Conv_Discharge_Alg_t;

/*
 * Enumerated Data Type:  Actuator_Event_Type
 */
typedef enum {
 Diverter_Actuator_Event_Type__UNINITIALIZED__e = -1,
 Diverter_Actuator_Event_Type_Engage_Material_e = 0,
 Diverter_Actuator_Event_Type_Disengage_Material_e = 1
} Diverter_Actuator_Event_Type_t;

/*
 * Enumerated Data Type:  Sheet_End
 */
typedef enum {
 Diverter_Sheet_End__UNINITIALIZED__e = -1,
 Diverter_Sheet_End_Leading_e = 0,
 Diverter_Sheet_End_Trailing_e = 1
} Diverter_Sheet_End_t;


/*
 * UML Domain Functions (Synchronous Services)
 */
void Diverter_Init( void );


#include "TIM_bridge.h"
#include "Diverter.h"
#include "Diverter_ARBLST_class.h"
#include "Diverter_MANSEQ_class.h"
#include "Diverter_MOTINH_class.h"
#include "Diverter_AUTOSEQ_class.h"
#include "Diverter_CLX2HRDCGSEQ_class.h"
#include "Diverter_CLX1DCGSEQ_class.h"
#include "Diverter_DVRTPKT_class.h"
#include "Diverter_DVRTSHT_class.h"
#include "Diverter_ACTR_class.h"
#include "Diverter_TRKPT_class.h"
#include "Diverter_DVRTSTK_class.h"
#include "Diverter_DVRTBAY_class.h"
#include "Diverter_XTFRCNVR_class.h"
#include "Diverter_FNGRS_class.h"
#include "Diverter_DVTPAN_class.h"
/*
 * roll-up of all events (with their parameters) for component Diverter
 */
typedef union {
  Diverter_ARBLST_Events_u Diverter_ARBLST_Events_u_namespace;
  Diverter_MANSEQ_Events_u Diverter_MANSEQ_Events_u_namespace;
  Diverter_AUTOSEQ_Events_u Diverter_AUTOSEQ_Events_u_namespace;
  Diverter_CLX2HRDCGSEQ_Events_u Diverter_CLX2HRDCGSEQ_Events_u_namespace;
  Diverter_CLX1DCGSEQ_Events_u Diverter_CLX1DCGSEQ_Events_u_namespace;
  Diverter_ACTR_Events_u Diverter_ACTR_Events_u_namespace;
  Diverter_DVRTBAY_Events_u Diverter_DVRTBAY_Events_u_namespace;
  Diverter_XTFRCNVR_Events_u Diverter_XTFRCNVR_Events_u_namespace;
  Diverter_FNGRS_Events_u Diverter_FNGRS_Events_u_namespace;
  Diverter_DVTPAN_Events_u Diverter_DVTPAN_Events_u_namespace;
} Diverter_DomainEvents_u;

#ifdef	__cplusplus
}
#endif
#endif  /* DIVERTER_CLASSES_H */

