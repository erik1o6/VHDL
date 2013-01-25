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

#ifndef H_Work_ea6and_behavioral_H
#define H_Work_ea6and_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_ea6and_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[7];

  char t15;
  char t16;
  char t17;
  char t18;
  char t19;
    Work_ea6and_behavioral(const char * name);
    ~Work_ea6and_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_ea6and_behavioral(const char *name);

#endif
