@q pcnvexpr.w @> 
@q Created by Laurence Finston Di Mai 24 14:44:42 CEST 2005 @>     

@q * (0) |cone_vector| expressions.@>
@** \§cone vector> expressions.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |cone_vector| primary.  @>
@* \§cone vector primary>.
\initials{LDF 2005.05.24.}
  
\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_vector_primary@>@/

@q ** (2) cone_vector_primary --> cone_vector_variable.@>
@*1 \§cone vector primary> $\longrightarrow$ 
\§cone vector variable>.  
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=cone_vector_primary: cone_vector_variable@>@/ 
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.05.24.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.05.24.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Cone> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) cone_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) cone_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§cone vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§cone vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_vector_primary: LEFT_PARENTHESIS@>@/ 
@=cone_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
    @=$$@> = @=$1@>;

};

@q * (1) cone_vector secondary.@>

@* \§cone vector secondary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cone_vector_secondary@>
  
@q ** (2) cone_vector secondary --> cone_vector_primary.@>
@*1 \§cone vector secondary> $\longrightarrow$ 
\§cone vector primary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_vector_secondary: cone_vector_primary@>@/ 
{

    @=$$@> = @=$1@>;

};

@q * (1) cone_vector tertiary.  @>

@* \§cone vector tertiary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cone_vector_tertiary@>

@q ***** (5) cone_vector tertiary --> cone_vector_secondary.@>
@ \§cone vector tertiary> $\longrightarrow$ 
\§cone vector secondary>.
\initials{LDF 2005.05.24.}

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_vector_tertiary: cone_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) cone_vector expression.@>
@* \§cone vector expression>.

\LOG
\initials{LDF 2005.05.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cone_vector_expression@>

@q ** (2) cone_vector expression --> cone_vector_tertiary.  @>
@*1 \§cone vector expression> $\longrightarrow$ 
\§cone vector tertiary>.

\LOG
\initials{LDF 2005.05.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cone_vector_expression: cone_vector_tertiary@>@/ 
{
 
    @=$$@> = @=$1@>;

};

