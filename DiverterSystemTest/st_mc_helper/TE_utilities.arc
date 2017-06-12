.//============================================================================
.// BridgePoint Model Compiler Translation File: TE_utilities.arc
.//
.// This file contains functions that work with the OoaOfOoa TE sub-system. 
.//
.// Functions:
.//    MarkObjectExtentSize
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.// Set the array size for the application for the class specified
.function MarkObjectExtentSize  .// string, string, integer
  .param string compName
  .param string classKeyLetters
  .param integer arraySize
  .//
  .select many te_classes from instances of TE_CLASS where (selected.Key_Lett == classKeyLetters)
  .for each te_class in te_classes
    .select one c_c related by te_class->TE_C[R2064]->C_C[R2054] where (selected.Name == compName)
    .if (not_empty c_c)
      .// Found the right class
      .assign te_class.MaxExtentSize = arraySize
      .// Output the information is csv format for documentation purposes
      .select one o_obj related by te_class->O_OBJ[R2019]
${te_class.MaxExtentSize},${o_obj.Name},${te_class.Key_Lett},${te_class.Numb},${compName}
      .break for
    .end if
  .end for
.end function