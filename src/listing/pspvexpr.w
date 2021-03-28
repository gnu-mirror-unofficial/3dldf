@q pspvexpr.w @> 
@q Created by Laurence Finston Mo Jun  6 12:51:26 CEST 2005 @>
     

@q * (0) |sphere_vector| expressions.@>
@** \§sphere vector> expressions.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |sphere_vector| primary.  @>
@* \§sphere vector primary>.
\initials{LDF 2005.06.06.}
  
\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_vector_primary@>@/

@q ** (2) sphere_vector_primary --> sphere_vector_variable.@>
@*1 \§sphere vector primary> $\longrightarrow$ 
\§sphere vector variable>.  
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=sphere_vector_primary: sphere_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.06.06.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.06.06.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Sphere> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) sphere_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) sphere_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§sphere vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§sphere vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_vector_primary: LEFT_PARENTHESIS@>@/ 
@=sphere_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) sphere_vector secondary.@>

@* \§sphere vector secondary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_vector_secondary@>
  
@q ** (2) sphere_vector secondary --> sphere_vector_primary.@>
@*1 \§sphere vector secondary> $\longrightarrow$ 
\§sphere vector primary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_vector_secondary: sphere_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_vector tertiary.  @>

@* \§sphere vector tertiary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> sphere_vector_tertiary@>

@q ***** (5) sphere_vector tertiary --> sphere_vector_secondary.@>
@ \§sphere vector tertiary> $\longrightarrow$ 
\§sphere vector secondary>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_vector_tertiary: sphere_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) sphere_vector expression.@>
@* \§sphere vector expression>.

\LOG
\initials{LDF 2005.06.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> sphere_vector_expression@>

@q ** (2) sphere_vector expression --> sphere_vector_tertiary.  @>
@*1 \§sphere vector expression> $\longrightarrow$ 
\§sphere vector tertiary>.

\LOG
\initials{LDF 2005.06.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=sphere_vector_expression: sphere_vector_tertiary@>@/ 
{
  @=$$@> = @=$1@>;

};

