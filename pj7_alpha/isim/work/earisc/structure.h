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

#ifndef H_Work_earisc_structure_H
#define H_Work_earisc_structure_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Work_earisc_structure: public HSim__s6 {
public:

    HSim__s1 SE[21];

    HSim__s1 SA[213];
  char *t244;
  char *t245;
  char *t246;
  char *t247;
  char *t248;
  char *t249;
  char *t250;
  char *t251;
    Work_earisc_structure(const char * name);
    ~Work_earisc_structure();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createWork_earisc_structure(const char *name);

#endif
