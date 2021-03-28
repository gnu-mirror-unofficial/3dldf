@q ptfvexpr.w @> 
@q Created by Laurence Finston Thu Jan 13 18:08:57 CET 2005 @>
     

@q * (0) |transform_vector| expressions.@>
@** \§transform vector> expressions.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |transform_vector| primary.  @>
@* \§transform vector primary>.
\initials{LDF 2005.01.13.}
  
\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> transform_vector_primary@>@/

@q ** (2) transform_vector_primary --> transform_vector_variable.@>
@*1 \§transform vector primary> $\longrightarrow$ 
\§transform vector variable>.  
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=transform_vector_primary: transform_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
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

        typedef Pointer_Vector<Transform> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) transform_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) transform_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§transform vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§transform vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=transform_vector_primary: LEFT_PARENTHESIS@>@/ 
@=transform_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) transform_vector secondary.@>

@* \§transform vector secondary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> transform_vector_secondary@>
  
@q ** (2) transform_vector secondary --> transform_vector_primary.@>
@*1 \§transform vector secondary> $\longrightarrow$ 
\§transform vector primary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=transform_vector_secondary: transform_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) transform_vector tertiary.  @>

@* \§transform vector tertiary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> transform_vector_tertiary@>

@q ***** (5) transform_vector tertiary --> transform_vector_secondary.@>
@ \§transform vector tertiary> $\longrightarrow$ 
\§transform vector secondary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=transform_vector_tertiary: transform_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) transform_vector expression.@>
@* \§transform vector expression>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> transform_vector_expression@>

@q ** (2) transform_vector expression --> transform_vector_tertiary.@>
@*1 \§transform vector expression> $\longrightarrow$ 
\§transform vector tertiary>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=transform_vector_expression: transform_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

