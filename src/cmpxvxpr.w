@q cmpxvxpr.w @> 
@q Created by Laurence Finston Sun Dec  2 18:10:05 CET 2007 @>

@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, @>
@q 2015, 2016, 2017, 2018, 2019, 2020, 2021 The Free Software Foundation  @>

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


@q * (0) |complex_vector| expressions.@>
@** \�complex vector> expressions.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Created this file and wrote quite a few rules.  
\ENDLOG 

@q * (1) |complex_vector| primary.  @>
@* \�complex vector primary>.
\initials{LDF 2007.12.02.}
  
\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG


@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_vector_primary@>@/

@q ** (2) complex_vector_primary --> complex_vector_variable.@>
@*1 \�complex vector primary> $\longrightarrow$ 
\�complex vector variable>.  
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=
@=complex_vector_primary: complex_vector_variable@>@/ 
{
  @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `complex_vector_primary --> "
                << "complex_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

@q **** (4) Error handling:  
|entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0)|.@> 

@ Error handling:  
|entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0)|.
\initials{LDF 2007.12.02.}

@<Define rules@>=

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule " 
                << endl 
                << "Rule `complex_vector_primary --> "
                << "complex_vector_variable':"
                << endl << "`entry' == static_cast<Id_Map_Entry_Node>(0) or "
                << "`entry->object' == static_cast<void*>(0)."
                << endl 
                << "Setting `complex_vector_primary' "
                << "to static_cast<void*>(0) and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

@q **** (4) |!(   entry == static_cast<Id_Map_Entry_Node>(0)  @>
@q **** (4)    || entry->object == static_cast<void*>(0))|.   @>

@ |!(entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))|.
\initials{LDF 2007.12.02.}

@<Define rules@>=
  else 
     {

        typedef Pointer_Vector<Complex> PV;

        PV* pv = new PV;

        *pv = *static_cast<PV*>(entry->object);

        @=$$@> = static_cast<void*>(pv);                    

     }  /* |else|  */

};


@q ** (2) complex_vector_primary --> LEFT_PARENTHESIS  @>
@q ** (2) complex_vector_expression  RIGHT_PARENTHESIS.@>

@*1 \�complex vector primary> $\longrightarrow$ \.{LEFT\_PARENTHESIS}
\�complex vector expression> \.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_primary: LEFT_PARENTHESIS@>@/ 
@=complex_vector_expression RIGHT_PARENTHESIS@>@/ 
{
   
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                << "*** Parser:  `complex_vector_primary "
                << "--> LEFT_PARENTHESIS complex_vector_expression "
                << "RIGHT_PARENTHESIS'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) complex_vector secondary.@>

@* \�complex vector secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> complex_vector_secondary@>
  
@q ** (2) complex_vector secondary --> complex_vector_primary.@>
@*1 \�complex vector secondary> $\longrightarrow$ 
\�complex vector primary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_secondary: complex_vector_primary@>@/ 
{

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser:  `complex_vector_secondary "
                 << "--> complex_vector_primary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;
  
  @=$$@> = @=$1@>;

};


@q * (1) complex_vector tertiary.  @>

@* \�complex vector tertiary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> complex_vector_tertiary@>

@q ***** (5) complex_vector tertiary --> complex_vector_secondary.@>
@ \�complex vector tertiary> $\longrightarrow$ 
\�complex vector secondary>.
\initials{LDF 2007.12.02.}

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_tertiary: complex_vector_secondary@>@/ 
{

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `complex_vector_tertiary "
                 << "--> complex_vector_secondary'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};


@q * (1) complex_vector expression.@>
@* \�complex vector expression>.

\LOG
\initials{LDF 2007.12.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> complex_vector_expression@>

@q ** (2) complex_vector expression --> complex_vector_tertiary.  @>
@*1 \�complex vector expression> $\longrightarrow$ 
\�complex vector tertiary>.

\LOG
\initials{LDF 2007.12.02.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=complex_vector_expression: complex_vector_tertiary@>@/ 
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
       cerr_strm << thread_name 
                 << "*** Parser: `complex_vector_expression "
                 << "--> complex_vector_tertiary'.";

       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
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


