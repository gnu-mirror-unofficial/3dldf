@q ppnvexpr.w @> 
@q Created by Laurence Finston Tue Jan 11 21:12:43 CET 2005 @>
     

@q * (0) |pen_vector| expressions.@>
@** {\bf pen\_vector} expressions.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |pen_vector| primary.  @>
@* \§pen vector primary>.
\initials{LDF 2005.01.11.}
  
\LOG
\initials{LDF 2005.01.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> pen_vector_primary@>@/

@q ** (2) pen_vector_primary --> pen_vector_variable.@>
@*1 \§pen vector primary> $\longrightarrow$ 
\§pen vector variable>.  
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=pen_vector_primary: pen_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.01.11.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.11.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Pen> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) pen_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) pen_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§pen vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§pen vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=pen_vector_primary: LEFT_PARENTHESIS@>@/ 
@=pen_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) pen_vector secondary.@>

@* \§pen vector secondary>.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> pen_vector_secondary@>
  
@q ** (2) pen_vector secondary --> pen_vector_primary.@>
@*1 \§pen vector secondary> $\longrightarrow$ 
\§pen vector primary>.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=pen_vector_secondary: pen_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) pen_vector tertiary.  @>

@* \§pen vector tertiary>.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> pen_vector_tertiary@>

@q ***** (5) pen_vector tertiary --> pen_vector_secondary.@>
@ \§pen vector tertiary> $\longrightarrow$ 
\§pen vector secondary>.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=pen_vector_tertiary: pen_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) pen_vector expression.@>
@* \§pen vector expression>.

\LOG
\initials{LDF 2005.01.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> pen_vector_expression@>

@q ** (2) pen_vector expression --> pen_vector_tertiary.  @>
@*1 \§pen vector expression> $\longrightarrow$ 
\§pen vector tertiary>.

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=pen_vector_expression: pen_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

