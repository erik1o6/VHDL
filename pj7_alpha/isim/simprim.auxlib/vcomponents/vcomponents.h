////////////////////////////////////////////////////////////////////////////////
//   ____  ____   
//  /   /\/   /  
// /___/  \  /   
// \   \   \/  
//  \   \        Copyright (c) 2003-2004 Xilinx, Inc.
//  /   /        All Right Reserved. 
// /---/   /\     
// \   \  /  \  
//  \___\/\___\
////////////////////////////////////////////////////////////////////////////////

#ifndef H_Simprim_vcomponents_H
#define H_Simprim_vcomponents_H

#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


#include "ieee/vital_timing/vital_timing.h"
#include "ieee/std_logic_1164/std_logic_1164.h"

class Simprim_vcomponents: public HSim__s6 {
public:
    HSim__s1 Sb;
    HSim__s1 Sd;
    HSim__s1 Sf;
    HSim__s1 Sh;
    HSim__s1 Sj;
    HSim__s1 Sm;
    HSim__s1 Sp;
    HSim__s1 Sr;
    HSim__s1 St;
    HSim__s1 Sv;
    HSim__s1 Sx;
    HSim__s1 Sz;
    HSim__s1 SB;
    HSim__s1 SD;
    HSim__s1 SF;
    HSim__s1 SH;
    HSim__s1 SJ;
    HSim__s1 SL;
    HSim__s1 SN;
    HSim__s1 SQ;
  Simprim_vcomponents(const HSimString &name);
  ~Simprim_vcomponents();
};

extern Simprim_vcomponents *SimprimVcomponents;

#endif
