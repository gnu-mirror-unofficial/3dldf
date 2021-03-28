@q pinptcmd.w @> 
@q Created by Laurence Finston Tue Sep 14 16:50:08 CEST 2004 @>
     

@q * (0) Input Command.@>
@** Input Command.

\LOG
\initials{LDF 2004.09.14.}
Created this file. 
\ENDLOG 

@q ** (2) command --> INPUT STRING. @>
@*1  \§command> \.{INPUT} \.{STRING}.

\LOG
\initials{LDF 2004.09.14.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 
@
@<Define rules@>=
  
@=command: INPUT STRING@>@/
{
 @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name 
                << "*** Parser: `input_command --> INPUT STRING'.";

      log_message(cerr_strm); 
      cerr_message(cerr_strm); 
      cerr_strm.str(""); 
    }
#endif /* |DEBUG_COMPILE|  */@;

string* s = static_cast<string*>(@=$2@>);

@q **** (4) Error handling:  |s == 0 || s->size() == 0|.@> 

@ Error handling:  |s == 0 || s->size() == 0|.
\initials{LDF 2004.09.14.}

@<Define rules@>=

  if (s == static_cast<string*>(0) || s->size() == 0)
    {

      cerr_strm << thread_name 
                << "ERROR! In `yyparse()', rule `input_command --> INPUT STRING':"
                << endl << "Invalid `STRING'. "
                << endl << "Not inputting file and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

    } /* |if (s == 0 || s->size() == 0)|  */

@q **** (4) |STRING| is valid.@> 

@ |STRING| is valid.
\initials{LDF 2004.09.14.}

@<Define rules@>=

  else /* |!(s == 0 || s->size() == 0)|  */
    {

#if DEBUG_COMPILE
      if (DEBUG)
        {
          cerr_strm << thread_name 
                    << "In `yyparse()', rule `input_command --> INPUT STRING':"
                    << endl << "*s == " << *s;

          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");

        }
#endif /* |DEBUG_COMPILE|  */@;

@q ***** (5) Call |Scan_Parse::input_command()|.@> 

@ Call |Scan_Parse::input_command()|.
\initials{LDF 2004.09.14.}

@<Define rules@>=

  status = input_command(scanner_node, s);

@q ****** (6) Error handling:  |Scan_Parse::input_command()| failed.@> 

@ Error handling:  |Scan_Parse::input_command()| failed.
\initials{LDF 2004.09.14.}

@<Define rules@>=

  if (status != 0)
    {

      cerr_strm << thread_name 
                 << "ERROR! In `yyparse()', rule `input_command --> INPUT STRING':"
                 << endl << "`Scan_Parse::input_command()' failed."
                 << endl << "Not inputting file \"" << *s << "\" and will try to continue.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");

    } /* |if (status != 0)|  */

@q ****** (6) |Scan_Parse::input_command()| succeeded.@> 

@ Error handling:  |Scan_Parse::input_command()| succeeded.
\initials{LDF 2004.09.14.}

@<Define rules@>=
#if DEBUG_COMPILE
  else if (DEBUG) /* |status == 0|  */
    {

      cerr_strm << thread_name 
                << "In `yyparse()', rule `input_command --> INPUT STRING':"
                << endl << "`Scan_Parse::input_command()' succeeded."
                 << endl << "Inputting file \"" << *s << "\".";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
       
    }   /* |else if (DEBUG)| (|status == 0|)  */
#endif /* |DEBUG_COMPILE|  */@; 

@q ***** (5) @> 
@
@<Define rules@>=

}  /* |else| (|!(s == 0 || s->size() == 0)|)  */
 
@q **** (4) Delete |s|, set |$$| to 0, and exit rule.@> 

@ Delete |s|, set |@=$$@>| to 0, and exit rule.
|s| is the |string*| represented by |STRING|, 
cast from |void*|.
\initials{LDF 2004.09.14.}

\LOG
\initials{LDF 2004.09.15.}
Now deleting |s|, if it's non-null.
\ENDLOG 

@<Define rules@>=

  if (s != static_cast<string*>(0))
    delete s;

  @=$$@> = static_cast<void*>(0); 

}
;

