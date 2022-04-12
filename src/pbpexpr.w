@q pbpexpr.w @> 
@q Created by Laurence Finston Wed Sep  1 18:33:58 CEST 2004 @>
     
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, @>
@q 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 The Free Software Foundation, Inc. @>

@q GNU 3DLDF is free software; you can redistribute it and/or modify @>
@q it under the terms of the GNU General Public License as published by @>
@q the Free Software Foundation; either version 3 of the License, or @>
@q (at your option) any later version. @>

@q GNU 3DLDF is distributed in the hope that it will be useful, @>
@q but WITHOUT ANY WARRANTY; without even the implied warranty of @>
@q MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the @>
@q GNU General Public License for more details. @>

@q You should have received a copy of the GNU General Public License @>
@q along with GNU 3DLDF; if not, write to the Free Software @>
@q Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA @>

@q GNU 3DLDF is a GNU package.  @>
@q It is part of the GNU Project of the  @>
@q Free Software Foundation @>
@q and is published under the GNU General Public License. @>
@q See the website http://www.gnu.org @>
@q for more information.   @>
@q GNU 3DLDF is available for downloading from @>
@q http://www.gnu.org/software/3dldf/LDF.html. @>

@q (``@@'' stands for a single at-sign in the following paragraph.) @>

@q Please send bug reports to Laurence.Finston@@gmx.de @>
@q The mailing list help-3dldf@@gnu.org is available for people to @>
@q ask other users for help.  @>
@q The mailing list info-3dldf@@gnu.org is for sending @>
@q announcements to users. To subscribe to these mailing lists, send an @>
@q email with ``subscribe <email-address>'' as the subject.  @>

@q The author can be contacted at: @>

@q Laurence D. Finston                 @> 
@q c/o Free Software Foundation, Inc.  @>
@q 51 Franklin St, Fifth Floor         @> 
@q Boston, MA  02110-1301              @>
@q USA                                 @>

@q Laurence.Finston@@gmx.de (@@ stands for a single ``at'' sign.)@>

@q * (0) |bool_point| expressions.  @>
@** {\bf bool\_point} expressions.
\initials{LDF 2004.09.01.}  

\LOG
\initials{LDF 2004.09.01.}  
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |bool_point| primary.  @>
@* \�bool-point primary>.
  
\LOG
\initials{LDF 2004.09.05.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_primary@>@/


@q ***** (5) bool_point_primary --> bool_point_variable.@>
@*4 \�bool-point primary> $\longrightarrow$ \�bool-point variable>.  

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
@*3 \�bool-point argument>.  

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

@*4 \�bool-point primary> $\longrightarrow$ 
\.{LEFT\_PARENTHESIS} \�boolean expression> 
\.{COMMA} \�point expression> \.{RIGHT\_PARENTHESIS}.

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
@*3 \�bool-point primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\�bool-point expression> \.{RIGHT\_PARENTHESIS}.

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

@*4 \�bool-point primary> $\longrightarrow$ 
\.{LAST} \�bool-point vector expression>.
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
@*3 \�bool-point secondary>.
\initials{LDF Undated.}

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_secondary@>
  
@q ***** (5) bool_point secondary --> bool_point_primary.@>
@*4 \�bool-point secondary> $\longrightarrow$ \�bool-point primary>.
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
@ \�bool-point tertiary>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_tertiary@>

@q ***** (5) bool_point tertiary --> bool_point_secondary.@>
@ \�bool-point tertiary> $\longrightarrow$ \�bool-point secondary>.

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

@q **** (4) @>
@*3 \�point pair>.
\initials{LDF 2022.04.12.}

\LOG
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> point_pair@>@/

@q ***** (5) point_pair: LEFT_PARENTHESIS point_primary COMMA point_primary RIGHT_PARENTHESIS@>
@
@<Define rules@>=
@=point_pair: LEFT_PARENTHESIS point_primary COMMA point_primary RIGHT_PARENTHESIS@>
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
      cerr << "*** Parser, Rule `point_pair: LEFT_PARENTHESIS point_primary COMMA "
           << "point_primary RIGHT_PARENTHESIS'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Pointer_Vector<Point> *pv = create_new<Pointer_Vector<Point>>(0);
  Point *p0 = static_cast<Point*>(@=$2@>);
  Point *p1 = static_cast<Point*>(@=$4@>);

  *pv += p0;
  *pv += p1;

  @=$$@> =  static_cast<void*>(pv);  

};

@q **** (4) bool_point_tertiary: point_pair INTERSECTION_POINT @> 
@q **** (4) point_pair                                         @> 

@*3 \�bool-point tertiary> $\longrightarrow$ \�point pair>
\.{INTERSECTION\_POINT} \�point pair>.
\initials{LDF 2022.04.12.}

\LOG
\initials{LDF 2022.04.12.}
Added this rule.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: point_pair INTERSECTION_POINT point_pair@>@/
{
@q ****** (6) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
      cerr << "*** Parser: Rule `bool_point_tertiary: point_pair INTERSECTION_POINT point_pair'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

@q ****** (6) @>

  Pointer_Vector<Point> *pv0 = static_cast<Pointer_Vector<Point>*>(@=$1@>); 
  Pointer_Vector<Point> *pv1 = static_cast<Pointer_Vector<Point>*>(@=$3@>);     

@q ****** (6) @>

  if (   pv0 == 0 || pv1 == 0 || pv0->v.size() < 2 || pv1->v.size() < 2 
      || pv0->v[0] == 0 || pv0->v[1] == 0 || pv1->v[0] == 0 || pv1->v[1] == 0)
  {
     delete pv0;
     delete pv1;
     pv0 = pv1 = 0;
     Bool_Point *bp = create_new<Bool_Point>(INVALID_BOOL_POINT);
     @=$$@> =  static_cast<void*>(bp);  
  }

@q ****** (6) @>

  else
  {
@q ******* (7) @>

#if DEBUG_COMPILE
     if (DEBUG)
     { 
         cerr << "In parser: rule `bool_point_tertiary: point_pair "
              << "INTERSECTION_POINT point_pair':"
              << endl;

         pv0->show("*pv0:");
         pv1->show("*pv1:");

     }  
#endif /* |DEBUG_COMPILE|  */@;         

@q ******* (7) @>

@ I could just push the pointers onto |p0| and |p1| but then I couldn't delete
|pv0| and |pv1|.  This way isn't better, I just think it looks neater.
!! TODO:  Change this?
\initials{LDF 2022.04.12.}

@<Define rules@>= 

     Path *p0 = create_new<Path>(0);
     Path *p1 = create_new<Path>(0);

     *p0 += *(pv0->v[0]);
     *p0 += *(pv0->v[1]);
     *p0 += "--";

     *p1 += *(pv1->v[0]);
     *p1 += *(pv1->v[1]);
     *p1 += "--";

     delete pv0;
     delete pv1;
     pv0 = pv1 = 0;

     @=$$@> = Scan_Parse::intersection_points_func<Path, Path, Bool_Point>(
                   p0, p1, parameter);

@q ******* (7) @>

  }  /* |else|  */

@q ****** (6) @>

};

@q **** (4) bool_point_tertiary: point_pair INTERSECTION_POINT @> 
@q **** (4) path_secondary                                     @> 

@*3 \�bool-point tertiary> $\longrightarrow$ \�point pair> \.{INTERSECTION\_POINT} 
\�path secondary>.
\initials{LDF 2022.04.12.}

\LOG
\initials{LDF 2022.04.12.}
Added this rule.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: point_pair INTERSECTION_POINT path_secondary@>@/
{
@q ****** (6) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
      cerr << "*** Parser: Rule `bool_point_tertiary: point_pair INTERSECTION_POINT "
           << "path_secondary'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

@q ****** (6) @>

  Pointer_Vector<Point> *pv = static_cast<Pointer_Vector<Point>*>(@=$1@>); 
  Path *q = static_cast<Path*>(@=$3@>);     

@q ****** (6) @>

  if (   pv == 0 || q == 0 || pv->v.size() < 2 || q->points.size() < 2 
      || pv->v[0] == 0 || pv->v[1] == 0 || q->points[0] == 0 || q->points[1] == 0)
  {
     delete pv;
     delete q;
     pv = 0;
     q = 0;
     Bool_Point *bp = create_new<Bool_Point>(INVALID_BOOL_POINT);
     @=$$@> =  static_cast<void*>(bp);  
  }

@q ****** (6) @>

  else
  {
@q ******* (7) @>

#if DEBUG_COMPILE
     if (DEBUG)
     { 
         cerr << "In parser: rule `bool_point_tertiary: point_pair "
              << "INTERSECTION_POINT path_secondary':"
              << endl;

         pv->show("*pv:");
         q->show("*q:");

     }  
#endif /* |DEBUG_COMPILE|  */@;         

@q ******* (7) @>

@ I could just push the pointers onto |p| but then I couldn't delete
|pv|.  This way isn't better, I just think it looks neater.
!! TODO:  Change this?
\initials{LDF 2022.04.12.}

@<Define rules@>= 

     Path *p = create_new<Path>(0);

     *p += *(pv->v[0]);
     *p += *(pv->v[1]);
     *p += "--";

     delete pv;

     pv = 0;

     @=$$@> = Scan_Parse::intersection_points_func<Path, Path, Bool_Point>(p, 
                                                                           q, 
                                                                           parameter);

@q ******* (7) @>

  }  /* |else|  */

@q ****** (6) @>

};

@q **** (4) bool_point_tertiary: path_tertiary INTERSECTION_POINT @> 
@q **** (4) point_pair                                            @> 

@*3 \�bool-point tertiary> $\longrightarrow$ \�path tertiary> \.{INTERSECTION\_POINT} 
\�point pair>.
\initials{LDF 2022.04.12.}

\LOG
\initials{LDF 2022.04.12.}
Added this rule.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: path_tertiary INTERSECTION_POINT point_pair@>@/
{
@q ****** (6) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
      cerr << "*** Parser: Rule `bool_point_tertiary: path_tertiary INTERSECTION_POINT "
           << "point_pair'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

@q ****** (6) @>

  Pointer_Vector<Point> *pv = static_cast<Pointer_Vector<Point>*>(@=$3@>); 
  Path *q = static_cast<Path*>(@=$1@>);     

@q ****** (6) @>

  if (   pv == 0 || q == 0 || pv->v.size() < 2 || q->points.size() < 2 
      || pv->v[0] == 0 || pv->v[1] == 0 || q->points[0] == 0 || q->points[1] == 0)
  {
     delete pv;
     delete q;
     pv = 0;
     q = 0;
     Bool_Point *bp = create_new<Bool_Point>(INVALID_BOOL_POINT);
     @=$$@> =  static_cast<void*>(bp);  
  }

@q ****** (6) @>

  else
  {
@q ******* (7) @>

#if DEBUG_COMPILE
     if (DEBUG)
     { 
         cerr << "In parser: rule `bool_point_tertiary: path_tertiary "
              << "INTERSECTION_POINT point_pair':"
              << endl;

         pv->show("*pv:");
         q->show("*q:");

     }  
#endif /* |DEBUG_COMPILE|  */@;         

@q ******* (7) @>

@ I could just push the pointers onto |p| but then I couldn't delete
|pv|.  This way isn't better, I just think it looks neater.
!! TODO:  Change this?
\initials{LDF 2022.04.12.}

@<Define rules@>= 

     Path *p = create_new<Path>(0);

     *p += *(pv->v[0]);
     *p += *(pv->v[1]);
     *p += "--";

     delete pv;

     pv = 0;

     @=$$@> = Scan_Parse::intersection_points_func<Path, Path, Bool_Point>(p, 
                                                                           q, 
                                                                           parameter);

@q ******* (7) @>

  }  /* |else|  */

@q ****** (6) @>

};



@q **** (4) bool_point_tertiary: path_tertiary INTERSECTION_POINT @> 
@q **** (4) path_secondary                                        @> 

@*3 \�bool-point tertiary> $\longrightarrow$ \�path tertiary>
\.{INTERSECTION\_POINT} \�path secondary>.
\initials{LDF 2004.11.05.}

\LOG
\initials{LDF 2004.11.05.}
Added this rule.

\initials{LDF 2004.12.07.}
Changed |path_tertiary| to |path_like_tertiary| and |path_secondary| to |path_like_secondary|.  
Added code for finding the intersection point of a linear |Path| and a planar |Path|.

\initials{LDF 2005.10.24.}
Changed |path_like_tertiary| and |path_like_secondary|
to |path_tertiary| and |path_secondary|, respectively.
Removed debugging code.

\initials{LDF 2005.10.27.}
Replaced the code with a call to |Scan_Parse::intersection_points_func|.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: path_tertiary INTERSECTION_POINT path_secondary@>@/
{

    @=$$@> = Scan_Parse::intersection_points_func<Path, Path, Bool_Point>(
                static_cast<Path*>(@=$1@>), static_cast<Path*>(@=$3@>),
                parameter);
};


@q **** (4) bool_point_tertiary: path_tertiary INTERSECTION_POINT @> 
@q **** (4) plane_secondary                                        @> 

@*3 \�bool-point tertiary> $\longrightarrow$ \�path tertiary>
\.{INTERSECTION\_POINT} \�plane secondary>.
\initials{LDF 2021.07.19.}

\LOG
\initials{LDF 2021.07.19.}
Added this rule.
\ENDLOG
 
@q ***** (5) Definition.@> 

@<Define rules@>= 
@=bool_point_tertiary: path_tertiary INTERSECTION_POINT plane_secondary@>@/
{

    Bool_Point *bp = new Bool_Point;

    *bp = static_cast<Plane*>(@=$3@>)->intersection_point(*static_cast<Path*>(@=$1@>));

    @=$$@> = static_cast<void*>(bp);

};

@q **** (4) bool_point expression.  @>
@ \�bool-point expression>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> bool_point_expression@>

@q ***** (5) bool_point expression --> bool_point_tertiary.  @>
@ \�bool-point expression> $\longrightarrow$ \�bool-point tertiary>.

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

};

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2004.02.12}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 80))    @>

@q Local Variables:                   @>
@q mode:CWEB                          @>
@q eval:(outline-minor-mode t)        @>
@q abbrev-file-name:"~/.abbrev_defs"  @>
@q eval:(read-abbrev-file)            @>
@q fill-column:80                     @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End:                               @>

