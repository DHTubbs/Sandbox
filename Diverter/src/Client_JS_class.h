/*----------------------------------------------------------------------------
 * File:  Client_JS_class.h
 *
 * Class:       xtfr_jog_switch  (JS)
 * Component:   Client
 *
 * your copyright statement can go here (from te_copyright.body)
 *--------------------------------------------------------------------------*/

#ifndef CLIENT_JS_CLASS_H
#define CLIENT_JS_CLASS_H

#ifdef	__cplusplus
extern	"C"	{
#endif

/*
 * Structural representation of application analysis class:
 *   xtfr_jog_switch  (JS)
 */
struct Client_JS {

  /* application analysis class attributes */
  Diverter_Jog_Switch_Position_t position;  /* - position */

};



#define Client_JS_MAX_EXTENT_SIZE 10
extern Escher_Extent_t pG_Client_JS_extent;

#ifdef	__cplusplus
}
#endif

#endif  /* CLIENT_JS_CLASS_H */


