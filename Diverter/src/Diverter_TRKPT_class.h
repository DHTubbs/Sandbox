/*----------------------------------------------------------------------------
 * File:  Diverter_TRKPT_class.h
 *
 * Class:       Tracking Point  (TRKPT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef DIVERTER_TRKPT_CLASS_H
#define DIVERTER_TRKPT_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   Tracking Point  (TRKPT)
 */
struct Diverter_TRKPT {

  /* application analysis class attributes */
  i_t TRKDVRTSHT_Id;  /* * TRKDVRTSHT_Id (R3) */
  i_t ACTR_Id;  /* * ACTR_Id (R3) */
  Diverter_Sheet_End_t edge_to_track;  /* - edge_to_track */
  i_t actual_position;  /* - actual_position */
  i_t offset_time;  /* - offset_time */
  i_t effective_position;  /* - effective_position */
  Diverter_Actuator_Event_Type_t type;  /* - type */

  /* relationship storage */
  Diverter_DVRTSHT * DVRTSHT_R3_responds_to_position_of;
  Diverter_ACTR * ACTR_R3_initiates_motion_on;
};

/* Note:  Link DVRTSHT to ACTR across R3 using TRKPT not needed.  */
void Diverter_TRKPT_R3_Unlink( Diverter_DVRTSHT *, Diverter_ACTR *, Diverter_TRKPT * );


#define Diverter_TRKPT_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Diverter_TRKPT_extent;

/*
 * class-based event:  TRKPT_A1:'correct_position'
 * warning:  Event is not used in application - no code generated.
 */


/*
 * enumeration of state model states for class
 */
#define Diverter_TRKPT_CB_STATE_1 1  /* state [1]:  (CorrectForVelocity) */

/*
 * enumeration of state model event numbers
 */

extern void Diverter_TRKPT_CBDispatch( Escher_xtUMLEvent_t * );


#ifdef	__cplusplus
}
#endif

#endif  /* DIVERTER_TRKPT_CLASS_H */


