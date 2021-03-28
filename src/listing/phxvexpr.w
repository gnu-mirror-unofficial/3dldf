@q phxvexpr.w @> 
@q Created by Laurence Finston Do Mai 19 12:22:48 CEST 2005 @>
     

@q * (0) |helix_vector| expressions.@>
@** \§helix vector> expressions.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |helix_vector| primary.  @>
@* \§helix vector primary>.
\initials{LDF 2005.05.19.}
  
\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_vector_primary@>@/

@q ** (2) helix_vector_primary --> helix_vector_variable.@>
@*1 \§helix vector primary> $\longrightarrow$ 
\§helix vector variable>.  
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=helix_vector_primary: helix_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.05.19.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.05.19.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Helix> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) helix_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) helix_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§helix vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§helix vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_vector_primary: LEFT_PARENTHESIS@>@/ 
@=helix_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) helix_vector secondary.@>

@* \§helix vector secondary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> helix_vector_secondary@>
  
@q ** (2) helix_vector secondary --> helix_vector_primary.@>
@*1 \§helix vector secondary> $\longrightarrow$ 
\§helix vector primary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_vector_secondary: helix_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) helix_vector tertiary.  @>

@* \§helix vector tertiary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> helix_vector_tertiary@>

@q ***** (5) helix_vector tertiary --> helix_vector_secondary.@>
@ \§helix vector tertiary> $\longrightarrow$ 
\§helix vector secondary>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_vector_tertiary: helix_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) helix_vector expression.@>
@* \§helix vector expression>.

\LOG
\initials{LDF 2005.05.19.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> helix_vector_expression@>

@q ** (2) helix_vector expression --> helix_vector_tertiary.  @>
@*1 \§helix vector expression> $\longrightarrow$ 
\§helix vector tertiary>.

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=helix_vector_expression: helix_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

