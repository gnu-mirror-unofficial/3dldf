@q cmpxassn.w @> 
@q Created by Laurence Finston (LDF) Sun Dec  2 19:16:43 CET 2007 @>

@q **** (4) complex assignments.@>
@*3 complex assignments. 
\initials{LDF 2007.12.02.}

@q ***** (5) assignment --> complex_variable := complex_expression.@>   
@*4 \§assignment> $\longrightarrow$ \§complex variable> 
\.{:=} \§complex expression>. 
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: complex_variable ASSIGN complex_expression@>
{

  Complex* a = static_cast<Complex*>(@=$3@>);

  Int_Void_Ptr ivp = 
     Scan_Parse::assign_simple<Complex>(static_cast<Scanner_Node>(parameter),
                                       "Complex",
                                       @=$1@>,
                                       a);

  @=$$@> = ivp.v;

};

@q ***** (5) assignment --> complex_variable ASSIGN numeric_list @>   
@q ***** (5) RIGHT_PARENTHESIS                                   @>   

@*4 \§assignment> $\longrightarrow$ \§complex variable> 
\.{ASSIGN} \§numeric list>.
\initials{LDF 2007.12.04.}

\LOG
\initials{LDF 2007.12.04.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: complex_variable ASSIGN numeric_list@>
{
  Pointer_Vector<real>* pv = static_cast<Pointer_Vector<real>*>(@=$3@>); 

  if (pv && pv->v.size() > 0)
  {
      Complex* c = create_new<Complex>(0);

      real r = 0;
      real i = 0;

      if (pv->v.size() > 0)
         r = *pv->v[0];

      if (pv->v.size() > 1)
         i = *pv->v[1];

      delete pv;

      Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

      c->set(r, i, scanner_node);

      Int_Void_Ptr ivp = 
         Scan_Parse::assign_simple<Complex>(scanner_node,
                                           "Complex",
                                           @=$1@>,
                                           c);

      @=$$@> = ivp.v;
  }
  else
  {
 
     delete pv;

     @=$$@> = static_cast<void*>(0);
  }

};

