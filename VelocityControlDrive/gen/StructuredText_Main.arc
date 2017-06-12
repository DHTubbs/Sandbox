.//============================================================================
.// BridgePoint Model Compiler Translation File: StructuredText_Main.arc
.//
.// This file creates the code for the main task of the program.
.//============================================================================
.//
if (_lcl_intfc_program_control.b_first_scan_executed_task_2) then

	_lcl_intfc_program_control.b_disable_task_2 := b_TRUE;
	_lcl_intfc_program_control.b_initialized_task_2 := b_FALSE;
	_lcl_intfc_program_control.b_first_scan_executed_task_2 := b_FALSE;
end_if;

if (_lcl_intfc_program_control.b_disable_task_2 And
	(Not _lcl_intfc_program_control.b_initialized_task_2) And
	_lcl_intfc_program_control.b_initialized_task_3) then
	
	JSR(_0002_Initialization);
end_if;

if (_lcl_intfc_program_control.b_initialized_task_1 And
	_lcl_intfc_program_control.b_initialized_task_2 And
	_lcl_intfc_program_control.b_initialized_task_3) then
	
	_lcl_intfc_program_control.b_disable_task_2 := b_FALSE;
end_if;

if (_lcl_intfc_program_control.b_initialized_task_1 And
	_lcl_intfc_program_control.b_initialized_task_2 And
	_lcl_intfc_program_control.b_initialized_task_3) then


end_if;
.//  
.emit to file "../../src/MainMediumProgram.txt"
.//  
