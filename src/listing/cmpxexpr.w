@q cmpxexpr.w @> 
 
@q * (0) complex expressions.  @>
@** complex expressions.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Created this file.
\ENDLOG 

@q * (1) complex_primary.  @>
@* \§complex primary>.
\initials{LDF 2007.12.02.}  

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_primary@>@/

@q ** (2) complex_primary --> complex_variable.@>
@*1 \§complex primary> $\longrightarrow$ \§complex variable>.  

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=complex_primary: complex_variable@>@/
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

  else /* |   entry != static_cast<Id_Map_Entry_Node>(0) 
           && entry->object != static_cast<void*>(0)|  */

    @=$$@> = static_cast<void*>(create_new<Complex>(
                                  static_cast<Complex*>(
                                     entry->object))); 

};

@q ** (2) complex_primary --> LEFT_PARENTHESIS complex_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                       @>

@*1 \§complex primary> $\longrightarrow$ \.{\LP} 
\§complex expression> \.{\RP}.

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_primary: LEFT_PARENTHESIS complex_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) complex_primary --> LAST @>
@q ***** (5) complex_vector_expression.@>

@*4 \§complex primary> $\longrightarrow$ 
\.{LAST} \§complex vector expression>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=complex_primary: LAST complex_vector_expression@>@/
{ 

   Complex* c;

         c = create_new<Complex>(0);

   Pointer_Vector<Complex>* pv 
      = static_cast<Pointer_Vector<Complex>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == static_cast<Pointer_Vector<Complex>*>(0)|.@> 

@ Error handling:  |pv == |pv == static_cast<Pointer_Vector<Complex>*>(0)|.
\initials{LDF 2007.12.02.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Complex>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == static_cast<Pointer_Vector<Complex>*>(0))|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2007.12.02.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != static_cast<Pointer_Vector<Complex>*>(0) && pv->ctr > 0|.@> 

@ |pv != static_cast<Pointer_Vector<Complex>*>(0) && pv->ctr > 0|.  
Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2007.12.02.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q ** (2) complex_primary --> PLUS complex_primary.@> 

@*1 \§complex primary> $\longrightarrow$ \.{PLUS} 
\§complex primary>.

\LOG
\initials{LDF 2007.12.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_primary: PLUS complex_primary@>@/
{

  @=$$@> = complex_primary_rule_func_0(@=$2@>, PLUS, parameter);

};

@q ** (2) complex_primary --> MINUS complex_primary.@> 

@*1 \§complex primary> $\longrightarrow$ \.{MINUS} 
\§complex primary>.

\LOG
\initials{LDF 2007.12.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_primary: MINUS complex_primary@>@/
{

  @=$$@> = complex_primary_rule_func_0(@=$2@>, MINUS, parameter);

};

@q * (1) complex_secondary.  @>
@* \§complex secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_secondary@>
  
@q ** (2) complex secondary --> complex_primary.@>
@*1 \§complex secondary> $\longrightarrow$ \§complex primary>.

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_secondary: complex_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ***** (5) complex_secondary --> complex_secondary @>
@q ***** (5) times_or_over complex_primary.          @>

@*4 \§complex secondary> $\longrightarrow$ \§complex secondary> 
\§times or over> \§complex primary>. 
\initials{LDF 2007.12.11.}

\LOG
\initials{LDF 2007.12.11.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=complex_secondary: complex_secondary times_or_over complex_primary@>
{

   @=$$@> = complex_arith_op_rule_func(@=$1@>, 
                                       @=$3@>, 
                                       @=$2@>, 
                                       parameter);

};

@q * (1) complex tertiary.@>
@* \§complex tertiary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_tertiary@>

@q ** (2) complex tertiary --> complex_secondary.  @>
@*1 \§complex tertiary> $\longrightarrow$ \§complex secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_tertiary: complex_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q ***** (5) complex_tertiary --> complex_tertiary @>
@q ***** (5) PLUS complex_secondary.               @>

@ \§complex tertiary> $\longrightarrow$ \§complex tertiary> 
\.{PLUS} \§complex secondary>.
\initials{LDF 2007.12.11.}

\LOG
\initials{LDF 2007.12.11.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=complex_tertiary: complex_tertiary PLUS complex_secondary@>
{
   @=$$@> = complex_arith_op_rule_func(@=$1@>, @=$3@>, PLUS, parameter);
};

@q ***** (5) complex_tertiary --> complex_tertiary @>
@q ***** (5) MINUS complex_secondary.               @>

@ \§complex tertiary> $\longrightarrow$ \§complex tertiary> 
\.{MINUS} \§complex secondary>.
\initials{LDF 2007.12.11.}

\LOG
\initials{LDF 2007.12.11.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=complex_tertiary: complex_tertiary MINUS complex_secondary@>
{
   @=$$@> = complex_arith_op_rule_func(@=$1@>, @=$3@>, MINUS, parameter);
};

@q * (1) complex expression.@>
@* \§complex expression>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_expression@>

@q ** (2) complex expression --> complex_tertiary.  @>
@*1 \§complex expression> $\longrightarrow$ \§complex tertiary>.

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_expression: complex_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

