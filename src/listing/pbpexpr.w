@q pbpexpr.w @> 
@q Created by Laurence Finston Wed Sep  1 18:33:58 CEST 2004 @>
     

@q * (0) |bool_point| expressions.  @>
@** {\bf bool\_point} expressions.
\initials{LDF 2004.09.01.}  

\LOG
\initials{LDF 2004.09.01.}  
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |bool_point| primary.  @>
@* \§bool-point primary>.
  
\LOG
\initials{LDF 2004.09.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_primary@>@/

@q ***** (5) bool_point_primary --> bool_point_variable.@>
@*4 \§bool-point primary> $\longrightarrow$ \§bool-point variable>.  

\LOG
\initials{LDF 2004.09.05.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=bool_point_primary: bool_point_variable@>@/ 
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q ******* (7) |entry == 0 || entry->object == 0|.@> 

@ |entry == 0 || entry->object == 0|.
\initials{LDF 2004.11.05.}

\LOG
\initials{LDF 2004.12.09.}
No longer issuing an error message if |entry->object == 0|.
This condition occurs legitimately when one tries to show
an ``unknown |bool_point|''.
\ENDLOG 

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

@q ******* (7) |!(entry == 0 || entry->object == 0)|.@> 

@ |!(entry == 0 || entry->object == 0)|.
\initials{LDF 2004.11.05.}

\LOG
\initials{LDF 2004.11.05.}
@:BUG FIX@> BUG FIX:  Now setting 
|*bp = *static_cast<Bool_Point*>(entry->object)| instead of
|bp = static_cast<Bool_Point*>(entry->object)|.  
\ENDLOG 

@<Define rules@>=
  else /* |!(entry == 0 || entry->object == 0)|  */

     {

        Bool_Point* bp = new Bool_Point;
        *bp = *static_cast<Bool_Point*>(entry->object);

        @=$$@> = static_cast<void*>(bp);                    

     }  /* |else| (|!(entry == 0 || entry->object == 0)|)  */

};

@q **** (4) bool_point_argument.@>
@*3 \§bool-point argument>.  

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2004.04.29.}
Program this case.  
\ENDTODO

@q ***** (5) bool_point_primary --> LEFT_PARENTHESIS   @>
@q ***** (5) boolean_expression COMMA point_expression @>
@q ***** (5) RIGHT_PARENTHESIS.                        @>

@*4 \§bool-point primary> $\longrightarrow$ 
\.{LEFT\_PARENTHESIS} \§boolean expression> 
\.{COMMA} \§point expression> \.{RIGHT\_PARENTHESIS}.

\LOG
\initials{LDF 2004.11.04.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now casting |boolean_expression| to |bool*| 
rather than |int*|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=bool_point_primary: LEFT_PARENTHESIS @>@/
@=boolean_expression COMMA point_expression @>@/
@=RIGHT_PARENTHESIS@>@/

{

    bool* b   = static_cast<bool*>(@=$2@>);
    Point* p = static_cast<Point*>(@=$4@>);

    Bool_Point* bp;

         bp = new Bool_Point; 
   
@q ******* (7) Set |bp|, delete |b| and |p|, and exit rule   @> 
@q ******* (7) successfully, setting |bool_point_primary| to @>
@q ******* (7) |static_cast<void*>(bp)|.                     @>  

@ Set |bp|, delete |b| and |p|, and exit rule 
successfully, setting |bool_point_primary| to 
|static_cast<void*>(bp)|.
\initials{LDF 2004.11.04.}

@<Define rules@>=

    bp->b  = *b;
    bp->pt = *p;

    @=$$@> = static_cast<void*>(bp); 

};

@q **** (4) bool_point_primary --> ( bool_point_expression )  @>
@*3 \§bool-point primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\§bool-point expression> \.{RIGHT\_PARENTHESIS}.

\LOG
\initials{LDF 2004.09.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=bool_point_primary: LEFT_PARENTHESIS bool_point_expression RIGHT_PARENTHESIS@>@/ 
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: bool_point_primary --> ( bool_point_expression )."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q ***** (5) bool_point_primary --> LAST bool_point_vector_expression.@>

@*4 \§bool-point primary> $\longrightarrow$ 
\.{LAST} \§bool-point vector expression>.
\initials{LDF 2005.01.08.}

\LOG
\initials{LDF 2005.01.08.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=bool_point_primary: LAST bool_point_vector_expression@>@/
{ 
   Bool_Point* bp;

         bp = create_new<Bool_Point>(0);

   Pointer_Vector<Bool_Point>* bpv 
      = static_cast<Pointer_Vector<Bool_Point>*>(@=$2@>);

@q ******* (7) Error handling:  |bpv == 0|.@> 

@ Error handling:  |bpv == 0|.
\initials{LDF 2005.01.08.}

@<Define rules@>=

   if (bpv == static_cast<Pointer_Vector<Bool_Point>*>(0))
      {
          delete bp;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (bpv == 0)|  */

@q ******* (7) Error handling:  |bpv->ctr == 0|.@> 

@ Error handling:  |bpv->ctr == 0|.
\initials{LDF 2005.01.08.}

@<Define rules@>=

   else if (bpv->ctr == 0)
      {

          delete bp;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (bpv->ctr == 0)|  */

@q ******* (7) |bpv != 0 && bpv->ctr > 0|.@> 

@ |bpv != 0 && bpv->ctr > 0|.  Set |@=$$@>| to |*(bpv->v[bpv->ctr - 1])|.
\initials{LDF 2005.01.08.}

@<Define rules@>=

   else 
      {
         *bp = *(bpv->v[bpv->ctr - 1]);
         @=$$@> = static_cast<void*>(bp); 
      }
@q ******* (7) @> 

};

@q **** (4) bool_point secondary.  @>
@*3 \§bool-point secondary>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_secondary@>
  
@q ***** (5) bool_point secondary --> bool_point_primary.@>
@*4 \§bool-point secondary> $\longrightarrow$ \§bool-point primary>.
\initials{LDF 2004.09.05.}

\LOG
\initials{LDF 2004.09.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=bool_point_secondary: bool_point_primary@>@/ 
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: bool_point_secondary (bool_point_primary)."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

}
;

@q **** (4) bool_point tertiary.  @>
@ \§bool-point tertiary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_tertiary@>

@q ***** (5) bool_point tertiary --> bool_point_secondary.@>
@ \§bool-point tertiary> $\longrightarrow$ \§bool-point secondary>.

\LOG
\initials{LDF 2004.09.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=bool_point_tertiary: bool_point_secondary@>@/ 
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: bool_point_tertiary (bool_point_secondary)."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q **** (4) bool_point_tertiary: path_tertiary INTERSECTION_POINT @> 
@q **** (4) path_secondary                                        @> 

@*3 \§bool-point tertiary> $\longrightarrow$ \§path tertiary>
\.{INTERSECTION\_POINT} \§path secondary>.
\initials{LDF 2004.11.05.}

\LOG
\initials{LDF 2004.11.05.}
Added this rule.

\initials{LDF 2004.12.07.}
Changed |path_tertiary| to |path_like_tertiary|
and |path_secondary| to |path_like_secondary|.  
Added code for finding the intersection point 
of a linear |Path| and a planar |Path|.

\initials{LDF 2005.10.24.}
Changed |path_like_tertiary| and |path_like_secondary|
to |path_tertiary| and |path_secondary|, respectively.
Removed debugging code.

\initials{LDF 2005.10.27.}
Replaced the code with a call to |Scan_Parse::intersection_points_func()|.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: path_tertiary INTERSECTION_POINT@>@/
@=path_secondary@>@/
{

    @=$$@> = Scan_Parse::intersection_points_func<Path, Path, Bool_Point>(
                static_cast<Path*>(@=$1@>), static_cast<Path*>(@=$3@>),
                parameter);
};

@q **** (4) bool_point expression.  @>
@ \§bool-point expression>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_expression@>

@q ***** (5) bool_point expression --> bool_point_tertiary.  @>
@ \§bool-point expression> $\longrightarrow$ \§bool-point tertiary>.

\LOG
\initials{LDF 2004.09.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=bool_point_expression: bool_point_tertiary@>@/ 
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr << "\n*** Parser: bool_point_expression (bool_point_tertiary)."
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

}
;

