@q ppdvexpr.w @> 
@q Created by Laurence Finston Fri Jan 20 21:49:52 CET 2006 @>
     

@q * (0) |paraboloid_vector| expressions.@>
@** \§paraboloid vector> expressions.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |paraboloid_vector| primary.  @>
@* \§paraboloid vector primary>.
\initials{LDF 2006.01.20.}
  
\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_vector_primary@>@/

@q ** (2) paraboloid_vector_primary --> paraboloid_vector_variable.@>
@*1 \§paraboloid vector primary> $\longrightarrow$ 
\§paraboloid vector variable>.  
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=paraboloid_vector_primary: paraboloid_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2006.01.20.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2006.01.20.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Paraboloid> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) paraboloid_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) paraboloid_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§paraboloid vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§paraboloid vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_vector_primary: LEFT_PARENTHESIS@>@/ 
@=paraboloid_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) paraboloid_vector secondary.@>

@* \§paraboloid vector secondary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> paraboloid_vector_secondary@>
  
@q ** (2) paraboloid_vector secondary --> paraboloid_vector_primary.@>
@*1 \§paraboloid vector secondary> $\longrightarrow$ 
\§paraboloid vector primary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_vector_secondary: paraboloid_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) paraboloid_vector tertiary.  @>

@* \§paraboloid vector tertiary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> paraboloid_vector_tertiary@>

@q ***** (5) paraboloid_vector tertiary --> paraboloid_vector_secondary.@>
@ \§paraboloid vector tertiary> $\longrightarrow$ 
\§paraboloid vector secondary>.
\initials{LDF 2006.01.20.}

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_vector_tertiary: paraboloid_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) paraboloid_vector expression.@>
@* \§paraboloid vector expression>.

\LOG
\initials{LDF 2006.01.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> paraboloid_vector_expression@>

@q ** (2) paraboloid_vector expression --> paraboloid_vector_tertiary.  @>
@*1 \§paraboloid vector expression> $\longrightarrow$ 
\§paraboloid vector tertiary>.

\LOG
\initials{LDF 2006.01.20.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=paraboloid_vector_expression: paraboloid_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

