@q pplhdslc.w @> 
@q Created by Laurence Finston Mi Mär 30 11:36:46 CEST 2005 @>
       

@q * (0) polyhedron_slice expressions.@>
@** {\bf polyhedron\_slice} expressions.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Created this file.
\ENDLOG 

@q ** (2) polyhedron_slice primary.  @>
@*1 \§polyhedron slice primary>.
\initials{LDF 2005.03.30.}  

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_slice_primary@>@/

@q *** (3) polyhedron_slice_primary --> polyhedron_slice_variable.@>
@*2 \§polyhedron slice primary> $\longrightarrow$ \§polyhedron slice variable>.  
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=polyhedron_slice_primary: polyhedron_slice_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Polyhedron_Slice>(
                                  static_cast<Polyhedron_Slice*>(
                                     entry->object))); 
};

@q *** (3) polyhedron_slice_primary --> ( polyhedron_slice_expression )  @>
@*2 \§polyhedron slice primary> $\longrightarrow$ `\.{\LP}' 
\§polyhedron slice expression> `\.{\RP}'.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_slice_primary: LEFT_PARENTHESIS polyhedron_slice_expression@>@/
@=RIGHT_PARENTHESIS@>@/
{

   @=$$@> = @=$2@>;

};

@q ***** (5) polyhedron_slice_primary --> LAST @>
@q ***** (5) polyhedron_slice_vector_expression.@>

@*4 \§polyhedron slice primary> $\longrightarrow$ 
\.{LAST} \§polyhedron slice vector expression>.
\initials{LDF 2005.03.30.}

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2005.03.30.}
Add this rule.
\ENDTODO 

@q ** (2) polyhedron_slice secondary.  @>
@*1 \§polyhedron slice secondary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_slice_secondary@>
  
@q *** (3) polyhedron_slice secondary --> polyhedron_slice_primary.  @>
@*2 \§polyhedron slice secondary> $\longrightarrow$ 
\§polyhedron slice primary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_slice_secondary: polyhedron_slice_primary@>@/
{

   @=$$@> = @=$1@>;

};

@q ** (2) polyhedron_slice tertiary.  @>
@*1 \§polyhedron slice tertiary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_slice_tertiary@>

@q *** (3) polyhedron_slice tertiary --> polyhedron_slice_secondary.@>
@*2 \§polyhedron slice tertiary> $\longrightarrow$ 
\§polyhedron slice secondary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_slice_tertiary: polyhedron_slice_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) polyhedron_slice expression.@>
@*1 \§polyhedron slice expression>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> polyhedron_slice_expression@>

@q *** (3) polyhedron_slice expression --> polyhedron_slice_tertiary.  @>
@*2 \§polyhedron slice expression> $\longrightarrow$ \§polyhedron slice tertiary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=polyhedron_slice_expression: polyhedron_slice_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

