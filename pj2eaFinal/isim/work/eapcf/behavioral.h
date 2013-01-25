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

#ifndef H_Work_eapcf_behavioral_H
#define H_Work_eapcf_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_eapcf_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[8];

    HSim__s1 SA[12];
  char *t30;
  char *t31;
  char *t32;
  char *t33;
    Work_eapcf_behavioral(const char * name);
    ~Work_eapcf_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_eapcf_behavioral(const char *name);

#endif
