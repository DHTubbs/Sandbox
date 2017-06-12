/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTPKT_class.c
 *
 * Class:       Divert Packet  (DVRTPKT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"

/*
 * instance operation:  SheetDiverted
 */
void
Diverter_DVRTPKT_op_SheetDiverted( Diverter_DVRTPKT * self)
{
  Escher_ObjectSet_s divert_sheets_space={0}; Escher_ObjectSet_s * divert_sheets = &divert_sheets_space;Diverter_DVRTBAY * diverter_bay=0;
  /* SELECT one diverter_bay RELATED BY self->DVRTBAY[R4] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT one diverter_bay RELATED BY self->DVRTBAY[R4]" );
  diverter_bay = ( 0 != self ) ? self->DVRTBAY_R4 : 0;
  /* GENERATE DVRTBAY1:receive_sheet(sheet_caliper:self.web_caliper) TO diverter_bay */
  XTUML_OAL_STMT_TRACE( 1, "GENERATE DVRTBAY1:receive_sheet(sheet_caliper:self.web_caliper) TO diverter_bay" );
  { Diverter_DVRTBAYevent1 * e = (Diverter_DVRTBAYevent1 *) Escher_NewxtUMLEvent( diverter_bay, &Diverter_DVRTBAYevent1c );
    e->p_sheet_caliper = self->web_caliper;
    Escher_SendEvent( (Escher_xtUMLEvent_t *) e );
  }
  /* SELECT many divert_sheets RELATED BY self->DVRTSHT[R2] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many divert_sheets RELATED BY self->DVRTSHT[R2]" );
  Escher_ClearSet( divert_sheets );
  if ( 0 != self ) {
    Escher_CopySet( divert_sheets, &self->DVRTSHT_R2_consists_of );
  }
  /* IF ( empty divert_sheets ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( empty divert_sheets )" );
  if ( Escher_SetIsEmpty( divert_sheets ) ) {
    Diverter_DVRTPKT * divert_sheet=0;
    /* UNRELATE self FROM diverter_bay ACROSS R4 */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE self FROM diverter_bay ACROSS R4" );
    Diverter_DVRTPKT_R4_Unlink_receives_next( diverter_bay, self );
    /* SELECT one divert_sheet RELATED BY self->DVRTPKT[R1.next] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one divert_sheet RELATED BY self->DVRTPKT[R1.next]" );
    divert_sheet = ( 0 != self ) ? self->DVRTPKT_R1_next : 0;
    /* IF ( not_empty divert_sheet ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( not_empty divert_sheet )" );
    if ( ( 0 != divert_sheet ) ) {
      /* UNRELATE self FROM divert_sheet ACROSS R1 */
      XTUML_OAL_STMT_TRACE( 3, "UNRELATE self FROM divert_sheet ACROSS R1" );
      Diverter_DVRTPKT_R1_Unlink_next( self, divert_sheet );
      /* RELATE divert_sheet TO diverter_bay ACROSS R4 */
      XTUML_OAL_STMT_TRACE( 3, "RELATE divert_sheet TO diverter_bay ACROSS R4" );
      Diverter_DVRTPKT_R4_Link_receives_next( diverter_bay, divert_sheet );
    }
    /* GENERATE DVRTBAY2:divert_packet_received() TO diverter_bay */
    XTUML_OAL_STMT_TRACE( 2, "GENERATE DVRTBAY2:divert_packet_received() TO diverter_bay" );
    { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( diverter_bay, &Diverter_DVRTBAYevent2c );
      Escher_SendEvent( e );
    }
    /* DELETE OBJECT INSTANCE self */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE self" );
    if ( 0 == self ) {
      XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) self, Diverter_DOMAIN_ID, Diverter_DVRTPKT_CLASS_NUMBER );
  }
  Escher_ClearSet( divert_sheets ); 

}

/*
 * instance operation:  UpdatePosition
 */
void
Diverter_DVRTPKT_op_UpdatePosition( Diverter_DVRTPKT * self, const i_t p_sheet_travel_dist, const i_t p_web_travel_dist )
{
  Diverter_DVRTSHT * divert_sheet=0;Escher_ObjectSet_s divert_sheets_space={0}; Escher_ObjectSet_s * divert_sheets = &divert_sheets_space;
  /* IF ( ( self.trailing_edge_position < 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( self.trailing_edge_position < 0 ) )" );
  if ( ( self->trailing_edge_position < 0 ) ) {
    /* ASSIGN self.leading_edge_position = ( self.leading_edge_position + PARAM.web_travel_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.leading_edge_position = ( self.leading_edge_position + PARAM.web_travel_dist )" );
    self->leading_edge_position = ( self->leading_edge_position + p_web_travel_dist );
    /* IF ( ( self.leading_edge_position > 0 ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( self.leading_edge_position > 0 ) )" );
    if ( ( self->leading_edge_position > 0 ) ) {
      /* ASSIGN self.leading_edge_position = 0 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN self.leading_edge_position = 0" );
      self->leading_edge_position = 0;
    }
    /* ASSIGN self.trailing_edge_position = ( self.trailing_edge_position + PARAM.web_travel_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.trailing_edge_position = ( self.trailing_edge_position + PARAM.web_travel_dist )" );
    self->trailing_edge_position = ( self->trailing_edge_position + p_web_travel_dist );
    /* IF ( ( self.trailing_edge_position > 0 ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( self.trailing_edge_position > 0 ) )" );
    if ( ( self->trailing_edge_position > 0 ) ) {
      /* ASSIGN self.trailing_edge_position = 0 */
      XTUML_OAL_STMT_TRACE( 3, "ASSIGN self.trailing_edge_position = 0" );
      self->trailing_edge_position = 0;
    }
  }
  /* SELECT many divert_sheets RELATED BY self->DVRTSHT[R2] */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many divert_sheets RELATED BY self->DVRTSHT[R2]" );
  Escher_ClearSet( divert_sheets );
  if ( 0 != self ) {
    Escher_CopySet( divert_sheets, &self->DVRTSHT_R2_consists_of );
  }
  /* FOR EACH divert_sheet IN divert_sheets */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH divert_sheet IN divert_sheets" );
  { Escher_Iterator_s iterdivert_sheet;
  Diverter_DVRTSHT * iidivert_sheet;
  Escher_IteratorReset( &iterdivert_sheet, divert_sheets );
  while ( (iidivert_sheet = (Diverter_DVRTSHT *)Escher_IteratorNext( &iterdivert_sheet )) != 0 ) {
    divert_sheet = iidivert_sheet; {
    /* divert_sheet.UpdatePosition( sheet_travel_dist:PARAM.sheet_travel_dist, web_travel_dist:PARAM.web_travel_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "divert_sheet.UpdatePosition( sheet_travel_dist:PARAM.sheet_travel_dist, web_travel_dist:PARAM.web_travel_dist )" );
    Diverter_DVRTSHT_op_UpdatePosition( divert_sheet,  p_sheet_travel_dist, p_web_travel_dist );
  }}}
  Escher_ClearSet( divert_sheets ); 

}


/*
 * RELATE <left> DVRTPKT TO <right> DVRTPKT ACROSS R1.'next'
 */
void
Diverter_DVRTPKT_R1_Link_next( Diverter_DVRTPKT * left, Diverter_DVRTPKT * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R1_Link_next" );
    return;
  }
  left->DVRTPKT_R1_next = right; /* SR L1 */
  right->DVRTPKT_R1_prev = left; /* SR L2 */
}

/*
 * UNRELATE <left> DVRTPKT FROM <right> DVRTPKT ACROSS R1.'next'
 */
void
Diverter_DVRTPKT_R1_Unlink_next( Diverter_DVRTPKT * left, Diverter_DVRTPKT * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R1_Unlink_next" );
    return;
  }
  left->DVRTPKT_R1_next = 0; /* SR U1 */
  right->DVRTPKT_R1_prev = 0; /* SR U2 */
}

/*
 * RELATE <left> DVRTPKT TO <right> DVRTPKT ACROSS R1.'prev'
 */
void
Diverter_DVRTPKT_R1_Link_prev( Diverter_DVRTPKT * left, Diverter_DVRTPKT * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R1_Link_prev" );
    return;
  }
  right->DVRTPKT_R1_next = left; /* SR L4 */
  left->DVRTPKT_R1_prev = right; /* SR L5 */
}

/*
 * UNRELATE <left> DVRTPKT FROM <right> DVRTPKT ACROSS R1.'prev'
 */
void
Diverter_DVRTPKT_R1_Unlink_prev( Diverter_DVRTPKT * left, Diverter_DVRTPKT * right )
{
  if ( (left == 0) || (right == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R1_Unlink_prev" );
    return;
  }
  right->DVRTPKT_R1_next = 0; /* SR U4 */
  left->DVRTPKT_R1_prev = 0; /* SR U5 */
}

/*
 * RELATE DVRTBAY TO DVRTPKT ACROSS R4
 */
void
Diverter_DVRTPKT_R4_Link_receives_next( Diverter_DVRTBAY * part, Diverter_DVRTPKT * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R4_Link_receives_next" );
    return;
  }
  form->DVRTBAY_R4 = part;
  part->DVRTPKT_R4_receives_next = form;
}

/*
 * UNRELATE DVRTBAY FROM DVRTPKT ACROSS R4
 */
void
Diverter_DVRTPKT_R4_Unlink_receives_next( Diverter_DVRTBAY * part, Diverter_DVRTPKT * form )
{
  if ( (part == 0) || (form == 0) ) {
    XTUML_EMPTY_HANDLE_TRACE( "DVRTPKT", "Diverter_DVRTPKT_R4_Unlink_receives_next" );
    return;
  }
  form->DVRTBAY_R4 = 0;
  part->DVRTPKT_R4_receives_next = 0;
}


/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Divert Packet  (DVRTPKT)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_DVRTPKT_container[ Diverter_DVRTPKT_MAX_EXTENT_SIZE ];
static Diverter_DVRTPKT Diverter_DVRTPKT_instances[ Diverter_DVRTPKT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_DVRTPKT_extent = {
  {0}, {0}, &Diverter_DVRTPKT_container[ 0 ],
  (Escher_iHandle_t) &Diverter_DVRTPKT_instances,
  sizeof( Diverter_DVRTPKT ), 0, Diverter_DVRTPKT_MAX_EXTENT_SIZE
  };
/*----------------------------------------------------------------------------
 * State and transition action implementations for the following class:
 *
 * Class:      Divert Packet  (DVRTPKT)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/

/*
 * State 1:  [Tracking]
 */
static void Diverter_DVRTPKT_CB_act1( Diverter_DVRTPKT *, const Escher_xtUMLEvent_t * const );
static void
Diverter_DVRTPKT_CB_act1( Diverter_DVRTPKT * self, const Escher_xtUMLEvent_t * const event )
{
  Diverter_DVRTPKT * divert_packet=0;i_t sheet_dist;i_t web_dist;i_t sheet_handler_speed;i_t web_speed;Escher_ObjectSet_s divert_packets_space={0}; Escher_ObjectSet_s * divert_packets = &divert_packets_space;
  /* ASSIGN web_speed = 100 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN web_speed = 100" );
  web_speed = 100;
  /* ASSIGN sheet_handler_speed = 105 */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sheet_handler_speed = 105" );
  sheet_handler_speed = 105;
  /* ASSIGN web_dist = ( web_speed / 60 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN web_dist = ( web_speed / 60 )" );
  web_dist = ( web_speed / 60 );
  /* ASSIGN sheet_dist = ( sheet_handler_speed / 60 ) */
  XTUML_OAL_STMT_TRACE( 1, "ASSIGN sheet_dist = ( sheet_handler_speed / 60 )" );
  sheet_dist = ( sheet_handler_speed / 60 );
  /* SELECT many divert_packets FROM INSTANCES OF DVRTPKT */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many divert_packets FROM INSTANCES OF DVRTPKT" );
  Escher_CopySet( divert_packets, &pG_Diverter_DVRTPKT_extent.active );
  /* FOR EACH divert_packet IN divert_packets */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH divert_packet IN divert_packets" );
  { Escher_Iterator_s iterdivert_packet;
  Diverter_DVRTPKT * iidivert_packet;
  Escher_IteratorReset( &iterdivert_packet, divert_packets );
  while ( (iidivert_packet = (Diverter_DVRTPKT *)Escher_IteratorNext( &iterdivert_packet )) != 0 ) {
    divert_packet = iidivert_packet; {
    /* divert_packet.UpdatePosition( sheet_travel_dist:sheet_dist, web_travel_dist:web_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "divert_packet.UpdatePosition( sheet_travel_dist:sheet_dist, web_travel_dist:web_dist )" );
    Diverter_DVRTPKT_op_UpdatePosition( divert_packet,  sheet_dist, web_dist );
  }}}
  Escher_ClearSet( divert_packets );
}




/*
 * State-Event Matrix (SEM)
 * Row index is object (MC enumerated) current state.
 * Row zero is the uninitialized state (e.g., for creation event transitions).
 * Column index is (MC enumerated) state machine events.
 */
static const Escher_SEMcell_t Diverter_DVRTPKT_CB_StateEventMatrix[ 1 + 1 ][ 0 ] = {
  /* row 0:  uninitialized state (for creation events) */
  {  },
  /* row 1:  Diverter_DVRTPKT_CB_STATE_1 (Tracking) */
  {  }
};

  /*
   * Array of pointers to the class state action procedures.
   * Index is the (MC enumerated) number of the state action to execute.
   */
  static const StateAction_t Diverter_DVRTPKT_CB_acts[ 2 ] = {
    (StateAction_t) 0,
    (StateAction_t) Diverter_DVRTPKT_CB_act1  /* Tracking */
  };

  /*
   * Array of string names of the state machine names.
   * Index is the (MC enumerated) number of the state.
   */
  static const c_t * const state_name_strings_CB[ 2 ] = {
    "",
    "Tracking"
  };

/*
 * class-based state machine event dispatching
 */
void
Diverter_DVRTPKT_CBDispatch( Escher_xtUMLEvent_t * event )
{
  static Escher_InstanceBase_t class_based_singleton = { Diverter_DVRTPKT_CB_STATE_1 };
  Escher_EventNumber_t event_number = GetOoaEventNumber( event );
  Escher_StateNumber_t current_state = class_based_singleton.current_state;
  Escher_StateNumber_t next_state = Diverter_DVRTPKT_CB_StateEventMatrix[ current_state ][ event_number ];

  if ( next_state <= 1 ) {
    STATE_TXN_START_TRACE( "DVRTPKT", current_state, state_name_strings_CB[ current_state ] );
    /* Execute the state action and update the current state.  */
    ( *Diverter_DVRTPKT_CB_acts[ next_state ] )( &class_based_singleton, event );
    class_based_singleton.current_state = next_state;
    STATE_TXN_END_TRACE( "DVRTPKT", next_state, state_name_strings_CB[ next_state ] );
  } else {
    if ( EVENT_CANT_HAPPEN == next_state ) {
      /* Event cannot happen.  */
      UserEventCantHappenCallout( current_state, next_state, event_number );
      STATE_TXN_CH_TRACE( "DVRTPKT", current_state );
    } else if ( EVENT_IS_IGNORED == next_state ) {
      /* Event ignored */
      STATE_TXN_IG_TRACE( "DVRTPKT", current_state );
    } else {
      /* Translation/memory/stack error, etc - TBD */
    }
  }
}


