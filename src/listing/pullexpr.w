@q pullexpr.w @> 
@q Created by Laurence Finston Mon Dec  5 20:18:41 CET 2005 @>

@q * (0) Unsigned long long expressions.  @>
@** Unsigned long long  expressions.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Created this file.
\ENDLOG 

@q * (1) ulong_long_primary.@>
@* \§ulong long primary>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <ulong_long_value> ulong_long_primary@>@/

@q ** (2) ulong_long_primary --> ulong_long_variable.  @>
@*1 \§ulong long primary> $\longrightarrow$ \§ulong long variable>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=ulong_long_primary: ulong_long_variable@>
{

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

    if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
      {

        @=$$@> = 0ULL;

      }  /* |if (entry == 0 || entry->object == 0)| */

    else /* |entry != 0| */
 
        @=$$@> = *static_cast<unsigned long long*>(entry->object);
 
};

@q ** (2) ulong_long_primary --> ULONG_LONG_TYPE.  @>
@*1 \§ulong long primary> $\longrightarrow$ \.{ULONG\_LONG\_TYPE}.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=ulong_long_primary: ULONG_LONG_TYPE@>
{
        @=$$@> = @=$1@>;
};

@q ** (2) ulong_long_primary --> get_prime_sub ulong_long_primary.  @>
@*1 \§ulong long primary> $\longrightarrow$ \§get prime sub> 
\§ulong long primary>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this rule.

\initials{LDF 2005.12.06.}
Changed \.{GET\_PRIME} to \§get prime sub>.  Now setting 
|static_cast<Scanner_Node>(parameter)->ulong_long_switch| to |false|.
\ENDLOG

@<Define rules@>= 
@=ulong_long_primary: get_prime_sub ulong_long_primary@>
{
    static_cast<Scanner_Node>(parameter)->ulong_long_switch = false;
    @=$$@> = Prime_Numbers::get_prime(@=$2@>, static_cast<Scanner_Node>(parameter));
 
};

@q ** (2) get_prime_sub.@> 
@*1 \§get prime sub>.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> get_prime_sub@>@/

@q *** (3) get_prime_sub --> GET_PRIME@> 
@*2 \§get prime sub> --> \.{GET\_PRIME}.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_prime_sub: GET_PRIME@>@/
{
   static_cast<Scanner_Node>(parameter)->ulong_long_switch = true;
   @=$$@> = @=$1@>;
}

@q * (1) ulong_long secondary.  @>
@* Unsigned long long secondary.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <ulong_long_value> ulong_long_secondary@>@/

@q ** (2) ulong_long_secondary --> ulong_long_primary.@>

@*1 \§ulong long secondary> $\longrightarrow$ \§ulong long primary>.  
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=ulong_long_secondary: ulong_long_primary@>
{

  @=$$@> = @=$1@>;
  
};

@q * (1) ulong_long tertiary.@>
@* \§ulong long tertiary>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <ulong_long_value> ulong_long_tertiary@>@/

@q ** (2) ulong_long_tertiary --> ulong_long_secondary.@>
@*1 \§ulong long tertiary> $\longrightarrow$ \§ulong long secondary>.
@<Define rules@>= 
@=ulong_long_tertiary: ulong_long_secondary@>
{

  @=$$@> = @=$1@>;

};

@q * (1) ulong_long_expression.@>
@* \§ulong long expression>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <ulong_long_value> ulong_long_expression@>@/

@q ** (2) ulong_long_expression --> ulong_long_tertiary.@> 
@*1 \§ulong long expression> $\longrightarrow$ \§ulong long tertiary>.
\initials{LDF 2005.12.05.} 

\LOG
\initials{LDF 2005.12.05.}
Added this rule.
\ENDLOG

@
@<Define rules@>= 
@=ulong_long_expression: ulong_long_tertiary@>
{
  @=$$@> = @=$1@>;

};

