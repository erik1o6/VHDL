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

#ifndef H_Work_ea4nand_behavioral_H
#define H_Work_ea4nand_behavioral_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_ea4nand_behavioral: public HSim__s6 {
public:

    HSim__s1 SE[5];

  char t9;
  char t10;
  char t11;
  char t12;
    Work_ea4nand_behavioral(const char * name);
    ~Work_ea4nand_behavioral();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_ea4nand_behavioral(const char *name);

#endif
