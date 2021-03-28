@q pdpvexpr.w @> 
@q Created by Laurence Finston Thu Jan 13 13:24:44 CET 2005 @>
     

@q * (0) |dash_pattern_vector| expressions.@>
@** \§dash pattern vector> expressions.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |dash_pattern_vector| primary.  @>
@* \§dash pattern vector primary>.
\initials{LDF 2005.01.13.}
  
\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_vector_primary@>@/

@q ** (2) dash_pattern_vector_primary --> dash_pattern_vector_variable.@>
@*1 \§dash pattern vector primary> $\longrightarrow$ 
\§dash pattern vector variable>.  
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=dash_pattern_vector_primary: dash_pattern_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == 0|.
\initials{LDF 2005.01.13.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.13.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Dash_Pattern> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) dash_pattern_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) dash_pattern_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§dash pattern vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§dash pattern vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=dash_pattern_vector_primary: LEFT_PARENTHESIS@>@/ 
@=dash_pattern_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) dash_pattern_vector secondary.@>

@* \§dash pattern vector secondary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> dash_pattern_vector_secondary@>
  
@q ** (2) dash_pattern_vector secondary --> dash_pattern_vector_primary.@>
@*1 \§dash pattern vector secondary> $\longrightarrow$ 
\§dash pattern vector primary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=dash_pattern_vector_secondary: dash_pattern_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) dash_pattern_vector tertiary.  @>

@* \§dash pattern vector tertiary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> dash_pattern_vector_tertiary@>

@q ***** (5) dash_pattern_vector tertiary --> dash_pattern_vector_secondary.@>
@ \§dash pattern vector tertiary> $\longrightarrow$ 
\§dash pattern vector secondary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=dash_pattern_vector_tertiary: dash_pattern_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) dash_pattern_vector expression.@>
@* \§dash pattern vector expression>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> dash_pattern_vector_expression@>

@q ** (2) dash_pattern_vector expression --> dash_pattern_vector_tertiary.@>
@*1 \§dash pattern vector expression> $\longrightarrow$ 
\§dash pattern vector tertiary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=dash_pattern_vector_expression: dash_pattern_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

