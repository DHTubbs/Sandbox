.//============================================================================
.// BridgePoint Model Compiler Translation File: Translation_Util.arc
.//
.// This file contains universal translation functions not tied to any specific
.// class in the model. 
.//
.// Functions:
.//    SortAscendingByNumbAttr
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.//
.// If a class has a 'Numb' attribute then the classes can be sorted based on 
.// the 'Numb' attributes value.
.function SortAscendingByNumbAttr
  .param inst_ref_set item_set
  .//
  .for each item in item_set
    .assign item.Order = 0
  .end for
  .//
  .assign item_set2 = item_set
  .for each item1 in item_set
    .for each item2 in item_set2
      .if ( item1.Numb != item2.Numb )
        .if ( item2.Numb > item1.Numb )
          .assign item2.Order = item2.Order + 1
        .end if
      .end if
    .end for
  .end for
.end function
.//
.//
