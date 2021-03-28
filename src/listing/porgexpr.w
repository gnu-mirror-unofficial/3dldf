@q porgexpr.w @> 
@q Created by Laurence Finston Do Feb  3 17:51:02 CET 2005 @>
       

@q * (0) origami_figure expressions.  @>
@** \§origami figure expressions>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Created this file.
\ENDLOG 

@q * (1) origami_figure primary.  @>
@* \§origami figure primary>.
\initials{LDF 2005.02.03.}
  
\LOG
\initials{LDF 2005.02.03.}  
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_primary@>@/

@q ** (2) origami_figure_primary --> origami_figure_variable.@>
@*1 \§origami figure primary> $\longrightarrow$ \§origami figure variable>.  
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=origami_figure_primary: origami_figure_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Origami_Figure>(
                                  static_cast<Origami_Figure*>(
                                     entry->object))); 
};

@q ** (2) origami_figure_primary --> LEFT_PARENTHESIS origami_figure_expression @>
@q ** (2) RIGHT_PARENTHESIS.                                        @> 

@*1 \§origami figure primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS} 
\§origami figure expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_primary: LEFT_PARENTHESIS origami_figure_expression RIGHT_PARENTHESIS@>@/
{

   @=$$@> = @=$2@>;

};

@q ** (2) origami_figure_primary --> LAST @>
@q ** (2) origami_figure_vector_expression.@>

@*1 \§origami figure primary> $\longrightarrow$ 
\.{LAST} \§origami figure vector expression>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=origami_figure_primary: LAST origami_figure_vector_expression@>@/
{ 

   Origami_Figure* r;

         r = create_new<Origami_Figure>(0);

   Pointer_Vector<Origami_Figure>* pv 
      = static_cast<Pointer_Vector<Origami_Figure>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.02.03.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Origami_Figure>*>(0))
      {

          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.02.03.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.02.03.}

@<Define rules@>=

   else 
      {
         *r = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(r); 
      }
@q ******* (7) @> 

};

@q * (1) origami_figure secondary.@>
@* \§origami figure secondary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_secondary@>
  
@q ** (2) origami_figure secondary --> origami_figure_primary.@>
@*1 \§origami figure secondary> $\longrightarrow$ \§origami figure primary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_secondary: origami_figure_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) origami_figure secondary --> origami_figure_secondary transformer.@>
@*1 \§origami figure secondary> $\longrightarrow$ 
\§origami figure secondary> \§transformer>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.

\initials{LDF 2005.02.04.}
Removed code from this rule, because it caused a compiler error.
This rule is now non-functional;  it simply sets the 
\§origami figure secondary> on the left-hand side to the one on the right-hand
side. 

\initials{LDF 2006.01.20.}
@:BUG FIX@> BUG FIX:  Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=origami_figure_secondary: origami_figure_secondary transformer@>@/
{

   Transform* t = static_cast<Transform*>(@=$2@>);   
   delete t;
   @=$$@> = static_cast<void*>(@=$1@>); 

};

@q * (1)  origami_figure tertiary.@>
@* \§origami figure tertiary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_tertiary@>

@q ** (2) origami_figure tertiary --> origami_figure_secondary.  @>
@*1 \§origami figure tertiary> $\longrightarrow$ \§origami figure secondary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_tertiary: origami_figure_secondary@>@/
{
   @=$$@> = @=$1@>;

};

@q * (1) origami_figure expression.  @>
@* \§origami figure expression>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}  
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> origami_figure_expression@>

@q ** (2) origami_figure expression --> origami_figure_tertiary.  @>
@*1 \§origami figure expression> $\longrightarrow$ \§origami figure tertiary>.
\initials{LDF 2005.02.03.}

\LOG
\initials{LDF 2005.02.03.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=origami_figure_expression: origami_figure_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

