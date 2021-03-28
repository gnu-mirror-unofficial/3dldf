@q pclvexpr.w @> 
@q Created by Laurence Finston Thu Dec  9 13:41:41 CET 2004 @>
     

@q * (0) |color_vector| expressions.@>
@** {\bf color\_vector} expressions.

\LOG
\initials{LDF 2004.12.09.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |color_vector| primary.  @>
@* \§color vector primary>.
\initials{LDF 2004.12.09.}
  
\LOG
\initials{LDF 2004.12.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_vector_primary@>@/

@q ** (2) color_vector_primary --> color_vector_variable.@>
@*1 \§color vector primary> $\longrightarrow$ 
\§color vector variable>.  
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=color_vector_primary: color_vector_variable@>@/ 
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2004.12.09.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

        @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2004.12.09.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Color> CV;

        CV* cv = new CV;

        *cv = *static_cast<CV*>(entry->object);

        @=$$@> = static_cast<void*>(cv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) color_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) color_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§color vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§color vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=color_vector_primary: LEFT_PARENTHESIS@>@/ 
@=color_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) color_vector secondary.@>

@* \§color vector secondary>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> color_vector_secondary@>
  
@q ** (2) color_vector secondary --> color_vector_primary.@>
@*1 \§color vector secondary> $\longrightarrow$ 
\§color vector primary>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=color_vector_secondary: color_vector_primary@>@/ 
{

    @=$$@> = @=$1@>;

};

@q * (1) color_vector tertiary.  @>

@* \§color vector tertiary>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> color_vector_tertiary@>

@q ***** (5) color_vector tertiary --> color_vector_secondary.@>
@ \§color vector tertiary> $\longrightarrow$ 
\§color vector secondary>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=color_vector_tertiary: color_vector_secondary@>@/ 
{

    @=$$@> = @=$1@>;

};

@q * (1) color_vector expression.@>
@* \§color vector expression>.

\LOG
\initials{LDF 2004.12.09.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_vector_expression@>

@q ** (2) color_vector expression --> color_vector_tertiary.  @>
@*1 \§color vector expression> $\longrightarrow$ 
\§color vector tertiary>.

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=color_vector_expression: color_vector_tertiary@>@/ 
{

    @=$$@> = @=$1@>;

};

