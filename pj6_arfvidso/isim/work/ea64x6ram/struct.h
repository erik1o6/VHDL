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

#ifndef H_Work_ea64x6ram_struct_H
#define H_Work_ea64x6ram_struct_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_ea64x6ram_struct: public HSim__s6 {
public:

    HSim__s1 SE[5];

    HSim__s1 SA[5];
  char *t103;
    Work_ea64x6ram_struct(const char * name);
    ~Work_ea64x6ram_struct();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_ea64x6ram_struct(const char *name);

#endif
