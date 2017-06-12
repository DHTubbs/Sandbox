.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_Relationships.arc
.//
.// This file creates structured text code snippets to select class instances
.// using the modeled relationships.  The output format is structured text that 
.// can be copied and pasted into a PLC program file.
.//
.// This file is designed as an initial translation file for the model compiler.
.//
.// Output: 
.//============================================================================
.//
.include "../../st_mc_helper/Translation_Util.arc"
.//include "../../st_mc_helper/PE_PE_utilities.arc"
.//include "../../st_mc_helper/O_TPARM_utilities.arc"
.//include "../../st_mc_helper/MWU_utilities.arc"
.//
.//
.// Start of Translation Code
.//
.//
.// Put all of the associations in numerical order to simplify lookup
.select many r_rels from instances of R_REL
.invoke SortAscendingByNumbAttr(r_rels)
.for each r_rel in r_rels
  .print "Relationship Order: ${r_rel.Order}: Relationship Number: ${r_rel.Numb}"
  .// Simple Association
  .select one r_form related by r_rel->R_SIMP[R206]->R_FORM[R208]
  .if (not_empty r_form)
    .// Found a formalized simple relationship
    .//
R${r_rel.Numb}

    .// Get the formalizer class
    .select one form_o_obj related by r_form->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201]
    .print "Formalizer Class: ${form_o_obj.Name}"
    .select one te_class related by form_o_obj->TE_CLASS[R2019]
    .if (not_empty te_class)
      .print "Found TE_CLASS: ${te_class.GeneratedName}"
    .end if
    .//
    .// Find the participating classes
    .select many r_parts related by r_form->R_SIMP[R208]->R_PART[R207]
    .for each r_part in r_parts
      .// Get the participating class
      .select one part_o_obj related by r_part->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201]
      .print "Participant Class: ${part_o_obj.Name}"
select one $l{form_o_obj.Key_Lett} related by self->${part_o_obj.Key_Lett}[R${r_rel.Numb}]

if (obj_cross_transfer_servo_000_003.e_id = cross_transfer_conveyor_000_007[inst].p_crsxfrsvo_id_r10) then
    .end for
  .end if
.end for
