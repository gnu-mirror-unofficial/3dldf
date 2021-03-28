@q pcolexpr.w @> 
@q Created by Laurence Finston Tue May 25 12:54:45 MEST 2004  @>
     

@q * (0) color expressions.  @>
@** \�color expressions>.

\LOG
\initials{LDF 2004.05.25.}  
Created this file.
\ENDLOG 

@q ** (2) color primary.  @>
@*1 \�color primary>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_primary@>@/

@q *** (3) color_primary --> color_variable.@>
@*2 \�color primary> $\longrightarrow$ \�color variable>.  
\initials{LDF Undated.} 

\LOG
\initials{LDF 2004.11.22.}
No longer issuing an error message if |entry->object == 0|.
This condition occurs legitimately when one tries to show 
an ``unknown |color|''.
\ENDLOG

@q **** (4) Definition.@>   

@<Define rules@>=
@=color_primary: color_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>); 

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */@;

  {
    Color* s = new Color;
  
    *s = *static_cast<Color*>(entry->object); 
  
    @=$$@> = static_cast<void*>(s);
  }

};

@q *** (3) color_primary --> color_argument.@>
@*2 \�color primary> $\longrightarrow$ \�color argument>.  
\initials{LDF Undated.} 

@q *** (3) color_primary --> ( color_expression )  @>
@*2 \�color primary> $\longrightarrow$ `\.{\LP}' 
\�color expression> `\.{\RP}'.
\initials{LDF Undated.} 

@q **** (4) Definition.@>   

@<Define rules@>=
@=color_primary: LEFT_PARENTHESIS color_expression RIGHT_PARENTHESIS@>@/
{

     @=$$@> = @=$2@>;

};

@q ***** (5) color_primary --> LAST color_vector_expression.@>

@*4 \�color primary> $\longrightarrow$ 
\.{LAST} \�color vector expression>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=color_primary: LAST color_vector_expression@>@/
{ 

   Color* c;

   c = create_new<Color>(0);

   Pointer_Vector<Color>* pv 
      = static_cast<Pointer_Vector<Color>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.01.07.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Color>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.01.07.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {
          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.01.07.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q ** (2) color secondary.  @>
@*1 \�color secondary>.
\initials{LDF Undated.} 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_secondary@>
  
@q *** (3) color secondary --> color_primary.@>
@*2 \�color secondary> $\longrightarrow$ \�color primary>.
\initials{LDF Undated.} 

@<Define rules@>=
@=color_secondary: color_primary@>@/
{

    @=$$@> = @=$1@>;

};

@q *** (3) color secondary --> color_secondary times_or_over @>
@q *** (3) numeric_primary.                                  @> 
@*2 \�color secondary> $\longrightarrow$ \�color secondary>
\�times or over> \�numeric primary>.
\initials{LDF 2004.12.17.}

@<Define rules@>=
@=color_secondary: color_secondary times_or_over numeric_primary@>@/
{
   Color* c = static_cast<Color*>(@=$1@>);

@q **** (4) Error handling:  |c == 0|.@>   

@ Error handling:  |c == 0|.
\initials{LDF 2004.12.17.}

@<Define rules@>=

   if (c == static_cast<Color*>(0))
      {
          @=$$@> = static_cast<void*>(0);

      }  /* |if (c == 0)|  */

@q **** (4) @>   

   else /* |c != 0|  */
      {
         real r = @=$3@>;

@q ***** (5) Multiplication.@>   

          if (@=$2@> == TIMES)
             {
                *c *= r;
 
                @=$$@> = static_cast<void*>(c); 
             }  

@q ***** (5) Division.@>   

   else if (@=$2@> == OVER)

      {

@q ****** (6) Error handling:  Division by 0.@>   
@ Error handling:  Division by 0.
\initials{LDF 2004.12.17.}

@<Define rules@>=

         if (r == ZERO_REAL)
            {

#if 0
                cerr_strm << thread_name 
                          << "ERROR!  In `yyparse()', rule "
                          << "`color_secondary --> "
                          << endl 
                          << "color_secondary times_or_over "
                          << "numeric_primary':"
                          << endl << "`numeric_primary' == 0.  "
                          << "Can't divide."
                          << endl << "Setting `color_secondary' on "
                          << "the left-hand side to null, exiting rule, "
                          << "and will try to continue.";
      
                log_message(cerr_strm);
                cerr_message(cerr_strm, error_stop_value);
                cerr_strm.str("");
#endif 
                delete c;
                c = 0;

                @=$$@> = static_cast<void*>(0);

            }  /* |if (r == 0)|  */

@q ****** (6) |r != 0|.@>   
@ |r != 0|.
\initials{LDF 2004.12.17.}

@<Define rules@>=

      else  /* |r != 0|  */
         {

             *c *= 1/r;

             @=$$@> = static_cast<void*>(c); 
 
         }   /* |else| (|r != 0|)  */

@q ***** (5).@> 

      } /* |else if (@=$2@> == OVER)|  */

@q ***** (5) Error handling:  Invalid value for |times_or_over|.@>   

@ Error handling:  Invalid value for |times_or_over|.
\initials{LDF 2004.12.17.}

@<Define rules@>=

   else  /* Invalid |times_or_over|.  */
      {
#if 0 
          cerr_strm << thread_name 
                    << "ERROR!  In `yyparse()', rule "
                    << "`color_secondary --> "
                    << endl 
                    << "color_secondary times_or_over "
                    << "numeric_primary':"
                    << endl << "Invalid value for `times_or_over'."
                    << endl << "Setting `color_secondary' on "
                    << "the left-hand side "
                    << endl 
                    << "to `color_secondary' on "
                    << "the right-hand side unchanged and continuing.";
      
          log_message(cerr_strm);
          cerr_message(cerr_strm, error_stop_value);
          cerr_strm.str("");
#endif 
          @=$$@> = static_cast<void*>(c); 

      }  /* |else| (Invalid value for |times_or_over|).  */

@q ***** (5).@> 

   }   /* |else| (|c != 0|)  */       

};

@q *** (3) color secondary --> numeric_secondary TIMES @>
@q *** (3) color_primary.                              @> 

@*2 \�color secondary> $\longrightarrow$ \�numeric secondary>
\.{TIMES} \�color primary>.
\initials{LDF 2004.12.18.}

\LOG
\initials{LDF 2004.12.18.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=color_secondary: numeric_secondary TIMES color_primary@>@/
{

   Color* c = static_cast<Color*>(@=$3@>);

@q **** (4) Error handling:  |c == 0|.@>   

@ Error handling:  |c == 0|.
\initials{LDF 2004.12.18.}

@<Define rules@>=

   if (c == static_cast<Color*>(0))
      {

          @=$$@> = static_cast<void*>(0);

      }  /* |if (c == 0)|  */

@q **** (4) @>   

   else /* |c != 0|  */
      {
         real r = @=$1@>;

         *c *= r;
 
         @=$$@> = static_cast<void*>(c); 

      }   /* |else| (|c != 0|)  */       

};

@q *** (3) color_secondary --> numeric_secondary color_variable.@> 

@*2 \�color secondary> $\longrightarrow$ \�numeric secondary> 
\�color variable>.
\initials{LDF 2004.12.17.}

Multiplication without \.{TIMES}.
\initials{LDF 2004.12.17.}

\LOG
\initials{LDF 2004.12.17.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@>   

@<Define rules@>=
@=color_secondary: numeric_secondary color_variable@>@/
{

   Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

@q ***** (5) Error handling:  |entry == 0 || entry->object == 0|.@> 

@ Error handling:  |entry == 0 || entry->object == 0|.
\initials{LDF 2004.12.17.}

@<Define rules@>=

   if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
      {
          @=$$@> = static_cast<void*>(0);

      }  /* |if (entry == 0 || entry->object == 0)|  */

@q ***** (5) |entry != 0 && entry->object != 0|.@> 
@ |entry != 0 && entry->object != 0|.
\initials{LDF 2004.12.17.}

@<Define rules@>=

   else  /* |entry != && entry->object != 0|  */
      {
         Color* c;

         c = create_new<Color>(static_cast<Color*>(entry->object));

         *c *= @=$1@>;

         @=$$@> = static_cast<void*>(c); 

      }  /* |else| (|entry != && entry->object != 0|)  */

@q ***** (5).@>    

};

@q ** (2) color tertiary.@>
@*1 \�color tertiary>.
\initials{LDF Undated.} 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_tertiary@>

@q *** (3) color tertiary --> color_secondary.@>
@*2 \�color tertiary> $\longrightarrow$ \�color secondary>.

@<Define rules@>=
@=color_tertiary: color_secondary@>@/
{

    @=$$@> = @=$1@>;

};

@q *** (3) color tertiary --> color_tertiary PLUS @>
@q *** (3) color_secondary.                       @>

@*2 \�color tertiary> $\longrightarrow$ \�color tertiary>
\.{PLUS} \�color secondary>.
\initials{LDF 2005.01.06.}

\LOG
\initials{LDF 2004.12.17.}
Added this rule.

\initials{LDF 2005.01.06.}
Replaced ``\�plus or minus>'' with ``\.{PLUS}'' and 
added the rule ``\�color tertiary> $\longrightarrow$ 
\�color tertiary> \.{MINUS} \�color secondary>'' below.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=color_tertiary: color_tertiary PLUS color_secondary@>@/
{

   Color* c = static_cast<Color*>(@=$1@>);    

   Color* d = static_cast<Color*>(@=$3@>);    

@q **** (4) @>   

   if (c == static_cast<Color*>(0) || d == static_cast<Color*>(0))
      {

          delete c;
          delete d;

          c = static_cast<Color*>(0);
          d = static_cast<Color*>(0);

          @=$$@> = static_cast<void*>(0);

      }  /* |if (c == 0 || d == 0)|  */

@q **** (4) |c != 0 && d != 0|.@>   

@ |c != 0 && d != 0|
\initials{LDF 2004.12.17.}

@<Define rules@>=

      else /* |c != 0 && d != 0|  */
         {
             *c += *d;

             @=$$@> = static_cast<void*>(c); 

         }  /* |else| (|c != 0 && d != 0|)  */

@q **** (4) @>   

               delete d;
               d = 0;
};

@q *** (3) color tertiary --> color_tertiary MINUS @>
@q *** (3) color_secondary.                        @>

@*2 \�color tertiary> $\longrightarrow$ \�color tertiary>
\.{MINUS} \�color secondary>.
\initials{LDF 2005.01.06.}

\LOG
\initials{LDF 2005.01.06.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=color_tertiary: color_tertiary MINUS color_secondary@>@/
{

   Color* c = static_cast<Color*>(@=$1@>);    

   Color* d = static_cast<Color*>(@=$3@>);    

@q **** (4) @>   

   if (c == static_cast<Color*>(0) || d == static_cast<Color*>(0))
      {
          delete c;
          delete d;

          c = static_cast<Color*>(0);
          d = static_cast<Color*>(0);

          @=$$@> = static_cast<void*>(0);

      }  /* |if (c == 0 || d == 0)|  */

@q **** (4) |c != 0 && d != 0|.@>   

@ |c != 0 && d != 0|
\initials{LDF 2004.12.17.}

@<Define rules@>=

      else /* |c != 0 && d != 0|  */
         {
             *c -= *d;

             @=$$@> = static_cast<void*>(c); 

         }  /* |else| (|c != 0 && d != 0|)  */

@q **** (4) @>   

               delete d;
               d = static_cast<Color*>(0);
};

@q ** (2) color expression.  @>
@*1 \�color expression>.
\initials{LDF Undated.} 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> color_expression@>

@q *** (3) color expression --> color_tertiary.  @>
@*2 \�color expression> $\longrightarrow$ \�color tertiary>.

@<Define rules@>=
@=color_expression: color_tertiary@>@/
{

     @=$$@> = @=$1@>;

};

