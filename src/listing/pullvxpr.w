@q pullvxpr.w @> 
@q Created by Laurence Finston Mon Dec  5 21:30:13 CET 2005 @>

@q * (0) Unsigned long long vector expressions.  @>
@** Unsigned long long vector  expressions.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Created this file.
\ENDLOG 

@q * (1) ulong_long_vector_primary.@>
@* \§ulong long vector primary>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ulong_long_vector_primary@>@/

@q ** (2) ulong_long_vector_primary --> ulong_long_vector_variable.  @>
@*1 \§ulong long vector primary> $\longrightarrow$ \§ulong long vector variable>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this rule.

\initials{LDF 2005.12.07.}
Added real code to this rule.
\ENDLOG

@<Define rules@>= 
@=ulong_long_vector_primary: ulong_long_vector_variable@>
{
   Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);
   
   if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
     {

       @=$$@> = static_cast<void*>(0);

     }  /* |if (entry == 0 || entry->object == 0)| */

   else /* |entry != 0| */
      { 
          typedef Pointer_Vector<ulong_long> PV;

          PV* pv = new PV;

          *pv = *static_cast<PV*>(entry->object);

          @=$$@> = static_cast<void*>(pv);                    

      }  /* |else| (|entry != 0|) */

};

@q ** (2) ulong_long_vector_primary --> get_prime_vector_sub @>
@q ** (2) ulong_long_primary ulong_long_primary.             @>
@*1 \§ulong long vector primary> $\longrightarrow$ 
\§get prime vector sub> \§ulong long primary> \§ulong long primary>.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this rule.

\initials{LDF 2005.12.07.}
Now calling |Prime_Numbers::get_prime_vector()|.
\ENDLOG

@<Define rules@>= 
@=ulong_long_vector_primary: get_prime_vector_sub ulong_long_primary ulong_long_primary@>
{
      static_cast<Scanner_Node>(parameter)->ulong_long_switch = false;
      @=$$@> = Prime_Numbers::get_prime_vector(@=$2@>, 
                                               @=$3@>, 
                                               static_cast<Scanner_Node>(parameter));
};

@q ** (2) get_prime_vector_sub.@> 
@*1 \§get prime vector sub>.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> get_prime_vector_sub@>@/

@q *** (3) get_prime_vector_sub --> GET_PRIME_VECTOR@> 
@*2 \§get prime vector sub> --> \.{GET\_PRIME\_VECTOR}.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_prime_vector_sub: GET_PRIME_VECTOR@>@/
{
   static_cast<Scanner_Node>(parameter)->ulong_long_switch = true;
   @=$$@> = @=$1@>;
}

@q * (1) ulong_long_vector secondary.  @>
@* Unsigned long long vector secondary.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ulong_long_vector_secondary@>@/

@q ** (2) ulong_long_vector_secondary --> ulong_long_vector_primary.@>

@*1 \§ulong long vector secondary> $\longrightarrow$ \§ulong long vector primary>.  
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=ulong_long_vector_secondary: ulong_long_vector_primary@>
{

  @=$$@> = @=$1@>;
  
};

@q * (1) ulong_long_vector tertiary.@>
@* \§ulong long vector tertiary>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ulong_long_vector_tertiary@>@/

@q ** (2) ulong_long_vector_tertiary --> ulong_long_vector_secondary.@>
@*1 \§ulong long vector tertiary> $\longrightarrow$ \§ulong long vector secondary>.
@<Define rules@>= 
@=ulong_long_vector_tertiary: ulong_long_vector_secondary@>
{

  @=$$@> = @=$1@>;

};

@q * (1) ulong_long_vector_expression.@>
@* \§ulong long vector expression>.
\initials{LDF 2005.12.05.}

\LOG
\initials{LDF 2005.12.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ulong_long_vector_expression@>@/

@q ** (2) ulong_long_vector_expression --> ulong_long_vector_tertiary.@> 
@*1 \§ulong long vector expression> $\longrightarrow$ \§ulong long vector tertiary>.
\initials{LDF 2005.12.05.} 

\LOG
\initials{LDF 2005.12.05.}
Added this rule.
\ENDLOG

@
@<Define rules@>= 
@=ulong_long_vector_expression: ulong_long_vector_tertiary@>
{
  @=$$@> = @=$1@>;

};

