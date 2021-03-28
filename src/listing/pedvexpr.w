@q pedvexpr.w @> 
@q Created by Laurence Finston Do Mai 26 14:06:30 CEST 2005 @>
     

@q * (0) |ellipsoid_vector| expressions.@>
@** \žellipsoid vector> expressions.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |ellipsoid_vector| primary.  @>
@* \žellipsoid vector primary>.
\initials{LDF 2005.05.26.}
  
\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_vector_primary@>@/

@q ** (2) ellipsoid_vector_primary --> ellipsoid_vector_variable.@>
@*1 \žellipsoid vector primary> $\longrightarrow$ 
\žellipsoid vector variable>.  
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=ellipsoid_vector_primary: ellipsoid_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.05.26.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Ellipsoid> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) ellipsoid_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) ellipsoid_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \žellipsoid vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\žellipsoid vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_vector_primary: LEFT_PARENTHESIS@>@/ 
@=ellipsoid_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) ellipsoid_vector secondary.@>

@* \žellipsoid vector secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> ellipsoid_vector_secondary@>
  
@q ** (2) ellipsoid_vector secondary --> ellipsoid_vector_primary.@>
@*1 \žellipsoid vector secondary> $\longrightarrow$ 
\žellipsoid vector primary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_vector_secondary: ellipsoid_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) ellipsoid_vector tertiary.  @>

@* \žellipsoid vector tertiary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> ellipsoid_vector_tertiary@>

@q ***** (5) ellipsoid_vector tertiary --> ellipsoid_vector_secondary.@>
@ \žellipsoid vector tertiary> $\longrightarrow$ 
\žellipsoid vector secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_vector_tertiary: ellipsoid_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) ellipsoid_vector expression.@>
@* \žellipsoid vector expression>.

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_vector_expression@>

@q ** (2) ellipsoid_vector expression --> ellipsoid_vector_tertiary.  @>
@*1 \žellipsoid vector expression> $\longrightarrow$ 
\žellipsoid vector tertiary>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_vector_expression: ellipsoid_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

