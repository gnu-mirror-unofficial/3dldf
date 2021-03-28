@q pblvexpr.w @> 
@q Created by Laurence Finston Fri Jan  7 17:37:31 CET 2005 @>
     

@q * (0) |boolean_vector| expressions.@>
@** {\bf boolean\_vector} expressions.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |boolean_vector| primary.  @>
@* \§boolean vector primary>.
\initials{LDF 2005.01.07.}
  
\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> boolean_vector_primary@>@/

@q ** (2) boolean_vector_primary --> boolean_vector_variable.@>
@*1 \§boolean vector primary> $\longrightarrow$ 
\§boolean vector variable>.  
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=boolean_vector_primary: boolean_vector_variable@>@/ 
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.01.07.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.07.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<bool> CV;

        CV* cv = new CV;

        *cv = *static_cast<CV*>(entry->object);

        @=$$@> = static_cast<void*>(cv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) boolean_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) boolean_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§boolean vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§boolean vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=boolean_vector_primary: LEFT_PARENTHESIS@>@/ 
@=boolean_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
    @=$$@> = @=$1@>;

};

@q * (1) boolean_vector secondary.@>

@* \§boolean vector secondary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> boolean_vector_secondary@>
  
@q ** (2) boolean_vector secondary --> boolean_vector_primary.@>
@*1 \§boolean vector secondary> $\longrightarrow$ 
\§boolean vector primary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=boolean_vector_secondary: boolean_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) boolean_vector tertiary.  @>

@* \§boolean vector tertiary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> boolean_vector_tertiary@>

@q ***** (5) boolean_vector tertiary --> boolean_vector_secondary.@>
@ \§boolean vector tertiary> $\longrightarrow$ 
\§boolean vector secondary>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=boolean_vector_tertiary: boolean_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) boolean_vector expression.@>
@* \§boolean vector expression>.

\LOG
\initials{LDF 2005.01.07.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> boolean_vector_expression@>

@q ** (2) boolean_vector expression --> boolean_vector_tertiary.  @>
@*1 \§boolean vector expression> $\longrightarrow$ 
\§boolean vector tertiary>.

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=boolean_vector_expression: boolean_vector_tertiary@>@/ 
{

    @=$$@> = @=$1@>;

};

