/*----------------------------------------------------------------------------
 * File:  Diverter_DVRTSHT_class.c
 *
 * Class:       Divert Sheet  (DVRTSHT)
 * Component:   Diverter
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#include "Diverter_sys_types.h"
#include "TIM_bridge.h"
#include "Diverter_classes.h"

/*
 * instance operation:  UpdatePosition
 */
void
Diverter_DVRTSHT_op_UpdatePosition( Diverter_DVRTSHT * self, const i_t p_sheet_travel_dist, const i_t p_web_travel_dist )
{
  Diverter_TRKPT * tracking_point=0;Escher_ObjectSet_s tracking_points_space={0}; Escher_ObjectSet_s * tracking_points = &tracking_points_space;
  /* IF ( ( ( self.position - self.length ) < 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( ( self.position - self.length ) < 0 ) )" );
  if ( ( ( self->position - self->length ) < 0 ) ) {
    /* ASSIGN self.position = ( self.position + PARAM.web_travel_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.position = ( self.position + PARAM.web_travel_dist )" );
    self->position = ( self->position + p_web_travel_dist );
  }
  else {
    /* ASSIGN self.position = ( self.position + PARAM.sheet_travel_dist ) */
    XTUML_OAL_STMT_TRACE( 2, "ASSIGN self.position = ( self.position + PARAM.sheet_travel_dist )" );
    self->position = ( self->position + p_sheet_travel_dist );
  }
  /* SELECT many tracking_points RELATED BY self->TRKPT[R3] WHERE ( ( ( ( SELECTED.edge_to_track == Leading ) and ( self.position >= SELECTED.effective_position ) ) or ( ( SELECTED.edge_to_track == Trailing ) and ( ( self.position - self.length ) >= SELECTED.effective_position ) ) ) ) */
  XTUML_OAL_STMT_TRACE( 1, "SELECT many tracking_points RELATED BY self->TRKPT[R3] WHERE ( ( ( ( SELECTED.edge_to_track == Leading ) and ( self.position >= SELECTED.effective_position ) ) or ( ( SELECTED.edge_to_track == Trailing ) and ( ( self.position - self.length ) >= SELECTED.effective_position ) ) ) )" );
  Escher_ClearSet( tracking_points );
  {Diverter_TRKPT * selected;
  Escher_Iterator_s iTRKPT_R3;
  Escher_IteratorReset( &iTRKPT_R3, &self->TRKPT_R3 );
  while ( 0 != ( selected = (Diverter_TRKPT *) Escher_IteratorNext( &iTRKPT_R3 ) ) ) {
    if ( ( ( ( selected->edge_to_track == Diverter_Sheet_End_Leading_e ) && ( self->position >= selected->effective_position ) ) || ( ( selected->edge_to_track == Diverter_Sheet_End_Trailing_e ) && ( ( self->position - self->length ) >= selected->effective_position ) ) ) ) {
      if ( ! Escher_SetContains( (Escher_ObjectSet_s *) tracking_points, selected ) ) {
        Escher_SetInsertElement( (Escher_ObjectSet_s *) tracking_points, selected );
  }}}}
  /* FOR EACH tracking_point IN tracking_points */
  XTUML_OAL_STMT_TRACE( 1, "FOR EACH tracking_point IN tracking_points" );
  { Escher_Iterator_s itertracking_point;
  Diverter_TRKPT * iitracking_point;
  Escher_IteratorReset( &itertracking_point, tracking_points );
  while ( (iitracking_point = (Diverter_TRKPT *)Escher_IteratorNext( &itertracking_point )) != 0 ) {
    tracking_point = iitracking_point; {
    Diverter_ACTR * actuator=0;
    /* SELECT one actuator RELATED BY tracking_point->ACTR[R3] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT one actuator RELATED BY tracking_point->ACTR[R3]" );
    actuator = ( 0 != tracking_point ) ? tracking_point->ACTR_R3_initiates_motion_on : 0;
    /* IF ( ( tracking_point.type == Engage_Material ) ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( ( tracking_point.type == Engage_Material ) )" );
    if ( ( tracking_point->type == Diverter_Actuator_Event_Type_Engage_Material_e ) ) {
      /* GENERATE ACTR1:activate() TO actuator */
      XTUML_OAL_STMT_TRACE( 3, "GENERATE ACTR1:activate() TO actuator" );
      { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( actuator, &Diverter_ACTRevent1c );
        Escher_SendEvent( e );
      }
    }
    else {
      /* GENERATE ACTR2:de_activate() TO actuator */
      XTUML_OAL_STMT_TRACE( 3, "GENERATE ACTR2:de_activate() TO actuator" );
      { Escher_xtUMLEvent_t * e = Escher_NewxtUMLEvent( actuator, &Diverter_ACTRevent2c );
        Escher_SendEvent( e );
      }
    }
    /* UNRELATE actuator FROM self ACROSS R3 USING tracking_point */
    XTUML_OAL_STMT_TRACE( 2, "UNRELATE actuator FROM self ACROSS R3 USING tracking_point" );
    Diverter_TRKPT_R3_Unlink( self, actuator, tracking_point );
    /* DELETE OBJECT INSTANCE tracking_point */
    XTUML_OAL_STMT_TRACE( 2, "DELETE OBJECT INSTANCE tracking_point" );
    if ( 0 == tracking_point ) {
      XTUML_EMPTY_HANDLE_TRACE( "TRKPT", "Escher_DeleteInstance" );
    }
    Escher_DeleteInstance( (Escher_iHandle_t) tracking_point, Diverter_DOMAIN_ID, Diverter_TRKPT_CLASS_NUMBER );
  }}}
  /* IF ( ( ( self.position - self.length ) >= 0 ) ) */
  XTUML_OAL_STMT_TRACE( 1, "IF ( ( ( self.position - self.length ) >= 0 ) )" );
  if ( ( ( self->position - self->length ) >= 0 ) ) {
    /* SELECT any tracking_point RELATED BY self->TRKPT[R3] */
    XTUML_OAL_STMT_TRACE( 2, "SELECT any tracking_point RELATED BY self->TRKPT[R3]" );
    tracking_point = ( 0 != self ) ? (Diverter_TRKPT *) Escher_SetGetAny( &self->TRKPT_R3 ) : 0;
    /* IF ( empty tracking_point ) */
    XTUML_OAL_STMT_TRACE( 2, "IF ( empty tracking_point )" );
    if ( ( 0 == tracking_point ) ) {
      Diverter_DVRTPKT * divert_packet=0;
      /* SELECT one divert_packet RELATED BY self->DVRTPKT[R2] */
      XTUML_OAL_STMT_TRACE( 3, "SELECT one divert_packet RELATED BY self->DVRTPKT[R2]" );
      divert_packet = ( 0 != self ) ? self->DVRTPKT_R2 : 0;
      /* divert_packet.SheetDiverted() */
      XTUML_OAL_STMT_TRACE( 3, "divert_packet.SheetDiverted()" );
      Diverter_DVRTPKT_op_SheetDiverted( divert_packet );
      /* DELETE OBJECT INSTANCE self */
      XTUML_OAL_STMT_TRACE( 3, "DELETE OBJECT INSTANCE self" );
      if ( 0 == self ) {
        XTUML_EMPTY_HANDLE_TRACE( "DVRTSHT", "Escher_DeleteInstance" );
      }
      Escher_DeleteInstance( (Escher_iHandle_t) self, Diverter_DOMAIN_ID, Diverter_DVRTSHT_CLASS_NUMBER );
    }
  }
  Escher_ClearSet( tracking_points ); 

}



/*----------------------------------------------------------------------------
 * Operation action methods implementation for the following class:
 *
 * Class:      Divert Sheet  (DVRTSHT)
 * Component:  Diverter
 *--------------------------------------------------------------------------*/
/*
 * Statically allocate space for the instance population for this class.
 * Allocate space for the class instance and its attribute values.
 * Depending upon the collection scheme, allocate containoids (collection
 * nodes) for gathering instances into free and active extents.
 */
static Escher_SetElement_s Diverter_DVRTSHT_container[ Diverter_DVRTSHT_MAX_EXTENT_SIZE ];
static Diverter_DVRTSHT Diverter_DVRTSHT_instances[ Diverter_DVRTSHT_MAX_EXTENT_SIZE ];
Escher_Extent_t pG_Diverter_DVRTSHT_extent = {
  {0}, {0}, &Diverter_DVRTSHT_container[ 0 ],
  (Escher_iHandle_t) &Diverter_DVRTSHT_instances,
  sizeof( Diverter_DVRTSHT ), 0, Diverter_DVRTSHT_MAX_EXTENT_SIZE
  };


