.//============================================================================
.// BridgePoint Model Compiler Translation File: PE_PE_utilities.arc
.//
.// This file contains functions that work with the OoaOfOoa PE_PE class. 
.//
.// Functions:
.//    C_C_GetContainingComponent
.//    EP_PKG_GetContainingPackage
.//
.// This file is designed to be included in other translation files.
.//============================================================================
.//
.// Recursively search upwards through the package hierarchy to find the
.// containing (parent/owning) component.
.function C_C_GetContainingComponent .// EP_PKG
  .param inst_ref ep_pkg
  .//
  .select any c_c from instances of C_C where ( false )
  .// Return empty c_c for a top-level package with no containing package or component.
  .select one s_sys related by ep_pkg->S_SYS[R1401]
  .if ( empty s_sys )
    .select one c_c related by ep_pkg->PE_PE[R8001]->C_C[R8003]
    .if ( empty c_c )
      .select one parent_ep_pkg related by ep_pkg->PE_PE[R8001]->EP_PKG[R8000]
      .if ( not_empty parent_ep_pkg )
        .invoke r = C_C_GetContainingComponent( parent_ep_pkg )
        .assign c_c = r.result
      .end if
    .end if
  .end if
  .assign attr_result = c_c
.end function
.//
.// Recursively search upwards through the component hierarchy to find the
.// containing (parent/owning) package.
.function EP_PKG_GetContainingPackage .// C_C
  .param inst_ref c_c
  .//
  .select one ep_pkg related by c_c->PE_PE[R8001]->EP_PKG[R8000]
  .if ( empty ep_pkg )
    .select one c_c related by c_c->PE_PE[R8001]->C_C[R8003]
    .invoke r = EP_PKG_GetContainingPackage( c_c )
    .assign ep_pkg = r.result
  .end if
  .assign attr_result = ep_pkg
.end function
