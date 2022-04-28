@q psprllps.w @> 
@q Created by Laurence Finston Wed 27 Apr 2022 05:32:11 PM CEST @>
       
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2022 The Free Software Foundation, Inc.                    @>

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

@q * (0) superellipse expressions.  @>
@** superellipse expressions.

\LOG
\initials{LDF 2022.04.27.}
Created this file.
\ENDLOG 

@q * (1) superellipse_primary.  @>
@* \§superellipse primary>.
  
\LOG
\initials{LDF 2022.04.27.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> superellipse_primary@>@/

@q ** (2) superellipse_primary --> superellipse_variable.@>
@*1 \§superellipse primary> $\longrightarrow$ \§superellipse variable>.  

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=superellipse_primary: superellipse_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */
     @=$$@> = static_cast<void*>(create_new<Superellipse>(
                                   static_cast<Superellipse*>(
                                     entry->object))); 

};

@q ** (2) superellipse_primary --> LEFT_PARENTHESIS superellipse_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \§superellipse primary> $\longrightarrow$ \.{\LP} 
\§superellipse expression> \.{\RP}.

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=superellipse_primary: LEFT_PARENTHESIS superellipse_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q * (1) superellipse_secondary.  @>
@* \§superellipse secondary>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> superellipse_secondary@>
  
@q ** (2) superellipse secondary --> superellipse_primary.@>
@*1 \§superellipse secondary> $\longrightarrow$ \§superellipse primary>.

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=superellipse_secondary: superellipse_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) superellipse secondary --> superellipse_secondary transformer.  @>
@*1 \§superellipse secondary> $\longrightarrow$ \§superellipse secondary> 
\§transformer>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=superellipse_secondary: superellipse_secondary transformer@>@/
{

  Superellipse* p = static_cast<Superellipse*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  @=$$@> = static_cast<void*>(p); 

  delete t;

};

@q * (1) superellipse tertiary.@>
@* \§superellipse tertiary>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> superellipse_tertiary@>

@q ** (2) superellipse tertiary --> superellipse_secondary.  @>
@*1 \§superellipse tertiary> $\longrightarrow$ \§superellipse secondary>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=superellipse_tertiary: superellipse_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) superellipse expression.@>
@* \§superellipse expression>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> superellipse_expression@>

@q ** (2) superellipse expression --> superellipse_tertiary.  @>
@*1 \§superellipse expression> $\longrightarrow$ \§superellipse tertiary>.

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=superellipse_expression: superellipse_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

@q *** (3) superellipse primary: GET_SUPERELLIPSE superellipse_option_list @>

@*2 \§superellipse primary> $\longrightarrow$ \.{GET\_SUPERELLIPSE} \§superellipse option list>.
\initials{LDF 2022.04.25.}

\LOG
\initials{LDF 2022.04.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=superellipse_primary: GET_SUPERELLIPSE superellipse_option_list@>
{
@q **** (4) @>
        
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE

   DEBUG = true; /* |false| */

   if (DEBUG)
   { 
      cerr << "*** Parser:  Rule `superellipse_primary: GET_SUPERELLIPSE superellipse_option_list'."
           << endl;
   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q **** (4) @>

   Superellipse *s = static_cast<Superellipse*>(@=$2@>);

   status = s->generate_path(scanner_node); 
 
   if (status != 0)
   {
      cerr_strm << thread_name << "ERROR!  In parser, rule "
                << "`superellipse_primary: GET_SUPERELLIPSE superellipse_option_list':"
                << endl 
                << "`Superellipse::generate_path' failed, returning " << status << "."
                << endl 
                << "Failed to generate superellipse path.  Continuing.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  /* |if (status != 0)|  */

@q ***** (5) @>

#if DEBUG_COMPILE
   else if (DEBUG)
   { 
       cerr_strm << thread_name << "In parser, rule "
                 << "`superellipse_primary: GET_SUPERELLIPSE superellipse_option_list':"
                 << endl 
                 << "`Superellipse::generate_path' succeeded, returning 0.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

    }  
#endif /* |DEBUG_COMPILE|  */@; 

@q ***** (5) @>

   @=$$@> = static_cast<void*>(s);

@q **** (4) @>

};

@q ** (2) superellipse_option_list@>

@ \§superellipse option list>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> superellipse_option_list@>

@q *** (3) superellipse_option_list: /* EMPTY */ @>
@
\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: /* Empty  */@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: /* Empty */'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = create_new<Superellipse>(0);   

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_A numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_A} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_A numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list WITH_A numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->x_semiaxis_length = @=$3@>;

  @=$$@> = @=$1@>;

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_B numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_B} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_B numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list WITH_B numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->z_semiaxis_length = @=$3@>;

  @=$$@> = @=$1@>;

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_BETA numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_BETA} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_BETA numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list "
           << "WITH_BETA numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->beta = @=$3@>;

#if LDF_REAL_DOUBLE
  s->superness_beta = -1.0 / (log(s->beta) / log(2));
#else
  s->superness_beta = -1.0 / (logf(s->beta) / logf(2));
#endif 

  if (s->gamma < 0.0)
     s->gamma = s->beta;

  if (s->superness_gamma < 0.0)
     s->superness_gamma = s->superness_beta;

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_GAMMA numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_GAMMA} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_GAMMA numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list WITH_GAMMA "
           << "numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->gamma = @=$3@>;

/* !!START HERE:  LDF 2022.04.27.  Use natural logs and the mathematical constant for
   ln(2).  Check if it's defined first.
*/ 

#if LDF_REAL_DOUBLE
  s->superness_gamma = -1.0 / (log(s->gamma) / log(2));
#else
  s->superness_gamma = -1.0 / (logf(s->gamma) / logf(2));
#endif 

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_SUPERNESS numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_SUPERNESS} \§numeric expression>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.26.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_SUPERNESS numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list "
           << "WITH_SUPERNESS numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->superness_gamma = s->superness_beta = @=$3@>;

#if LDF_REAL_DOUBLE
  s->gamma = s->beta = -1.0 / (log(s->superness_beta) / (log(2.0)));
#else
  s->gamma = s->beta = -1.0 / (logf(s->superness_beta) / (logf(2.0)));
#endif 

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_SUPERNESS_BETA numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_SUPERNESS\_BETA} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_SUPERNESS_BETA numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list "
           << "WITH_SUPERNESS_BETA numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->superness_beta = @=$3@>;

#if LDF_REAL_DOUBLE
  s->beta = -1.0 / (log(s->superness_beta) / (log(2.0)));
#else
  s->beta = -1.0 / (logf(s->superness_beta) / (logf(2.0)));
#endif 

  if (s->superness_gamma < 0.0)
    s->superness_gamma = s->superness_beta;

  if (s->gamma < 0.0)
    s->gamma = s->beta;

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_SUPERNESS_GAMMA numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_SUPERNESS\_GAMMA} \§numeric expression>.
\initials{LDF 2022.04.26.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_SUPERNESS_GAMMA numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list "
           << "WITH_SUPERNESS_GAMMA numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  s->superness_gamma = @=$3@>;

#if LDF_REAL_DOUBLE
  s->gamma = -1.0 / (log(s->superness_gamma) / (log(2.0)));
#else
  s->gamma = -1.0 / (logf(s->superness_gamma) / (logf(2.0)));
#endif 

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_RESOLUTION numeric_expression @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_RESOLUTION} \§numeric expression>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_RESOLUTION numeric_expression @>@/
{
#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 

  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list WITH_RESOLUTION "
           << "numeric_expression'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  int res;

#if LDF_REAL_DOUBLE
  res = static_cast<int>(round(abs(@=$3@>)));
#else
  res = static_cast<int>(roundf(fabs(@=$3@>)));
#endif 

  s->resolution = res;

  @=$$@> = static_cast<void*>(s);

};

@q *** (3) superellipse_option_list: superellipse_option_list WITH_ARC numeric_list @>

@ \§superellipse option list> $\longrightarrow$ \§superellipse option list>
\.{WITH\_ARC} \§numeric list>.
\initials{LDF 2022.04.27.}

\LOG
\initials{LDF 2022.04.27.}
Added this rule.
\ENDLOG 

@q **** (4) @>

@<Define rules@>=
@=superellipse_option_list: superellipse_option_list WITH_ARC numeric_list @>@/
{
@q ***** (5) @>

  int status = 0;

  real begin = 0.0;
  real end   = 0.0;

#if DEBUG_COMPILE
  bool DEBUG = true; /* |false| */ @; 
  if (DEBUG)
  {
      cerr << "*** Parser: `superellipse_option_list: superellipse_option_list WITH_ARC "
           << "numeric_list'."
           << endl;
  }
#endif /* |DEBUG_COMPILE|  */@;

@q ***** (5) @>

  Superellipse *s = static_cast<Superellipse*>(@=$1@>);

  Pointer_Vector<real> *pv = static_cast<Pointer_Vector<real>*>(@=$3@>);

  if (pv == 0)
  {
      cerr << "ERROR!  In parser, rule `superellipse_option_list:"
           << endl 
           << "superellipse_option_list WITH_ARC numeric_list':"
           << endl 
           << "`numeric_list' is NULL.  Can't set arc length.  Continuing." 
           << endl; 

      goto END_SUPERELLIPSE_WITH_ARC_RULE;

  }

@q ***** (5) @>

  cerr << "pv->v.size() == " << pv->v.size() << endl;

  if (pv->v.size() < 2)
  {
      cerr << "ERROR!  In parser, rule `superellipse_option_list:"
           << endl 
           << "superellipse_option_list WITH_ARC numeric_list':"
           << endl 
           << "`pv->v.size()' == " << pv->v.size() << " (< 2)" << endl
           << "Can't set arc length.  Continuing." << endl; 

      goto END_SUPERELLIPSE_WITH_ARC_RULE;

  }

@q ***** (5) @>
@
@<Define rules@>=

#if DEBUG_COMPILE
   else if (DEBUG)
   { 
      cerr << "In parser, rule `superellipse_option_list:"
           << endl 
           << "superellipse_option_list WITH_ARC numeric_list':"
           << endl 
           << "`pv->v.size()' == " << pv->v.size() << " (>= 2)" << endl
           << "Will set arc length." << endl; 
   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q ***** (5) @>
@
@<Define rules@>=

   begin = *(pv->v[0]);
   end   = *(pv->v[1]);

   status = Superellipse::fix_arc_boundaries(begin, end);

   if (status != 0)
   {
       cerr << "ERROR!  In parser, rule `superellipse_option_list:"
            << endl 
            << "superellipse_option_list WITH_ARC numeric_list':"
            << endl 
            << "`Superellipse::fix_arc_boundaries' failed, returning " << status << "." 
            << endl 
            << "Can't set arc length.  Continuing." << endl; 

       goto END_SUPERELLIPSE_WITH_ARC_RULE;
      
   }  /* |if (status != 0)| */

@q ***** (5) @>
@
@<Define rules@>=

#if DEBUG_COMPILE
   else if (DEBUG)
   { 
       cerr << "In parser, rule `superellipse_option_list:"
            << endl 
            << "superellipse_option_list WITH_ARC numeric_list':"
            << endl 
            << "`Superellipse::fix_arc_boundaries' succeeded, returning 0."
            << endl
            << "Will set arc length." << endl; 
   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q ***** (5) @>
@
@<Define rules@>=

   s->arc_begin = begin;
   s->arc_end   = end;

#if DEBUG_COMPILE
   if (DEBUG)
   { 
    cerr << "s->arc_begin == " << s->arc_begin << endl
         << "s->arc_end == " << s->arc_end << endl;

cerr << "XXX Enter <RETURN> to continue: ";
getchar(); 

   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q ***** (5) @>
@
@<Define rules@>=

END_SUPERELLIPSE_WITH_ARC_RULE:

  if (pv != 0)
  {
     pv->clear();
     delete pv;
     pv = 0;
  }

  @=$$@> = static_cast<void*>(s);

};







@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2022.04.27.}                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 80))    @>

@q Local Variables:                   @>
@q mode:CWEB                          @>
@q eval:(outline-minor-mode t)        @>
@q abbrev-file-name:"~/.abbrev_defs"  @>
@q eval:(read-abbrev-file)            @>
@q fill-column:80                     @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End:                               @>

