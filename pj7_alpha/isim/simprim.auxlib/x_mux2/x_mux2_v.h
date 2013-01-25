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

#ifndef H_Simprim_x_mux2_x_mux2_v_H
#define H_Simprim_x_mux2_x_mux2_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Simprim_x_mux2_x_mux2_v: public HSim__s6 {
public:

  char *t228;
    HSim__s4 PE[9];
    HSim__s1 SE[4];

    class gPE_3_ : public HSimGenValCtor
    {
    public: 
        gPE_3_();
    };

    class gPE_4_ : public HSimGenValCtor
    {
    public: 
        gPE_4_();
    };

    class gPE_5_ : public HSimGenValCtor
    {
    public: 
        gPE_5_();
    };

    class gPE_6_ : public HSimGenValCtor
    {
    public: 
        gPE_6_();
    };

    class gPE_7_ : public HSimGenValCtor
    {
    public: 
        gPE_7_();
    };

    class gPE_8_ : public HSimGenValCtor
    {
    public: 
        gPE_8_();
    };

    HSim__s1 SA[3];
    Simprim_x_mux2_x_mux2_v(const char * name);
    ~Simprim_x_mux2_x_mux2_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Simprim_x_mux2_x_mux2_v_wiredelay: public HSim__s6 {
public:
  Simprim_x_mux2_x_mux2_v *Arch;
  Simprim_x_mux2_x_mux2_v_wiredelay(const char* name,
    Simprim_x_mux2_x_mux2_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createSimprim_x_mux2_x_mux2_v(const char *name);

#endif
