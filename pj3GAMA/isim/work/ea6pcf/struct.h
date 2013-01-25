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

#ifndef H_Work_ea6pcf_struct_H
#define H_Work_ea6pcf_struct_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_ea6pcf_struct: public HSim__s6 {
public:

    HSim__s1 SE[5];

    HSim__s1 SA[19];
  char *t69;
  char *t70;
  char *t71;
  char *t72;
    Work_ea6pcf_struct(const char * name);
    ~Work_ea6pcf_struct();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_ea6pcf_struct(const char *name);

#endif
