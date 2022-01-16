@q pdatbase.w @> 
@q Created by Laurence Finston Wed 01 Sep 2021 04:36:51 PM CEST @>
     
@q * Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2021, 2022 The Free Software Foundation, Inc. @>

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

@q *** (3) Commands for the database.  @>
@*3 Commands for the database.
 

@q ** (2) command --> SAVE any_variable_list TO DATABASE with_prefix_option.@> 
@*1 \§command> $\longrightarrow$ \.{SAVE} \§any variable list> \.{TO} \.{DATABASE}
\§with prefix option>.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: SAVE any_variable_list TO DATABASE with_prefix_option@>@/
{

   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
       cerr_strm << "*** Parser: Rule `command --> SAVE any_variable_list TO DATABASE'."
                 << endl;  

       cerr_strm << "`scanner_node->database_variable_vector.size()' == "
                 << scanner_node->database_variable_vector.size()
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

   }  /* |if (DEBUG)|  */

#endif /* |DEBUG_COMPILE|  */@;

   string prefix;

   if (@=$5@> != 0)
      prefix = static_cast<Id_Map_Entry_Node>(@=$5@>)->name;

   status = save_to_database_func(static_cast<Scanner_Node>(parameter), 
                                  prefix,
                                  true);  /* |false|  */

   if (status != 0)
   {
       cerr_strm << "ERROR!  In `yyparse', Rule `command --> SAVE any_variable_list TO DATABASE'."
                 << endl  
                 << "`Scan_Parse::save_to_database_func' failed, returning " << status << "."
                 << endl 
                 << "Failed to save objects to database."
                 << endl 
                 << "Continuing."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
   }
   else
   {
#if DEBUG_COMPILE
      if (DEBUG)
       {
            cerr_strm << "*** Parser: Rule `command --> SAVE any_variable_list TO DATABASE':"
                      << endl  
                      << "`Scan_Parse::save_to_database_func' succeeded, returning 0."
                      << endl;
            log_message(cerr_strm);
            cerr_message(cerr_strm);
            cerr_strm.str("");

        }  /* |if (DEBUG)|  */
#endif /* |DEBUG_COMPILE|  */@;

   }

   @=$$@> = 0;

};

@q ** (2) any_variable_list @>
@ \§any variable list>.

\LOG
\initials{LDF 2021.03.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> any_variable_list@>

@q ** (2) any_variable_list> --> EMPTY @>
@ \§any variable list> $\longrightarrow$ /* Empty */

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=any_variable_list: /* Empty  */@>
{

   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `any_variable_list: /* Empty  */'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->database_variable_vector.clear();

};

@q ** (2) any_variable_list -->  @>
@ \§any variable list> $\longrightarrow$ \§any variable list> \§any variable>. 

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=any_variable_list: any_variable_list any_variable @>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `any_variable_list: any_variable_list any_variable'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

        scanner_node->database_variable_vector.push_back(static_cast<Id_Map_Entry_Node>(@=$2@>));

};

@q ** (2) any_variable_list --> any_variable_list COMMA any_variable. @>

@ \§any variable list> $\longrightarrow$ \§any variable list> \.{COMMA} \§any variable>.

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=any_variable_list: any_variable_list COMMA any_variable@>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `any_variable_list: any_variable_list COMMA any_variable'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->database_variable_vector.push_back(static_cast<Id_Map_Entry_Node>(@=$3@>));

};

@q ** (2) with_prefix_option @>
@ \§with prefix option>.

\LOG
\initials{LDF 2021.03.25.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> with_prefix_option@>

@q ** (2) with_prefix_option> --> EMPTY @>
@ \§with prefix option> $\longrightarrow$ /* Empty */

\LOG
\initials{LDF 2021.03.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=with_prefix_option: /* Empty  */@>
{

   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `with_prefix_option: /* Empty  */'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = 0;

};

@q ** (2) with_prefix_option -->  @>
@ \§with prefix option> $\longrightarrow$ \.{WITH} \.{PREFIX} \§any variable>. 

\LOG
\initials{LDF 2021.03.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=with_prefix_option: WITH PREFIX any_variable @>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `with_prefix_option: WITH PREFIX any_variable'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = @=$3@>;

};

@q ** (2) command --> RESTORE any_variable FROM DATABASE overwrite_option.@> 
@*1 \§command> $\longrightarrow$ \.{RESTORE} \§any variable> \.{FROM} \.{DATABASE}.
\§overwrite option>.
\initials{LDF 2021.03.24.}

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: RESTORE any_variable FROM DATABASE overwrite_option@>@/
{

   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
       cerr_strm << "*** Parser: Rule `command --> RESTORE any_variable FROM DATABASE overwrite_option'."
                 << endl;  
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

   }  /* |if (DEBUG)|  */

#endif /* |DEBUG_COMPILE|  */@;

   string prefix;

   if (@=$2@> != 0)
      prefix = static_cast<Id_Map_Entry_Node>(@=$2@>)->name;

#if DEBUG_COMPILE
  if (DEBUG)
  {
       cerr_strm << "*** Parser: Rule `command --> RESTORE any_variable FROM DATABASE overwrite_option':"
                 << endl
                 << "`prefix' == " << prefix << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

   }  /* |if (DEBUG)|  */

#endif /* |DEBUG_COMPILE|  */@;

   status = restore_from_database_func(static_cast<Scanner_Node>(parameter), 
                                       prefix,
                                       @=$5@>,
                                       true);  /* |false|  */
   if (status != 0)
   {
       cerr_strm << "ERROR!  In `yyparse', Rule `command --> "
                 << "RESTORE any_variable FROM DATABASE overwrite_option'."
                 << endl  
                 << "`Scan_Parse::restore_to_database_func' failed, returning " << status << "."
                 << endl 
                 << "Failed to restore objects from database."
                 << endl 
                 << "Continuing."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
   }
   else
   {
#if DEBUG_COMPILE
      if (DEBUG)
       {
            cerr_strm << "*** Parser: Rule `command --> RESTORE any_variable "
                      << "FROM DATABASE overwrite_option':"
                      << endl  
                      << "`Scan_Parse::restore_to_database_func' succeeded, returning 0."
                      << endl;
            log_message(cerr_strm);
            cerr_message(cerr_strm);
            cerr_strm.str("");

        }  /* |if (DEBUG)|  */
#endif /* |DEBUG_COMPILE|  */@;

   }

   @=$$@> = 0;

};

@q ** (2) overwrite_option @>
@ \§overwrite option>.

\LOG
\initials{LDF 2021.03.24.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> overwrite_option@>

@q ** (2) overwrite_option> --> EMPTY @>
@ \§overwrite option> $\longrightarrow$ /* Empty */

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=overwrite_option: /* Empty  */@>
{

   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `overwrite_option: /* Empty  */'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = QUERY;

};

@q ** (2) overwrite_option --> QUERY @>
@ \§overwrite option> $\longrightarrow$ \.{QUERY}.

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=overwrite_option: QUERY @>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `overwrite_option: QUERY'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = QUERY;

};

@q ** (2) overwrite_option --> OVERWRITE @>
@ \§overwrite option> $\longrightarrow$ \.{OVERWRITE}.

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=overwrite_option: OVERWRITE @>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `overwrite_option: OVERWRITE'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = OVERWRITE;

};

@q ** (2) overwrite_option --> NO_OVERWRITE @>
@ \§overwrite option> $\longrightarrow$ \.{NO\_OVERWRITE}.

\LOG
\initials{LDF 2021.03.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=overwrite_option: NO_OVERWRITE @>
{
   @<Common declarations for rules@>@; 
 
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `overwrite_option: NO_OVERWRITE'."
                << endl;  

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    @=$$@> = NO_OVERWRITE;

};

@q ** (2) command --> LOAD DATABASE.@> 
@*1 \§command> $\longrightarrow$ \.{LOAD} \.{DATABASE}.
\initials{LDF 2021.06.07.}

\LOG
\initials{LDF 2021.06.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: LOAD DATABASE@>@/
{
@q *** (3) @>

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
       cerr_strm << "*** Parser: Rule `command --> LOAD DATABASE'."
                 << endl;  
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

   }  /* |if (DEBUG)|  */
#endif /* |DEBUG_COMPILE|  */@;

   if (database_enabled)
   {
       cerr_strm << "In `yyparse', rule `command --> LOAD DATABASE':"
                 << endl
                 << "`database_enabled' is already `true'."
                 << endl 
                 << "Not calling `Scanner_Type::load_database'.  Continuing."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_DATABASE;
   }

@q *** (3) @>

   status = scanner_node->load_database();
  
@q *** (3) @>

@ This code should never be reached.
\initials{LDF 2021.06.09.}

@<Define rules@>=

   if (status == 2)
   {
       cerr_strm << "In `yyparse', rule `command --> LOAD DATABASE':"
                 << endl
                 << "`Scanner_Type::load_database' returned 2:"
                 << endl 
                 << "Database already loaded.  Not reloaded."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_DATABASE;

   } 

@q *** (3) @>
@
@<Define rules@>=

   else if (status != 0)
   {
       cerr_strm << "ERROR!  In `yyparse', rule `command --> LOAD DATABASE':"
                 << endl
                 << "`Scanner_Type::load_database' failed, returning " << status << "."
                 << endl 
                 << "Failed to load database.  Will try to continue."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_DATABASE;
   } 
#if DEBUG_COMPILE
   else if (DEBUG)
   { 
       cerr_strm << "In `yyparse', rule `command --> LOAD DATABASE':"
                 << endl
                 << "`Scanner_Type::load_database' succeeded, returning 0."
                 << endl
                 << "Loaded database successfully."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
   }  
#endif /* |DEBUG_COMPILE|  */@;

@q *** (3) @>

END_LOAD_DATABASE:

   @=$$@> = 0;

};

@q ** (2) command --> LOAD ASTRONOMY.@> 
@*1 \§command> $\longrightarrow$ \.{LOAD} \.{ASTRONOMY}.
\initials{LDF 2021.06.07.}

\LOG
\initials{LDF 2021.06.07.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: LOAD ASTRONOMY@>@/
{
@q *** (3) @>

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
       cerr_strm << "*** Parser: Rule `command --> LOAD ASTRONOMY'."
                 << endl;  
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

   }  /* |if (DEBUG)|  */
#endif /* |DEBUG_COMPILE|  */@;

   if (astronomy_enabled)
   {
       cerr_strm << "In `yyparse', rule `command --> LOAD ASTRONOMY':"
                 << endl
                 << "`astronomy_enabled' is already `true'."
                 << endl 
                 << "Not calling `Scanner_Type::get_astronomy'.  Continuing."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_ASTRONOMY;
   }


@q *** (3) @>

   if (!database_enabled)
   {
@q **** (4) @>

      status = scanner_node->load_database();

      if (status != 0)
      {
           cerr_strm << "ERROR!  In `yyparse', rule `command --> LOAD ASTRONOMY':"
                     << endl
                     << "`Scanner_Type::load_database' failed, returning " << status << "."
                     << endl 
                     << "Not calling `Scanner_Type::get_astronomy'."
                     << endl
                     << "Will try to continue."
                     << endl;
           log_message(cerr_strm);
           cerr_message(cerr_strm);
           cerr_strm.str("");

           goto END_LOAD_ASTRONOMY;

      }
@q **** (4) @>
@
@<Define rules@>=

      else if (!database_enabled)
      {
           cerr_strm << "ERROR!  In `yyparse', rule `command --> LOAD ASTRONOMY':"
                     << endl
                     << "`database_enabled' is `false' following successful call to `scanner_node::load_database'."
                     << endl 
                     << "This shouldn't be possible."
                     << endl 
                     << "Not calling `Scanner_Type::get_astronomy'."
                     << endl
                     << "Will try to continue."
                     << endl;
           log_message(cerr_strm);
           cerr_message(cerr_strm);
           cerr_strm.str("");

           goto END_LOAD_ASTRONOMY;

      }

@q **** (4) @>
@
@<Define rules@>=

#if DEBUG_COMPILE
      else if (DEBUG)
      { 
           cerr_strm << "In `yyparse', rule `command --> LOAD ASTRONOMY':"
                     << endl
                     << "`Scanner_Type::load_database' succeeded, returning 0."
                     << endl 
                     << "Will call `Scanner_Type::get_astronomy'."
                     << endl;
           log_message(cerr_strm);
           cerr_message(cerr_strm);
           cerr_strm.str("");
      }   
#endif /* |DEBUG_COMPILE|  */@; 

@q **** (4) @>

   }  /* |if (!database_enabled)|  */

@q *** (3) @>
@
@<Define rules@>=

   status = scanner_node->get_astronomy();

@q *** (3) @>

@ This code should never be reached.
\initials{LDF 2021.06.09.}

@<Define rules@>=

   if (status == 2)
   {
       cerr_strm << "In `yyparse', rule `command --> LOAD ASTRONOMY':"
                 << endl
                 << "`Scanner_Type::get_astronomy' returned 2:"
                 << endl 
                 << "Astronomy already loaded.  Not reloaded."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_ASTRONOMY;

   } 

@q *** (3) @>
@
@<Define rules@>=

   else if (status != 0)
   {
       cerr_strm << "ERROR!  In `yyparse', rule `command --> LOAD ASTRONOMY':"
                 << endl
                 << "`Scanner_Type::get_astronomy' failed, returning " << status << "."
                 << endl 
                 << "Failed to load astronomy.  Will try to continue."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

       goto END_LOAD_ASTRONOMY;
   } 
#if DEBUG_COMPILE
   else if (DEBUG)
   { 
       cerr_strm << "In `yyparse', rule `command --> LOAD ASTRONOMY':"
                 << endl
                 << "`Scanner_Type::get_astronomy' succeeded, returning 0."
                 << endl
                 << "Loaded astronomy successfully."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
   }  
#endif /* |DEBUG_COMPILE|  */@;

@q *** (3) @>

END_LOAD_ASTRONOMY:

   @=$$@> = 0;

};

@q ** (2) @>

@q * (0)@>

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2004.02.12}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 70))    @>

@q Local Variables: @>
@q mode:CWEB  @>
@q eval:(outline-minor-mode t)  @>
@q abbrev-file-name:"~/.abbrev_defs" @>
@q eval:(read-abbrev-file)  @>
@q fill-column:70 @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End: @>
