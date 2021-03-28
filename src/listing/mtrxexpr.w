@q mtrxexpr.w @> 
@q Created by Laurence Finston (LDF) Wed Nov 28 16:30:38 CET 2007  @>

@q * (0) matrix expressions.  @>
@** matrix expressions.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Created this file.
\ENDLOG 

@q * (1) matrix_primary.  @>
@* \§matrix primary>.
\initials{LDF 2007.11.28.}  

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> matrix_primary@>@/

@q ** (2) matrix_primary --> matrix_variable.@>
@*1 \§matrix primary> $\longrightarrow$ \§matrix variable>.  

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=matrix_primary: matrix_variable@>@/
{
  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

  else 
  {
      @=$$@> = static_cast<void*>(create_new<Matrix>(
                                  static_cast<Matrix*>(
                                     entry->object))); 
  }

};

@q ** (2) matrix_primary --> LEFT_PARENTHESIS matrix_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                     @>

@*1 \§matrix primary> $\longrightarrow$ \.{\LP} 
\§matrix expression> \.{\RP}.

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=matrix_primary: LEFT_PARENTHESIS matrix_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) matrix_primary --> LAST @>
@q ***** (5) matrix_vector_expression.@>

@*4 \§matrix primary> $\longrightarrow$ 
\.{LAST} \§matrix vector expression>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=matrix_primary: LAST matrix_vector_expression@>@/
{ 

   Matrix* c;

         c = create_new<Matrix>(0);

   Pointer_Vector<Matrix>* pv 
      = static_cast<Pointer_Vector<Matrix>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == static_cast<Pointer_Vector<Matrix>*>(0)|.@> 

@ Error handling:  |pv == static_cast<Pointer_Vector<Matrix>*>(0)|.
\initials{LDF 2007.11.28.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Matrix>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == static_cast<Pointer_Vector<Matrix>*>(0))|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2007.11.28.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != static_cast<Pointer_Vector<Matrix>*>(0) && pv->ctr > 0|.@> 

@ |pv != static_cast<Pointer_Vector<Matrix>*>(0) && pv->ctr > 0|.  
Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2007.11.28.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) matrix_secondary.  @>
@* \§matrix secondary>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> matrix_secondary@>
  
@q ** (2) matrix secondary --> matrix_primary.@>
@*1 \§matrix secondary> $\longrightarrow$ \§matrix primary>.

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=matrix_secondary: matrix_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ***** (5) matrix_secondary --> matrix_secondary @>
@q ***** (5) TIMES matrix_primary.                 @>

@*4 \§matrix secondary> $\longrightarrow$ \§matrix secondary> 
\§TIMES> \§matrix primary>. 
\initials{LDF 2007.12.20.}

\LOG
\initials{LDF 2007.12.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=matrix_secondary: matrix_secondary TIMES matrix_primary@>
{
    @=$$@> = matrix_secondary_rule_func_0(@=$1@>, @=$3@>, parameter);
};

@q * (1) matrix tertiary.@>
@* \§matrix tertiary>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> matrix_tertiary@>

@q ** (2) matrix tertiary --> matrix_secondary.  @>
@*1 \§matrix tertiary> $\longrightarrow$ \§matrix secondary>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=matrix_tertiary: matrix_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) matrix expression.@>
@* \§matrix expression>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> matrix_expression@>

@q ** (2) matrix expression --> matrix_tertiary.  @>
@*1 \§matrix expression> $\longrightarrow$ \§matrix tertiary>.

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=matrix_expression: matrix_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

