@q pcyvexpr.w @> 
@q Created by Laurence Finston Mi Mai 25 16:16:35 CEST 2005 @>
     

@q * (0) |cylinder_vector| expressions.@>
@** \§cylinder vector> expressions.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |cylinder_vector| primary.  @>
@* \§cylinder vector primary>.
\initials{LDF 2005.05.25.}
  
\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_vector_primary@>@/

@q ** (2) cylinder_vector_primary --> cylinder_vector_variable.@>
@*1 \§cylinder vector primary> $\longrightarrow$ 
\§cylinder vector variable>.  
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=cylinder_vector_primary: cylinder_vector_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2005.05.25.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2005.05.25.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Cylinder> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) cylinder_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) cylinder_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§cylinder vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§cylinder vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_vector_primary: LEFT_PARENTHESIS@>@/ 
@=cylinder_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) cylinder_vector secondary.@>

@* \§cylinder vector secondary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cylinder_vector_secondary@>
  
@q ** (2) cylinder_vector secondary --> cylinder_vector_primary.@>
@*1 \§cylinder vector secondary> $\longrightarrow$ 
\§cylinder vector primary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_vector_secondary: cylinder_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) cylinder_vector tertiary.  @>

@* \§cylinder vector tertiary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> cylinder_vector_tertiary@>

@q ***** (5) cylinder_vector tertiary --> cylinder_vector_secondary.@>
@ \§cylinder vector tertiary> $\longrightarrow$ 
\§cylinder vector secondary>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_vector_tertiary: cylinder_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) cylinder_vector expression.@>
@* \§cylinder vector expression>.

\LOG
\initials{LDF 2005.05.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> cylinder_vector_expression@>

@q ** (2) cylinder_vector expression --> cylinder_vector_tertiary.  @>
@*1 \§cylinder vector expression> $\longrightarrow$ 
\§cylinder vector tertiary>.

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=cylinder_vector_expression: cylinder_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

