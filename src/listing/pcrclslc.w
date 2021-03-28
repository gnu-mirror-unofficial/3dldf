@q pcrclslc.w @> 
@q Created by Laurence Finston Mi Mär 30 11:27:18 CEST 2005 @>
       

@q * (0) circle_slice expressions.@>
@** {\bf circle\_slice} expressions.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Created this file.
\ENDLOG 

@q ** (2) circle_slice primary.  @>
@*1 \§circle slice primary>.
\initials{LDF 2005.03.30.}  

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_slice_primary@>@/

@q *** (3) circle_slice_primary --> circle_slice_variable.@>
@*2 \§circle slice primary> $\longrightarrow$ \§circle slice variable>.  
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=circle_slice_primary: circle_slice_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Circle_Slice>(
                                  static_cast<Circle_Slice*>(
                                     entry->object))); 
};

@q *** (3) circle_slice_primary --> ( circle_slice_expression )  @>
@*2 \§circle slice primary> $\longrightarrow$ `\.{\LP}' 
\§circle slice expression> `\.{\RP}'.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_slice_primary: LEFT_PARENTHESIS circle_slice_expression@>@/
@=RIGHT_PARENTHESIS@>@/
{

   @=$$@> = @=$2@>;

};

@q ***** (5) circle_slice_primary --> LAST @>
@q ***** (5) circle_slice_vector_expression.@>

@*4 \§circle slice primary> $\longrightarrow$ 
\.{LAST} \§circle slice vector expression>.
\initials{LDF 2005.03.30.}

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2005.03.30.}
Add this rule.
\ENDTODO 

@q ** (2) circle_slice secondary.  @>
@*1 \§circle slice secondary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_slice_secondary@>
  
@q *** (3) circle_slice secondary --> circle_slice_primary.  @>
@*2 \§circle slice secondary> $\longrightarrow$ 
\§circle slice primary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_slice_secondary: circle_slice_primary@>@/
{

   @=$$@> = @=$1@>;

};

@q ** (2) circle_slice tertiary.  @>
@*1 \§circle slice tertiary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_slice_tertiary@>

@q *** (3) circle_slice tertiary --> circle_slice_secondary.@>
@*2 \§circle slice tertiary> $\longrightarrow$ 
\§circle slice secondary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_slice_tertiary: circle_slice_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) circle_slice expression.@>
@*1 \§circle slice expression>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> circle_slice_expression@>

@q *** (3) circle_slice expression --> circle_slice_tertiary.  @>
@*2 \§circle slice expression> $\longrightarrow$ \§circle slice tertiary>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=circle_slice_expression: circle_slice_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

