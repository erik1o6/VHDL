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

#ifndef H_Simprim_x_toc_x_toc_v_H
#define H_Simprim_x_toc_x_toc_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Simprim_x_toc_x_toc_v: public HSim__s6 {
public:

    HSim__s4 PE[3];
    HSim__s1 SE[1];

    Simprim_x_toc_x_toc_v(const char * name);
    ~Simprim_x_toc_x_toc_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createSimprim_x_toc_x_toc_v(const char *name);

#endif
