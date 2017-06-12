.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_CleanSlate.arc
.//
.// This translation file creates the initialization code to create a completely
.// uninitialized model.  The structured text code created by this file should
.// be executed prior to any code that initializes the model with the intended
.// configuration.  The output format is structured text that can be copied and
.// pasted into a PLC program file. 
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: _opClearModel.txt
.//============================================================================
.//
.include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
(* 
Description: All actions required to initialize the program to an empty model state.
             This subroutine should be called once at the beginning of the program
             and never again!

Signature: JSR( _opClearModel );
*)

SBR(  );

.select many te_classes from instances of TE_CLASS
.for each te_class in te_classes
  .//
  .select one o_obj related by te_class->O_OBJ[R2019]
  .//
  .// Get the Model and Code Identifiers
  .invoke mi = grp_GetModelIdentifiers(o_obj)
  .invoke ci = grp_GetCodeIdentifiers(o_obj)
  .//
(* ${ci.classData} *)
  .// Create a loop if there are multiple instances
  .assign arraySuffix = ""
  .assign tabs = ""
  .if (te_class.MaxExtentSize > 0)
    .assign arraySuffix = "[inst]"
    .assign tabs = "${tabs}\t"
    .assign upperArrayBound = "_CONSTANTS.OBJ_ARRAY_UPPER_BOUND.d_${te_class.GeneratedName}_${te_class.Key_Lett}"
for inst := 0 to ${upperArrayBound} by 1 do
  .end if
  .//
  .// Initialize the identifying and referential attributes
  .select many te_attrs related by te_class->TE_ATTR[R2061]
  .for each te_attr in te_attrs
${tabs}${ci.gblClassData}${arraySuffix}.${te_attr.GeneratedName} := -1; 
  .end for
  .//
  .// Initialize the current state if a state machine is present
  .select any sm_ism related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_ISM[R517]
  .if (not_empty sm_ism)
    .// State machine exists, but is it empty
    .select any sm_state related by sm_ism->SM_SM[R517]->SM_STATE[R501]
    .if (not_empty sm_state)
      .// Clear Current State
${tabs}${ci.gblClassData}${arraySuffix}.d_current_state := 0;
      .// Clear Event Structure
${tabs}CPS(empty_event_struct, ${ci.gblClassEvents}${arraySuffix}.evt_lst, 1);
    .end if
  .end if
  .//
  .if (te_class.MaxExtentSize > 0)
end_for;
  .end if
  .select any sm_asm related by te_class->TE_SM[R2072]->SM_SM[R2043]->SM_ASM[R517]
  .if (not_empty sm_asm)
    .// State machine exists, but is it empty
    .select any sm_state related by sm_asm->SM_SM[R517]->SM_STATE[R501]
    .if (not_empty sm_state)
      .// Clear Current State

(* ${ci.assignerData} *)
${ci.gblAssignerData}.d_current_state := 0;
      .// Clear Event Structure
CPS(empty_event_struct, ${ci.gblAssignerEvents}.evt_lst, 1);
    .end if
  .end if
  
.end for
.//  
.emit to file "../../src/_opClearModel.txt"
.//  
