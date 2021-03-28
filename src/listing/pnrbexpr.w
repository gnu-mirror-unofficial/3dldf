@q pnrbexpr.w @> 
@q Created by Laurence Finston Wed Jan 26 16:43:19 CET 2005 @>
       

@q * (0) nurb expressions.  @>
@** \§nurb expressions>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Created this file.
\ENDLOG 

@q * (1) nurb primary.  @>
@* \§nurb primary>.
\initials{LDF 2005.01.26.}
  
\LOG
\initials{LDF 2005.01.26.}  
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_primary@>@/

@q ** (2) nurb_primary --> nurb_variable.@>
@*1 \§nurb primary> $\longrightarrow$ \§nurb variable>.  
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=nurb_primary: nurb_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Nurb>(
                                static_cast<Nurb*>(
                                entry->object))); 
};

@q ** (2) nurb_primary --> LEFT_PARENTHESIS nurb_expression @>
@q ** (2) RIGHT_PARENTHESIS.                                @> 

@*1 \§nurb primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS} 
\§nurb expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_primary: LEFT_PARENTHESIS nurb_expression RIGHT_PARENTHESIS@>@/
{
   @=$$@> = @=$2@>;

};

@q * (1) nurb secondary.@>
@* \§nurb secondary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_secondary@>
  
@q ** (2) nurb secondary --> nurb_primary.@>
@*1 \§nurb secondary> $\longrightarrow$ \§nurb primary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_secondary: nurb_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1)  nurb tertiary.@>
@* \§nurb tertiary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_tertiary@>

@q ** (2) nurb tertiary --> nurb_secondary.  @>
@*1 \§nurb tertiary> $\longrightarrow$ \§nurb secondary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_tertiary: nurb_secondary@>@/
{

   @=$$@> = @=$1@>;

};

@q * (1) nurb expression.  @>
@* \§nurb expression>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> nurb_expression@>

@q ** (2) nurb expression --> nurb_tertiary.  @>
@*1 \§nurb expression> $\longrightarrow$ \§nurb tertiary>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=nurb_expression: nurb_tertiary@>@/
{
  @=$$@> = @=$1@>;

};

