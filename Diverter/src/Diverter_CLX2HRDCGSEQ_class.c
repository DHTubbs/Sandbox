/*----------------------------------------------------------------------------
 * File:  Diverter_CLX2HRDCGSEQ_class.c
 *
 * Class:       Hesitating Rollout  (CLX2HRDCGSEQ)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"


/*
 * RELATE AUTOSEQ TO CLX2HRDCGSEQ ACROSS R9
 */
void
Diverter_CLX2HRDCGSEQ_R9_Link( Diverter_AUTOSEQ * supertype, Diverter_CLX2HRDCGSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "CLX2HRDCGSEQ", "Diverter_CLX2HRDCGSEQ_R9_Link" );
    return;
  }
  subtype->Id = supertype->Id;
  /* Optimized linkage for CLX2HRDCGSEQ->AUTOSEQ[R9] */
  subtype->AUTOSEQ_R9 = supertype;
  /* Optimized linkage for AUTOSEQ->CLX2HRDCGSEQ[R9] */
  supertype->R9_subtype = subtype;
  supertype->R9_object_id = Diverter_CLX2HRDCGSEQ_CLASS_NUMBER;
}


/*
 * UNRELATE AUTOSEQ FROM CLX2HRDCGSEQ ACROSS R9
 */
void
Diverter_CLX2HRDCGSEQ_R9_Unlink( Diverter_AUTOSEQ * supertype, Diverter_CLX2HRDCGSEQ * subtype )
{
  if ( (supertype == 0) || (subtype == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "CLX2HRDCGSEQ", "Diverter_CLX2HRDCGSEQ_R9_Unlink" );
    return;
  }
  subtype->AUTOSEQ_R9 = 0;
  /* Note:  AUTOSEQ->CLX2HRDCGSEQ[R9] not navigated */
}


/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_CLX2HRDCGSEQ_container[ Diverter_CLX2HRDCGSEQ_MAX_EXTENT_SIZE ];
static Diverter_CLX2HRDCGSEQ Diverter_CLX2HRDCGSEQ_instances[ Diverter_CLX2HRDCGSEQ_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_CLX2HRDCGSEQ_extent = {
  {0}, {0}, &Diverter_CLX2HRDCGSEQ_container[ 0 ],
  (Escher_iHandle_t) &Diverter_CLX2HRDCGSEQ_instances,
  sizeof( Diverter_CLX2HRDCGSEQ ), Diverter_CLX2HRDCGSEQ_STATE_1, Diverter_CLX2HRDCGSEQ_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Hesitating Rollout  (CLX2HRDCGSEQ)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Waiting]
 */
static void Diverter_CLX2HRDCGSEQ_act1( Diverter_CLX2HRDCGSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_CLX2HRDCGSEQ_act1( Diverter_CLX2HRDCGSEQ * self, const Escher_xtUMLEvent_t * const event )
{
}

/*
 * State 2:  [FirstMove]
 */
static void Diverter_CLX2HRDCGSEQ_act2( Diverter_CLX2HRDCGSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_CLX2HRDCGSEQ_act2( Diverter_CLX2HRDCGSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_AUTOSEQ * auto_seq=0;
  /* SELECT one auto_seq RELATED BY self->AUTOSEQ[R9] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one auto_seq RELATED BY self->AUTOSEQ[R9]" );
  auto_seq = ( 0 != self ) ? self->AUTOSEQ_R9 : 0;
  /* SEND xtfrcnvr::jog(acceleration:- 1, direction:auto_seq.motor_direction, duration:self.preliminary_move_time, velocity:- 1) */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::jog(acceleration:- 1, direction:auto_seq.motor_direction, duration:self.preliminary_move_time, velocity:- 1)" );
  Diverter_xtfrcnvr_jog( -1, auto_seq->motor_direction, self->preliminary_move_time, -1 );
}

/*
 * State 3:  [BackupMove]
 */
static void Diverter_CLX2HRDCGSEQ_act3( Diverter_CLX2HRDCGSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_CLX2HRDCGSEQ_act3( Diverter_CLX2HRDCGSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_Motor_Direction_t motor_dir;Diverter_AUTOSEQ * auto_seq=0;
  /* SELECT one auto_seq RELATED BY self->AUTOSEQ[R9] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one auto_seq RELATED BY self->AUTOSEQ[R9]" );
  auto_seq = ( 0 != self ) ? self->AUTOSEQ_R9 : 0;
  /* ASSIGN motor_dir = Forward */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN motor_dir = Forward" );
  motor_dir = Diverter_Motor_Direction_Forward_e;
  /* IF ( ( auto_seq.motor_direction == Forward ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( auto_seq.motor_direction == Forward ) )" );
  if ( ( auto_seq->motor_direction == Diverter_Motor_Direction_Forward_e ) ) {
    /* ASSIGN motor_dir = Reverse */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN motor_dir = Reverse" );
    motor_dir = Diverter_Motor_Direction_Reverse_e;
  }
  /* SEND xtfrcnvr::jog(acceleration:- 1, direction:motor_dir, duration:self.preliminary_move_time, velocity:- 1) */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::jog(acceleration:- 1, direction:motor_dir, duration:self.preliminary_move_time, velocity:- 1)" );
  Diverter_xtfrcnvr_jog( -1, motor_dir, self->preliminary_move_time, -1 );
}

/*
 * State 4:  [FullLengthMove]
 */
static void Diverter_CLX2HRDCGSEQ_act4( Diverter_CLX2HRDCGSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_CLX2HRDCGSEQ_act4( Diverter_CLX2HRDCGSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_AUTOSEQ * auto_seq=0;
  /* SELECT one auto_seq RELATED BY self->AUTOSEQ[R9] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one auto_seq RELATED BY self->AUTOSEQ[R9]" );
  auto_seq = ( 0 != self ) ? self->AUTOSEQ_R9 : 0;
  /* SEND xtfrcnvr::jog(acceleration:- 1, direction:auto_seq.motor_direction, duration:auto_seq.time_to_run, velocity:- 1) */
  XTUML_OAL_STMT_TRACE( 1, "SEND xtfrcnvr::jog(acceleration:- 1, direction:auto_seq.motor_direction, duration:auto_seq.time_to_run, velocity:- 1)" );
  Diverter_xtfrcnvr_jog( -1, auto_seq->motor_direction, auto_seq->time_to_run, -1 );
}

/*
 * State 5:  [ConveyorEmpty]
 */
static void Diverter_CLX2HRDCGSEQ_act5( Diverter_CLX2HRDCGSEQ *, const Escher_xtUMLEvent_t * const );
static void
Diverter_CLX2HRDCGSEQ_act5( Diverter_CLX2HRDCGSEQ * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_XTFRCNVR * xtfr_conveyor=0;Diverter_AUTOSEQ * auto_seq=0;
  /* SELECT one auto_seq RELATED BY self->AUTOSEQ[R9] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one auto_seq RELATED BY self->AUTOSEQ[R9]" );
  auto_seq = ( 0 != self ) ? self->AUTOSEQ_R9 : 0;
  /* SELECT one xtfr_conveyor RELATED BY auto_seq->XTFRCNVR[R8] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one xtfr_conveyor RELATED BY auto_seq->XTFRCNVR[R8]" );
  xtfr_conveyor = ( 0 != auto_seq ) ? auto_seq->XTFRCNVR_R8 : 0;
  /* UNRELATE auto_seq FROM xtfr_conveyor ACROSS R8 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE auto_seq FROM xtfr_conveyor ACROSS R8" );
  Diverter_AUTOSEQ_R8_Unlink( xtfr_conveyor, auto_seq );
  /* UNRELATE self FROM auto_seq ACROSS R9 */
  XTUML_OAL_STMT_TRACE( 1, "UNRELATE self FROM auto_seq ACROSS R9" );
  Diverter_CLX2HRDCGSEQ_R9_Unlink( auto_seq, self );
  /* GENERATE XTFRCNVR7:automatic_sequence_cmplt() TO xtfr_conveyor */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE XTFRCNVR7:automatic_sequence_cmplt() TO xtfr_conveyor" );
  { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( xtfr_conveyor, &Diverter_XTFRCNVRevent7c );
    Escher_SendEvent( e );
  }
  /* DELETE OBJECT INSTANCE self */
  XTUML_OAL_STMT_TRACE( 1, "DELETE OBJECT INSTANCE self" );
  if ( 0 == self ) {
    XTUML_EMPTY_HANDLE_TRACE( "CLX2HRDCGSEQ", "Escher_DeleteInstance" );
  }
  Escher_DeleteInstance( (Escher_iHandle_t) self, Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER );
}


const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_AUTOSEQ_PE11c = {
  Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER, DIVERTER_CLX2HRDCGSEQEVENT_AUTOSEQ_PE11NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE4c = {
  Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER, DIVERTER_CLX2HRDCGSEQEVENT_XTFRCNVR_PE4NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };

const Escher_xtUMLEventConstant_t Diverter_CLX2HRDCGSEQevent_XTFRCNVR_PE9c = {
  Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER, DIVERTER_CLX2HRDCGSEQEVENT_XTFRCNVR_PE9NUM,
  ESCHER_IS_INSTANCE_EVENT + ESCHER_IS_TRUE_EVENT };



/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_CLX2HRDCGSEQ_StateEventMatrix[ 5 + 1 ][ 3 ] = {
  /* row 0:  uninitialized state (for creation events) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 1:  Diverter_CLX2HRDCGSEQ_STATE_1 (Waiting) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, Diverter_CLX2HRDCGSEQ_STATE_2 },
  /* row 2:  Diverter_CLX2HRDCGSEQ_STATE_2 (FirstMove) */
  { EVENT_CANT_HAPPEN, Diverter_CLX2HRDCGSEQ_STATE_3, EVENT_CANT_HAPPEN },
  /* row 3:  Diverter_CLX2HRDCGSEQ_STATE_3 (BackupMove) */
  { EVENT_CANT_HAPPEN, Diverter_CLX2HRDCGSEQ_STATE_4, EVENT_CANT_HAPPEN },
  /* row 4:  Diverter_CLX2HRDCGSEQ_STATE_4 (FullLengthMove) */
  { Diverter_CLX2HRDCGSEQ_STATE_5, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN },
  /* row 5:  Diverter_CLX2HRDCGSEQ_STATE_5 (ConveyorEmpty) */
  { EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN, EVENT_CANT_HAPPEN }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_CLX2HRDCGSEQ_acts[ 6 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_CLX2HRDCGSEQ_act1,  /* Waiting */
    (StateAction_t) Diverter_CLX2HRDCGSEQ_act2,  /* FirstMove */
    (StateAction_t) Diverter_CLX2HRDCGSEQ_act3,  /* BackupMove */
    (StateAction_t) Diverter_CLX2HRDCGSEQ_act4,  /* FullLengthMove */
    (StateAction_t) Diverter_CLX2HRDCGSEQ_act5  /* ConveyorEmpty */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings[ 6 ] = {
    "",
    "Waiting",
    "FirstMove",
    "BackupMove",
    "FullLengthMove",
    "ConveyorEmpty"
  };

/*
 * instance state machine event dispatching
 */
void
Diverter_CLX2HRDCGSEQ_Dispatch( Escher_xtUMLEvent_t * event )
{
  Escher_iHandle_t instance = GetEventTargetInstance( event );
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state;
  Escher_StateNumber_t next_state;
  
  if ( 0 != instance ) {
    current_state = instance->current_state;
    if ( current_state > 5 ) {
      /* instance validation failure (object deleted while event in flight) */
      UserEventNoInstanceCallout( event_number );
    } else {
      next_state = Diverter_CLX2HRDCGSEQ_StateEventMatrix[ current_state ][ event_number ];
      if ( next_state <= 5 ) {
        STATE_TXN_START_TRACE( "CLX2HRDCGSEQ", current_state, state_name_strings[ current_state ] );
        /* Execute the state action and update the current state.  */
        ( *Diverter_CLX2HRDCGSEQ_acts[ next_state ] )( instance, event );
        STATE_TXN_END_TRACE( "CLX2HRDCGSEQ", next_state, state_name_strings[ next_state ] );

        /* Self deletion state transition? */
        if ( next_state == Diverter_CLX2HRDCGSEQ_STATE_2 ) {          Escher_DeleteInstance( instance, Diverter_DOMAIN_ID, Diverter_CLX2HRDCGSEQ_CLASS_NUMBER );
        } else {
          instance->current_state = next_state;
        }
      } else if ( next_state == EVENT_CANT_HAPPEN ) {
          /* event cant happen */
          UserEventCantHappenCallout( current_state, next_state, event_number );
          STATE_TXN_CH_TRACE( "CLX2HRDCGSEQ", current_state );
      } else if ( next_state == EVENT_IS_IGNORED ) {
          /* event ignored */
          STATE_TXN_IG_TRACE( "CLX2HRDCGSEQ", current_state );
      } else {
        /* empty else */
      }
    }
  }
}


