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

#ifndef H_Simprim_x_lut4_x_lut4_v_H
#define H_Simprim_x_lut4_x_lut4_v_H
#ifdef __MINGW32__
#include "xsimMinGW.h"
#else
#include "xsim.h"
#endif


class Simprim_x_lut4_x_lut4_v: public HSim__s6 {
public:

  char *t189;
    HSim__s4 PE[12];
    HSim__s1 SE[5];

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

    class gPE_9_ : public HSimGenValCtor
    {
    public: 
        gPE_9_();
    };

    class gPE_10_ : public HSimGenValCtor
    {
    public: 
        gPE_10_();
    };

/* subprogram name lut4_mux4 */
char Fk(const char *Cb, const char *Ch);
HSimConstraints *c190;
HSim__s4 C2D;
    HSim__s1 SA[5];
    Simprim_x_lut4_x_lut4_v(const char * name);
    ~Simprim_x_lut4_x_lut4_v();
    void constructObject();
    void constructPorts();
    void reset();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};

class Simprim_x_lut4_x_lut4_v_wiredelay: public HSim__s6 {
public:
  Simprim_x_lut4_x_lut4_v *Arch;
  Simprim_x_lut4_x_lut4_v_wiredelay(const char* name,
    Simprim_x_lut4_x_lut4_v *arch,
    HSimConfigDecl* cfg);
    void constructObject();
    void architectureInstantiate(HSimConfigDecl* cfg);
    virtual void vhdlArchImplement();
};



HSim__s6 *createSimprim_x_lut4_x_lut4_v(const char *name);

#endif
