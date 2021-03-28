@q cslvexpr.w @> 
@q Created by Laurence Finston Sun Jul 29 16:20:55 CEST 2007 @>
       

@q * (0) |conic_section_lattice_vector| expressions.@>
@** \§conic section lattice vector> expressions.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Created this file.  Copied the rules from \filename{porgvexpr.w}, changing
\§origami figure vector> expressions to \§conic section vector> expressions.
\ENDLOG 

@q * (1) |conic_section_lattice_vector| primary.  @>
@* \§conic section lattice vector primary>.
\initials{LDF 2007.07.29.}
  
\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_vector_primary@>@/

@q ** (2) conic_section_lattice_vector_primary --> @>
@q ** (2) conic_section_lattice_vector_variable.@>
@*1 \§conic section lattice vector primary> $\longrightarrow$ 
\§conic section lattice vector variable>.  
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=conic_section_lattice_vector_primary: conic_section_lattice_vector_variable@>@/ 
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2007.07.29.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q **** (4) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2007.07.29.}

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        typedef Pointer_Vector<Conic_Section_Lattice> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q ** (2) conic_section_lattice_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) conic_section_lattice_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \§conic section lattice vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§conic section lattice vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_primary: LEFT_PARENTHESIS@>@/ 
@=conic_section_lattice_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector secondary.@>

@* \§conic section lattice vector secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> conic_section_lattice_vector_secondary@>
  
@q ** (2) conic_section_lattice_vector secondary --> conic_section_lattice_vector_primary.@>
@*1 \§conic section lattice vector secondary> $\longrightarrow$ 
\§conic section lattice vector primary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_secondary: conic_section_lattice_vector_primary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector tertiary.  @>

@* \§conic section lattice vector tertiary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> conic_section_lattice_vector_tertiary@>

@q ***** (5) conic_section_lattice_vector tertiary --> conic_section_lattice_vector_secondary.@>
@ \§conic section lattice vector tertiary> $\longrightarrow$ 
\§conic section lattice vector secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_tertiary: conic_section_lattice_vector_secondary@>@/ 
{

  @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice_vector expression.@>
@* \§conic section lattice vector expression>.

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_vector_expression@>

@q ** (2) conic_section_lattice_vector expression --> conic_section_lattice_vector_tertiary.  @>
@*1 \§conic section lattice vector expression> $\longrightarrow$ 
\§conic section lattice vector tertiary>.

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_vector_expression: conic_section_lattice_vector_tertiary@>@/ 
{

  @=$$@> = @=$1@>;

};

