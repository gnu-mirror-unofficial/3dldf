@q pnbvexpr.w @> 
@q Created by Laurence Finston Wed Jan 26 16:48:53 CET 2005 @>
     

@q * (0) |nurb_vector| expressions.@>
@** \§nurb vector> expressions.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |nurb_vector| primary.  @>
@* \§nurb vector primary>.
\initials{LDF 2005.01.26.}
  
\LOG
\initials{LDF 2005.01.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_vector_primary@>@/

@q ** (2) nurb_vector_primary --> nurb_vector_variable.@>
@*1 \§nurb vector primary> $\longrightarrow$ 
\§nurb vector variable>.  
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=nurb_vector_primary: nurb_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.01.26.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.26.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Nurb> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) nurb_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) nurb_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§nurb vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§nurb vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_vector_primary: LEFT_PARENTHESIS@>@/ 
@=nurb_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) nurb_vector secondary.@>

@* \§nurb vector secondary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> nurb_vector_secondary@>
  
@q ** (2) nurb_vector secondary --> nurb_vector_primary.@>
@*1 \§nurb vector secondary> $\longrightarrow$ 
\§nurb vector primary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_vector_secondary: nurb_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) nurb_vector tertiary.  @>

@* \§nurb vector tertiary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> nurb_vector_tertiary@>

@q ***** (5) nurb_vector tertiary --> nurb_vector_secondary.@>
@ \§nurb vector tertiary> $\longrightarrow$ 
\§nurb vector secondary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_vector_tertiary: nurb_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) nurb_vector expression.@>
@* \§nurb vector expression>.

\LOG
\initials{LDF 2005.01.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_vector_expression@>

@q ** (2) nurb_vector expression --> nurb_vector_tertiary.  @>
@*1 \§nurb vector expression> $\longrightarrow$ 
\§nurb vector tertiary>.

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_vector_expression: nurb_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

