@q spdvvexp.w @> 
@q Created by Laurence Finston Tue Nov 10 13:13:41 CET 2009  @>
     

@q * (0) |sphere_development_vector| expressions.@>
@** \§sphere development vector> expressions.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.09.}
Created this file.
\ENDLOG 

@q * (1) |sphere_development_vector| primary.  @>
@* \§sphere development vector primary>.
\initials{LDF 2009.11.10.}
  
\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_vector_primary@>@/

@q ** (2) sphere_development_vector_primary --> sphere_development_vector_variable.@>
@*1 \§sphere development vector primary> $\longrightarrow$ 
\§sphere development vector variable>.  
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=sphere_development_vector_primary: sphere_development_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2009.11.10.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2009.11.10.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Sphere_Development> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) sphere_development_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) sphere_development_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§sphere development vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§sphere development vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_primary: LEFT_PARENTHESIS@>@/ 
@=sphere_development_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector secondary.@>

@* \§sphere development vector secondary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_development_vector_secondary@>
  
@q ** (2) sphere_development_vector secondary --> sphere_development_vector_primary.@>
@*1 \§sphere development vector secondary> $\longrightarrow$ 
\§sphere development vector primary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_secondary: sphere_development_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector tertiary.  @>

@* \§sphere development vector tertiary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_development_vector_tertiary@>

@q ***** (5) sphere_development_vector tertiary --> sphere_development_vector_secondary.@>
@ \§sphere development vector tertiary> $\longrightarrow$ 
\§sphere development vector secondary>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_tertiary: sphere_development_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_development_vector expression.@>
@* \§sphere development vector expression>.

\LOG
\initials{LDF 2009.11.10.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_development_vector_expression@>

@q ** (2) sphere_development_vector expression --> sphere_development_vector_tertiary.  @>
@*1 \§sphere development vector expression> $\longrightarrow$ 
\§sphere development vector tertiary>.

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_development_vector_expression: sphere_development_vector_tertiary@>@/ 
{
  @=$$@> = @=$1@>;

};

