@q pcommand.w @> 
@q Created by Laurence Finston Wed Jun  2 19:02:39 CEST 2004  @>
     
@q * Copyright and License.@>

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

@q * (0) Commands.  @>
@** Commands.  

\LOG
\initials{LDF 2004.06.02.}  
Created this file.
\ENDLOG 

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2004.09.22.}
Fix the outline headings and the levels of the starred sections.
\ENDTODO 

@q * (1) command.  @>
@* \�command>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> command@>

@q ** (2) command --> label_command.  @>
@*1 \�command> $\longrightarrow$ \�label command>.

\LOG
\initials{LDF 2004.06.30.}  Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=command: label_command@>
{

  @=$$@> = @=$1@>;

};

@q ** (2) command --> message_command.  @>
@*1 \�command> $\longrightarrow$ \�message command>.

\LOG
\initials{LDF 2004.09.22.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=command: message_command@>
{

  @=$$@> = @=$1@>;

};

@q ** (2) command --> CLIP_TO path_expression.@> 
@*2 \�command> $\longrightarrow$ \.{CLIP\_TO} \�path expression>.
\initials{LDF 2005.08.16.}

\LOG
\initials{LDF 2005.08.16.}

\initials{LDF 2005.10.24.}
Changed |path_like_expression| to |path_expression|.
Removed debugging code.
\ENDLOG

@<Define rules@>=
@=command: CLIP_TO path_expression@>@/
{

   clip_to_func(@=$2@>, parameter);

   @=$$@> = static_cast<void*>(0);

};




@q ** (2) command --> group_command.  @>
@*1 \�command> $\longrightarrow$ \�group command>.

\LOG
\initials{LDF 2004.09.12.}  
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=command: group_command@>
{

  @=$$@> = @=$1@>;

};

@q * (1) message_command.@> 
@* \�message command>.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2004.09.22.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> message_command@>

@q ** (2) message_or_errmessage.@> 
@*1 \�message or errmessage>.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2004.09.22.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> message_or_errmessage@>

@q ** (2) message_or_errmessage --> MESSAGE.@> 
@*1 \�message or errmessage> $\longrightarrow$ \.{MESSAGE}.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2004.09.22.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=message_or_errmessage: MESSAGE@>@/
{

  @=$$@> = MESSAGE;

};

@q ** (2) message_or_errmessage --> ERRMESSAGE.@> 
@*1 \�message or errmessage> $\longrightarrow$ \.{ERRMESSAGE}.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2004.09.22.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=message_or_errmessage: ERRMESSAGE@>@/
{

  @=$$@> = ERRMESSAGE;

};

@q * (1) message_command --> message_or_errmessage string_expression.@>

@* \�message command> $\longrightarrow$ \�message or errmessage> \.{string expression}.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2005.11.03.}
Changed |STRING| to |string_expression|.  
Removed code.  Now calling |Scan_Parse::message_command_func| instead.
\ENDLOG 

@<Define rules@>=
@=message_command: message_or_errmessage string_expression@>@/
{

    Scan_Parse::message_command_func(@=$1@>, @=$2@>, parameter);
    @=$$@> = static_cast<void*>(0);
};

@q ** (2) command --> PAUSE.@> 
@*1 \�command> $\longrightarrow$ \.{PAUSE}.
\initials{LDF 2004.09.22.}

\LOG
\initials{LDF 2004.09.22.}
Added this rule.

\initials{LDF 2005.11.09.}
Removed debugging code.  Added code for pausing.  
I must have removed it at some time in the past.
\ENDLOG

@<Define rules@>=
@=command: PAUSE@>@/
{

    cerr_mutex.lock(); 
    cerr << "In parser, rule `command: PAUSE':  Type <RETURN> to continue: ";  /* Don't delete this!  */
    getchar();  /* Don't delete this!  */
    cerr_mutex.unlock();  

    @=$$@> = static_cast<void*>(0);
};

@q ** (2) command --> SCANTOKENS string_expression.@> 
@*1 \�command> $\longrightarrow$ \.{SCANTOKENS}.
\�string expression>.
\initials{LDF 2004.12.01.}

\LOG
\initials{LDF 2004.12.01.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=command: SCANTOKENS string_expression@>@/
{

   string* str_ptr = static_cast<string*>(@=$2@>); 

   if (str_ptr == static_cast<string*>(0))
     {
     
         @=$$@> = static_cast<void*>(0);

    }  /* |if (str_ptr == 0)|  */

   else /* |str_ptr != 0|  */
      {

          stringstream* str_strm_ptr;

          Input_Struct* curr_input_struct;

          str_strm_ptr = new stringstream;
          curr_input_struct = new Input_Struct;

          *str_strm_ptr << *str_ptr << ";";

          curr_input_struct->up = static_cast<Scanner_Node>(parameter)->in;
          curr_input_struct->stream_ptr 
            = static_cast<istream*>(str_strm_ptr);

          curr_input_struct->type = Io_Struct::SCANTOKENS_STRING_TYPE;
           
          static_cast<Scanner_Node>(parameter)->in = curr_input_struct;

          @=$$@> = static_cast<void*>(0);

      }   /* |else| (|str_ptr != 0|)  */
};

@q ** (2) verbatim_command. @>

@ \�verbatim command>.
\initials{LDF 2022.04.18.}

\LOG
\initials{LDF 2022.04.18.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> verbatim_command@>

@q ** (2) verbatim_command --> VERBATIM_METAPOST.@> 
@*1 \�verbatim command> $\longrightarrow$ \.{VERBATIM\_METAPOST}.
\initials{LDF 2022.04.18.}

\LOG
\initials{LDF 2022.04.18.}
Added this rule.
\ENDLOG

@q *** (3).@> 

@<Define rules@>=
@=verbatim_command: VERBATIM_METAPOST@>@/
{
   @=$$@> = Scan_Parse::VERBATIM_METAPOST_COMMAND;
 
};

@q ** (2) verbatim_command --> VERBATIM_TEX.@> 
@*1 \�verbatim command> $\longrightarrow$ \.{VERBATIM\_TEX}.
\initials{LDF 2022.04.18.}

\LOG
\initials{LDF 2022.04.18.}
Added this rule.
\ENDLOG

@q *** (3).@> 

@<Define rules@>=
@=verbatim_command: VERBATIM_TEX@>@/
{
   @=$$@> = Scan_Parse::VERBATIM_TEX_COMMAND;
 
};

@q ** (2) verbatim_command --> VERBATIM_METAFONT.@> 
@*1 \�verbatim command> $\longrightarrow$ \.{VERBATIM\_METAFONT}.
\initials{LDF 2022.04.18.}

\LOG
\initials{LDF 2022.04.18.}
Added this rule.
\ENDLOG

@q *** (3).@> 

@<Define rules@>=
@=verbatim_command: VERBATIM_METAFONT@>@/
{
   @=$$@> = Scan_Parse::VERBATIM_METAFONT_COMMAND;
 
};

@q ** (2) command --> verbatim_command string_expression.@> 
@*1 \�command> $\longrightarrow$ \�verbatim command> \�string expression>.
\initials{LDF 2022.04.18.}

\LOG
\initials{LDF 2022.04.18.}
Added this rule.
\ENDLOG

@q *** (3).@> 

@<Define rules@>=
@=command: verbatim_command string_expression@>@/
{

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: verbatim_command string_expression."
                << endl 
                << "`verbatim_command' == $1 == " << @=$1@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   string* s = static_cast<string*>(@=$2@>); 

@q **** (4) Error handling:  |s == 0|.@>   

@ Error handling:  |s == 0|.
\initials{LDF 2004.12.13.}

@<Define rules@>=

   if (s == static_cast<string*>(0))
   {
       @=$$@> = static_cast<void*>(0);

   } /* |s == 0|  */

@q **** (4) |s != 0|.@>   

@ |s != 0|.
\initials{LDF 2004.12.13.}

@<Define rules@>=

   else /* |s != 0|  */
   {
         int status = verbatim_func(static_cast<Scanner_Node>(parameter), s, @=$1@>);

@q ***** (5) Error handling:  |verbatim_func| failed.@>   

@ Error handling:  |verbatim_func| failed.
\initials{LDF 2004.12.13.}

@<Define rules@>=
 
         if (status != 0)
         {
                cerr_strm << thread_name 
                          << "ERROR!  In `yyparse()', rule "
                          << "`command: verbatim_command string_expression':"
                          << endl << "`verbatim_func' failed.  "
                          << "Will try to continue.";

                log_message(cerr_strm); 
                cerr_message(cerr_strm, error_stop_value); 
                cerr_strm.str("");

         } /* |if (status != 0)|  */

@q ***** (5) @>   

         delete s;

         @=$$@> = static_cast<void*>(0);

@q ***** (5).@> 

   }   /* |else| (|s != 0|)  */  

};

@q **** (4) command --> PLOT STARS sphere_expression stars_option_list @>

@*3 \�command> $\longrightarrow$ \.{PLOT} \.{STARS} \�sphere expression> \�stars option list>.
\initials{LDF 2021.06.26.}

\LOG
\initials{LDF 2021.06.26.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: PLOT STARS sphere_expression stars_option_list@>@/
{
@q ******* (7) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> PLOT STARS sphere_expression stars_option_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    status = plot_stars_func(static_cast<Sphere*>(@=$3@>), scanner_node);

    if (status != 0)
    {
      cerr_strm << "ERROR!  In Parser: `command --> PLOT STARS sphere_expression stars_option_list':"
                << "`Scan_Parse::plot_stars_func' failed, returning " << status << "."
                << endl
                << "Failed to plot `stars'.  Will try to continue."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

    }
#if DEBUG_COMPILE
    else if (DEBUG)
    { 
      cerr_strm << "*** Parser: `command --> PLOT STARS sphere_expression stars_option_list':"
                << "`Scan_Parse::plot_stars_func' succeeded, returning 0."
                << endl
                << "Plotted `stars' successfully."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

    }  
#endif /* |DEBUG_COMPILE|  */@; 

    @=$$@> = static_cast<void*>(0);

@q ******* (7) @>

};

@q **** (4) command --> WRITE newwrite_variable string_expression no_newline_optional. @>

@*3 \�command> $\longrightarrow$ \.{WRITE} \�newwrite variable> \�string_expression> \�no newline optional>.
\initials{LDF 2021.07.05.}

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: WRITE newwrite_variable string_expression no_newline_optional@>@/
{
@q ******* (7) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> WRITE newwrite_variable string_expression no_newline_optional'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    Newwrite *nw = 0;    

    entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

    string *s = static_cast<string*>(@=$3@>);

    cerr << "*s == " << *s << endl;

    if (entry == 0)
      cerr << "entry is NULL." << endl;
    else if (entry->object == 0)
      cerr << "entry->object is NULL." << endl;

    if (entry != 0 && entry->object != 0)
    {
        nw = static_cast<Newwrite*>(entry->object); 
        
        if (nw->out_strm.is_open())
        {
            nw->out_strm << *s;

            if (@=$4@> == 0)
              nw->out_strm << endl;
        }
    }

    delete s;
    s = 0;

    @=$$@> = static_cast<void*>(0);

@q ******* (7) @>

};

@q **** (4) command --> WRITE string_expression TO newwrite_variable no_newline_optional. @>

@*3 \�command> $\longrightarrow$ \.{WRITE} \�string_expression> \.{TO} \�newwrite variable> \�no newline optional>.
\initials{LDF 2021.07.05.}

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: WRITE string_expression TO newwrite_variable no_newline_optional@>@/
{
@q ******* (7) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> WRITE string_expression TO newwrite_variable no_newline_optional'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    Newwrite *nw = 0;    

    entry = static_cast<Id_Map_Entry_Node>(@=$4@>); 

    string *s = static_cast<string*>(@=$2@>);

#if 0
    cerr << "*s == " << *s << endl;
#endif 

    if (entry == 0)
      cerr << "entry is NULL." << endl;
    else if (entry->object == 0)
      cerr << "entry->object is NULL." << endl;

    if (entry != 0 && entry->object != 0)
    {
        nw = static_cast<Newwrite*>(entry->object); 
        
        if (nw->out_strm.is_open())
        {
            nw->out_strm << *s;

            if (@=$5@> == 0)
              nw->out_strm << endl;
        }
    }

    delete s;
    s = 0;

    @=$$@> = static_cast<void*>(0);

@q ******* (7) @>

};

@q ***** (5) no_newline_optional.  @>
@* \�no newline optional>.
\initials{LDF 2021.07.05.}

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> no_newline_optional@>

@q ***** (6) no_newline_optional --> EMPTY.  @>
@*5 \�no newline optional> $\longrightarrow$ \.{EMPTY}.

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=no_newline_optional: /* Empty  */@>
{

  @=$$@> = 0;

};

@q ***** (6) no_newline_optional --> NO_NEWLINE.  @>
@*5 \�no newline optional> $\longrightarrow$ \.{NO_NEWLINE}.

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
  
@=no_newline_optional: NO_NEWLINE@>
{
  @=$$@> = 1;
};

@q ***** (5) @>

@q **** (4) command --> CLOSE newwrite_variable. @>

@*3 \�command> $\longrightarrow$ \.{CLOSE} \�newwrite_variable>.
\initials{LDF 2021.07.06.}

\LOG
\initials{LDF 2021.07.06.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: CLOSE newwrite_variable@>@/
{
@q ******* (7) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> CLOSE newwrite_variable'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    Newwrite *nw = 0;    

    entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

    if (entry == 0)
    {
        cerr << "entry is NULL." << endl;
    }

    else if (entry->object == 0)
    {
       cerr << "entry->object is NULL." << endl;
    }

    if (entry != 0 && entry->object != 0)
    {
        nw = static_cast<Newwrite*>(entry->object); 
        
        if (nw->out_strm.is_open())
        {
           nw->out_strm.close();
        }
        else 
        {
           cerr_strm << "WARNING!  In parser, `command --> CLOSE newwrite_variable':"
                     << endl
                     << "`nw->out_strm' isn't open.  Not closing.  Continuing."
                     << endl;

           log_message(cerr_strm);
           cerr_message(cerr_strm);
           cerr_strm.str("");

        }
    }

    @=$$@> = static_cast<void*>(0);

@q ******* (7) @>

};

@q **** (4) command --> SET_NAME color_variable TO string_expression.@>

@*4 \�command> $\longrightarrow$ \.{SET\_NAME} \�color variable primary> \.{TO} \�string expression>.
\initials{LDF 2021.11.12.}

The \.{TO} token is needed in order for the \�string expression> to be recognized by the 
scanner/parser pair.  I don't know why this is so.
\initials{LDF 2021.11.13.}

\LOG
\initials{LDF 2021.11.12.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=command: SET_NAME color_variable TO string_expression@>@/
{ 
   @<Common declarations for rules@>@; 

   string *s = static_cast<string*>(@=$4@>);

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG) 
     {
         cerr_strm << thread_name << "*** Parser:  `command --> SET_NAME color_variable TO "
                   << "string_expression'." << endl;

         log_message(cerr_strm);
         cerr_message(cerr_strm);
         cerr_strm.str("");

         cerr << "*s == " << *s << endl;

     }
#endif /* |DEBUG_COMPILE|  */

@q ******* (7) @> 

     entry = static_cast<Id_Map_Entry_Node>(@=$2@>);  

     Color *c = static_cast<Color*>(entry->object);

     if (c != 0)
     {
        c->set_name(*s);
     }

     delete s;
     s = 0;   

     @=$$@> = 0;

};

@q **** (4) command --> UNSET_NAME color_variable.@>

@*4 \�command> $\longrightarrow$ \.{UNSET\_NAME} \�color variable primary>.
\initials{LDF 2021.11.13.}

\LOG
\initials{LDF 2021.11.13.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=command: UNSET_NAME color_variable@>@/
{ 
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG) 
     {
         cerr_strm << thread_name << "*** Parser:  `command --> UNSET_NAME color_variable'."
                   << endl;

         log_message(cerr_strm);
         cerr_message(cerr_strm);
         cerr_strm.str("");
     }
#endif /* |DEBUG_COMPILE|  */

@q ******* (7) @> 

     entry = static_cast<Id_Map_Entry_Node>(@=$2@>);  

     Color *c = static_cast<Color*>(entry->object);

     if (c != 0)
     {
        c->set_name("");
     }

     @=$$@> = 0;

};

@q **** (4) @>

@q *** (3) @>

@q ** (2) numeric_list_optional.  @>

@ \�numeric list optional>.
\initials{LDF 2022.04.28.}

\LOG
\initials{LDF 2022.04.28.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> numeric_list_optional@>

@q ** (2) numeric_list_optional: /* Empty  */@>

@ \�numeric list optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2022.04.28.}

\LOG
\initials{LDF 2022.04.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=numeric_list_optional: /* Empty  */@>
{

  @=$$@> = static_cast<void*>(0);

};

@q ** (2) numeric_list_optional: numeric_list @>

@ \�numeric list optional> $\longrightarrow$ \�numeric list>.
\initials{LDF 2022.04.28.}

\LOG
\initials{LDF 2022.04.28.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=numeric_list_optional: numeric_list@>
{
  @=$$@> = static_cast<void*>(@=$1@>);
};


@q ** (2) flatten_command @>

@ \�flatten command>.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> flatten_command@>

@q ** (2) flatten_command: FLATTEN_X  @>

@ \�flatten command> $\longrightarrow$ \.{FLATTEN\_X}.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=flatten_command: FLATTEN_X@>
{
   @=$$@> = 0;
};

@q ** (2) flatten_command: FLATTEN_Y  @>

@ \�flatten command> $\longrightarrow$ \.{FLATTEN\_Y}.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG

@q ** (2) flatten_command: FLATTEN_Y@>

@ \�flatten command> $\longrightarrow$ \.{FLATTEN\_Y}.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=flatten_command: FLATTEN_Y@>
{
   @=$$@> = 1;
};

@q ** (2) flatten_command: FLATTEN_Z  @>
@ \�flatten command> $\longrightarrow$ \.{FLATTEN\_Z}.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=flatten_command: FLATTEN_Z@>
{
   @=$$@> = 2;
};

@q ** (2) command: flatten_command path_variable @>

@ command> $\longrightarrow$ \.{RESET\_ARC} \�numeric list optional>.
\�command> \�flatten command> \�path variable> \�numeric optional>.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command path_variable numeric_optional@>
{
@q *** (3) @>

     @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command path_variable numeric_optional."
                << endl 
                << "`flatten_command'  == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q *** (3) @>

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Path *p = static_cast<Path*>(entry->object);
       p->flatten(@=$1@>, r);
#if 0 
       p->show("*p:");
#endif 
   }

   @=$$@> = static_cast<void*>(0);

@q *** (3) @>

};

@q ** (2) command: flatten_command picture_variable @>

@ command> $\longrightarrow$ \.{RESET\_ARC} \�numeric list optional>.
\�command> \�flatten command> \�picture variable> \�numeric optional>.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command picture_variable numeric_optional@>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command picture_variable."
                << endl 
                << "`flatten_command' == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Picture *p = static_cast<Picture*>(entry->object);
       p->flatten(@=$1@>, r);
   }

   @=$$@> = static_cast<void*>(0);
};

@q ** (2) command: flatten_command point_variable numeric_optional @>

@ command> $\longrightarrow$ \�command> \�flatten command> \�point variable> 
\�numeric optional>.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command point_variable numeric_optional@>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command point_variable numeric_optional."
                << endl 
                << "`flatten_command'  == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Point *p = static_cast<Point*>(entry->object);
       p->flatten(@=$1@>, r);
#if 0 
       p->show("*p:");
#endif 
   }

   @=$$@> = static_cast<void*>(0);
};

@q ** (2) command: flatten_command point_vector_variable numeric_optional @>

@ command> $\longrightarrow$ \�command> \�flatten command> \�point vector variable> 
\�numeric optional>.
\initials{LDF 2022.05.03.}

\LOG
\initials{LDF 2022.05.03.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command point_vector_variable numeric_optional@>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command point_vector_variable "
                << "numeric_optional."
                << endl 
                << "`flatten_command'  == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Pointer_Vector<Point> *pv = static_cast<Pointer_Vector<Point>*>(entry->object);
  
       for (vector<Point*>::iterator iter = pv->v.begin();
            iter != pv->v.end();
            ++iter)
       {
          (*iter)->flatten(@=$1@>, r);
       }
   }

   @=$$@> = static_cast<void*>(0);
};

@q ** (2) command: flatten_command path_vector_variable numeric_optional @>

@ command> $\longrightarrow$ \�command> \�flatten command> \�path vector variable> 
\�numeric optional>.
\initials{LDF 2022.05.03.}

\LOG
\initials{LDF 2022.05.03.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command path_vector_variable numeric_optional@>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command path_vector_variable "
                << "numeric_optional."
                << endl 
                << "`flatten_command'  == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Pointer_Vector<Path> *pv = static_cast<Pointer_Vector<Path>*>(entry->object);
  
       for (vector<Path*>::iterator iter = pv->v.begin();
            iter != pv->v.end();
            ++iter)
       {
          (*iter)->flatten(@=$1@>, r);
       }
   }

   @=$$@> = static_cast<void*>(0);
};

@q ** (2) command: flatten_command picture_vector_variable numeric_optional @>

@ command> $\longrightarrow$ \�command> \�flatten command> \�picture vector variable> 
\�numeric optional>.
\initials{LDF 2022.05.03.}

\LOG
\initials{LDF 2022.05.03.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: flatten_command picture_vector_variable numeric_optional@>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: flatten_command picture_vector_variable "
                << "numeric_optional'."
                << endl 
                << "`flatten_command'  == $1 == " << @=$1@> << endl
                << "`numeric_optional' == $3 == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   real r = @=$3@>;

   if (entry && entry->object)
   {
       Pointer_Vector<Picture> *pv 
          = static_cast<Pointer_Vector<Picture>*>(entry->object);
  
       for (vector<Picture*>::iterator iter = pv->v.begin();
            iter != pv->v.end();
            ++iter)
       {
          (*iter)->flatten(@=$1@>, r);
       }
   }

   @=$$@> = static_cast<void*>(0);
};

@q ** (2) numeric_optional @>

@ \�numeric optional>.
\initials{LDF 2022.05.02.}

\LOG
\initials{LDF 2022.05.02.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <real_value> numeric_optional@>

@q ** (2) numeric_optional: /* Empty  */@>
@
@<Define rules@>= 

@=numeric_optional: /* Empty  */@>
{
   @=$$@> = 0.0;
};

@q ** (2) numeric_optional: COMMA numeric_expression @>
@
@<Define rules@>= 

@=numeric_optional: COMMA numeric_expression @>
{
   @=$$@> = @=$2@>;
};

@q *** (3) command: REVERSE path_variable  @>
@*2 \�command> $\longrightarrow$ \.{REVERSE} \�path variable>.

\LOG
\initials{LDF 2004.05.13.}  
Added this rule.

\initials{LDF 2004.11.26.}
Changed |Path::reverse|, so that cyclical |Paths| can be 
reversed. 

\initials{LDF 2005.11.09.}
Removed debugging code.

\initials{LDF 2022.05.04.}
Changed this rule from \�path primary> $\longrightarrow$ \.{REVERSE}
\�path primary> to \�command> $\longrightarrow$ \.{REVERSE} 
\�path variable>.
\ENDLOG 

@<Define rules@>=
@=command: REVERSE path_variable@>@/
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command:  REVERSE path_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   if (entry && entry->object)
   {
     Path* p = static_cast<Path*>(entry->object); 
     p->reverse(1, static_cast<Scanner_Node>(parameter));
   }

  @=$$@> = static_cast<void*>(0);  

};


@q ** (2) command: CALL_METAPOST string_expression LEFT_PARENTHESIS path_vector_variable_optional @>
@q point_vector_variable_optional numeric_vector_variable_optional RIGHT_PARENTHESIS              @>
@q call_metapost_option_list                                                                      @>


@ \�command> $\longrightarrow$ \.{CALL\_METAPOST} \�string expression>  $\ldots$
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: CALL_METAPOST string_expression LEFT_PARENTHESIS path_vector_variable_optional @>
@=point_vector_variable_optional numeric_vector_variable_optional RIGHT_PARENTHESIS @>
@=call_metapost_option_list @>
{
@q *** (3) @>

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `command: CALL_METAPOST path_vector_variable string_expression "
                << "call_metapost_option_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q *** (3) @>

   string *str = static_cast<string*>(@=$2@>);
  
   Id_Map_Entry_Node path_entry = 0;
   Id_Map_Entry_Node point_entry = 0;
   Id_Map_Entry_Node real_entry = 0;


   if (@=$4@> != 0)
      path_entry = static_cast<Id_Map_Entry_Node>(@=$4@>);

   if (!path_entry)
      cerr << "path_entry is NULL." << endl;
   else
   {
      cerr << "path_entry is non-NULL." << endl;
   }

   if (@=$5@> != 0)
      point_entry = static_cast<Id_Map_Entry_Node>(@=$4@>);

   if (!point_entry)
      cerr << "point_entry is NULL." << endl;
   else
   {
      cerr << "point_entry is non-NULL." << endl;
   }

   if (@=$6@> != 0)
      real_entry = static_cast<Id_Map_Entry_Node>(@=$4@>);

   if (!real_entry)
      cerr << "real_entry is NULL." << endl;
   else
   {
      cerr << "real_entry is non-NULL." << endl;
   }

@q *** (3) @>
@
@<Define rules@>= 

   bool save               = @=$8@> & 1U;
   bool clear              = @=$8@> & 2U;
   bool suppress_mp_stdout = @=$8@> & 4U;
   bool do_transform       = @=$8@> & 8U;

   status = call_metapost(*str, 
                          path_entry, 
                          point_entry, 
                          real_entry, 
                          save, 
                          clear, 
                          suppress_mp_stdout, 
                          do_transform, 
                          scanner_node);

   if (status != 0)
   {
     cerr_strm << "ERROR!  In parser, `command: CALL_METAPOST string_expression "
                << "path_vector_variable call_metapost_option_list':"
                << endl 
                << "`call_metapost' failed, returning " << status << "."
                << endl
                << "Failed to execute MetaPost in child process."
                << endl
                << "Continuing.";

     log_message(cerr_strm);
     cerr_message(cerr_strm, true);
     cerr_strm.str("");
 

   }  /* |if (status != 0)| */

@q *** (3) @>

#if DEBUG_COMPILE
   else if (DEBUG)
   { 
     cerr_strm << "In parser, `command: CALL_METAPOST string_expression "
                << "path_vector_variable call_metapost_option_list':"
                << endl 
                << "`call_metapost' succeeded, returning 0.";

     log_message(cerr_strm);
     cerr_message(cerr_strm);
     cerr_strm.str("");

     if (scanner_node->metapost_output_struct)
        cerr << "scanner_node->metapost_output_struct->path_vector.size() == " 
             << scanner_node->metapost_output_struct->path_vector.size() << endl;
     else 
        cerr << "scanner_node->metapost_output_struct is NULL." << endl;


   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q *** (3) @>

   @=$$@> = 0;
};

@q ** (2) call_metapost_option_list @>

@ \�call metapost option list>.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <uint_value> call_metapost_option_list@>

@q *** (3) call_metapost_option_list: /* Empty  */ @>

@ \�call metapost option list> $\longrightarrow$ \.{Empty}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: /* Empty  */ @>
{

   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: /* Empty */'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0U;

};

@q ** (2) @>
@
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> path_vector_variable_optional@>

@q ** (2) @>
@
@<Define rules@>= 
@=path_vector_variable_optional: /* Empty  */@>
{
  @=$$@> = 0;
};

@q ** (2) @>
@
@<Define rules@>= 
@=path_vector_variable_optional: path_vector_variable@>
{
  @=$$@> = @=$1@>;
};

@q ** (2) @>
@
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> point_vector_variable_optional@>

@q ** (2) @>
@
@<Define rules@>= 
@=point_vector_variable_optional: /* Empty  */@>
{
  @=$$@> = 0;
};

@q ** (2) @>
@
@<Define rules@>= 
@=point_vector_variable_optional: COMMA point_vector_variable@>
{
  @=$$@> = @=$2@>;
};

@q ** (2) @>
@
@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> numeric_vector_variable_optional@>

@q ** (2) @>
@
@<Define rules@>= 
@=numeric_vector_variable_optional: /* Empty  */@>
{
  @=$$@> = 0;
};

@q ** (2) @>
@
@<Define rules@>= 
@=numeric_vector_variable_optional: COMMA numeric_vector_variable@>
{
  @=$$@> = @=$2@>;
};


@q *** (3) call_metapost_option_list: call_metapost_option_list SAVE @>

@ \�call metapost option list> $\longrightarrow$ \�call metapost option list> \.{SAVE}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list SAVE @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list SAVE'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> |= 1U; 

};

@q *** (3) call_metapost_option_list: NO_SAVE @>

@ \�call metapost option list> $\longrightarrow$ \.{NO\_SAVE}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list NO_SAVE @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list NO_SAVE'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> &= ~1U; 

};

@q *** (3) call_metapost_option_list: call_metapost_option_list CLEAR @>

@ \�call metapost option list> $\longrightarrow$ \�call metapost option list> \.{CLEAR}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list CLEAR @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list CLEAR'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 


      @=$$@> = @=$1@> |= 2U;

};

@q *** (3) call_metapost_option_list: NO_CLEAR @>

@ \�call metapost option list> $\longrightarrow$ \.{NO\_CLEAR}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list NO_CLEAR @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list NO_CLEAR'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> &= ~2U;

};

@q *** (3) call_metapost_option_list: SUPPRESS @>

@ \�call metapost option list> $\longrightarrow$ \.{SUPPRESS}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list SUPPRESS @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list SUPPRESS'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> |= 4U;

};

@q *** (3) call_metapost_option_list: NO_SUPPRESS @>

@ \�call metapost option list> $\longrightarrow$ \.{NO\_SUPPRESS}.
\initials{LDF 2022.05.06.}

\LOG
\initials{LDF 2022.05.06.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list NO_SUPPRESS @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list NO_SUPPRESS'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> &= ~4U;

};


@q *** (3) call_metapost_option_list: WITH_TRANSFORM @>

@ \�call metapost option list> $\longrightarrow$ \.{WITH\_TRANSFORM}.
\initials{LDF 2022.05.08.}

\LOG
\initials{LDF 2022.05.08.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list WITH_TRANSFORM @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list WITH_TRANSFORM'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> |= 8U;

};

@q *** (3) call_metapost_option_list: WITH_NO_TRANSFORM @>

@ \�call metapost option list> $\longrightarrow$ \.{WITH\_NO\_TRANSFORM}.
\initials{LDF 2022.05.08.}

\LOG
\initials{LDF 2022.05.08.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=call_metapost_option_list: call_metapost_option_list WITH_NO_TRANSFORM @>
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = true; /* |false| */ 
   if (DEBUG)
   { 
      cerr_strm << "*** Parser: `call_metapost_option_list: call_metapost_option_list WITH_NO_TRANSFORM'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  
#endif /* |DEBUG_COMPILE|  */@; 

   @=$$@> = @=$1@> &= ~8U;

};



@q ** (2) command: RESET_ARC numeric_list_optional @>

@ \�command> $\longrightarrow$ \.{RESET\_ARC} \�numeric list optional>.
\initials{LDF 2022.04.29.}

!! PLEASE NOTE:  This is a dummy rule.  It's needed so that Bison won't issue 
a warning about  a ``useless'' nonterminal and useless rules.  I want to 
keep \�numeric list optional> and its associated rules because I think I will
use them in the future.
\initials{LDF 2022.04.29.}

\LOG
\initials{LDF 2022.04.29.}
Added this rule.
\ENDLOG 

@<Define rules@>= 
@=command: RESET_ARC numeric_list_optional@>
{
  @=$$@> = static_cast<void*>(0);
};

@q * (1) @>

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2004.02.12}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 80))    @>

@q Local Variables: @>
@q mode:CWEB  @>
@q eval:(outline-minor-mode t)  @>
@q abbrev-file-name:"~/.abbrev_defs" @>
@q eval:(read-abbrev-file)  @>
@q fill-column:70 @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End: @>
