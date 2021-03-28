@q pstvexpr.w @> 
@q Created by Laurence Finston So Jan  9 18:50:08 CET 2005 @>
     

@q * (0) |string_vector| expressions.@>
@** {\bf string\_vector} expressions.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |string_vector| primary.  @>
@* \§string vector primary>.
\initials{LDF 2005.01.09.}
  
\LOG
\initials{LDF 2005.01.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> string_vector_primary@>@/

@q ** (2) string_vector_primary --> string_vector_variable.@>
@*1 \§string vector primary> $\longrightarrow$ 
\§string vector variable>.  
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=string_vector_primary: string_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.01.09.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.01.09.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<string> SV;

        SV* sv = new SV;

        *sv = *static_cast<SV*>(entry->object);

        @=$$@> = static_cast<void*>(sv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) string_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) string_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§string vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§string vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=string_vector_primary: LEFT_PARENTHESIS@>@/ 
@=string_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) string_vector_secondary.@>

@* \§string vector secondary>.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> string_vector_secondary@>
  
@q ** (2) string_vector secondary --> string_vector_primary.@>
@*1 \§string vector secondary> $\longrightarrow$ 
\§string vector primary>.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=string_vector_secondary: string_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) string_vector tertiary.@>

@* \§string vector tertiary>.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> string_vector_tertiary@>

@q ***** (5) string_vector tertiary --> string_vector_secondary.@>
@ \§string vector tertiary> $\longrightarrow$ 
\§string vector secondary>.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=string_vector_tertiary: string_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) string_vector expression.@>
@* \§string vector expression>.

\LOG
\initials{LDF 2005.01.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> string_vector_expression@>

@q ** (2) string_vector expression --> string_vector_tertiary.@>
@*1 \§string vector expression> $\longrightarrow$ 
\§string vector tertiary>.

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=string_vector_expression: string_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

