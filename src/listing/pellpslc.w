@q pellpslc.w @> 
@q Created by Laurence Finston 2005.02.29.@>
       

@q * (0) ellipse_slice expressions.@>
@** {\bf ellipse\_slice} expressions.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Created this file.
\ENDLOG 

@q ** (2) ellipse_slice primary.  @>
@*1 \§ellipse slice primary>.
\initials{LDF 2005.03.29.}  

\LOG
\initials{LDF 2005.03.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_slice_primary@>@/

@q *** (3) ellipse_slice_primary --> ellipse_slice_variable.@>
@*2 \§ellipse slice primary> $\longrightarrow$ \§ellipse slice variable>.  
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=ellipse_slice_primary: ellipse_slice_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Ellipse_Slice>(
                                  static_cast<Ellipse_Slice*>(
                                     entry->object))); 
};

@q *** (3) ellipse_slice_primary --> ( ellipse_slice_expression )  @>
@*2 \§ellipse slice primary> $\longrightarrow$ `\.{\LP}' 
\§ellipse slice expression> `\.{\RP}'.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_slice_primary: LEFT_PARENTHESIS ellipse_slice_expression@>@/
@=RIGHT_PARENTHESIS@>@/
{

   @=$$@> = @=$2@>;

};

@q ***** (5) ellipse_slice_primary --> LAST @>
@q ***** (5) ellipse_slice_vector_expression.@>

@*4 \§ellipse slice primary> $\longrightarrow$ 
\.{LAST} \§ellipse slice vector expression>.
\initials{LDF 2005.03.29.}

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2005.03.29.}
Add this rule.
\ENDTODO 

@q ** (2) ellipse_slice secondary.  @>
@*1 \§ellipse slice secondary>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_slice_secondary@>
  
@q *** (3) ellipse_slice secondary --> ellipse_slice_primary.  @>
@*2 \§ellipse slice secondary> $\longrightarrow$ 
\§ellipse slice primary>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_slice_secondary: ellipse_slice_primary@>@/
{

   @=$$@> = @=$1@>;

};

@q ** (2) ellipse_slice tertiary.  @>
@*1 \§ellipse slice tertiary>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_slice_tertiary@>

@q *** (3) ellipse_slice tertiary --> ellipse_slice_secondary.@>
@*2 \§ellipse slice tertiary> $\longrightarrow$ 
\§ellipse slice secondary>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_slice_tertiary: ellipse_slice_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) ellipse_slice expression.@>
@*1 \§ellipse slice expression>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipse_slice_expression@>

@q *** (3) ellipse_slice expression --> ellipse_slice_tertiary.  @>
@*2 \§ellipse slice expression> $\longrightarrow$ \§ellipse slice tertiary>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipse_slice_expression: ellipse_slice_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

