@q pgrpcmnd.w @> 
@q Created by Laurence Finston Sun Sep 12 17:33:25 CEST 2004 @>
     

@q * (0) Group commands.  @>
@** Group commands.  

\LOG
\initials{LDF 2004.09.12.}  
Created this file.
\ENDLOG 

@q * (1) group_command.@>
@*  {\bf group\_command}.@>

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> group_command@>

@q ** (2) group_command --> begin_group_command.@>
@*1 \§group command> $\longrightarrow$ \§begin-group command>.

@
@<Define rules@>=
@=group_command: begin_group_command@>@/
{
#if DEBUG_COMPILE 
@<Common declarations for rules@>@;
#endif
  
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `group_command --> "
                << "begin_group_command'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ** (2) group_command --> save_command.@>
@*1 \§group command> $\longrightarrow$ \§end-group command>.

\LOG
\initials{LDF 2004.09.13.}
Added this rule.  I'm not sure whether I'll need it, though. 
\ENDLOG 

@
@<Define rules@>=
@=group_command: save_command@>@/
{
#if DEBUG_COMPILE 
@<Common declarations for rules@>@;
#endif
  
#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `group_command --> " << "save_command'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q * (1) begin_group_command.@>
@* \§begin group command>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> begin_group_command@>

@q ** (2) begin_group_command: BEGIN_GROUP@>
@*1 \§begin group command> $\longrightarrow$ \.{BEGIN\_GROUP}.
\initials{LDF Undated.}

\LOG
\initials{LDF 2007.10.09.}
@:BUG FIX@> BUG FIX:  Now setting |id_map_node->scanner_node = scanner_node|.
\ENDLOG 

@<Define rules@>=
@=begin_group_command: BEGIN_GROUP@>@/
{

@<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << thread_name << "*** Parser: `begin_group_command --> "
                << "BEGIN_GROUP'.";

      cerr_strm << endl << "`scanner_node->token_string' == "
                << scanner_node->token_string;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

@q ** (2).@>

#if DEBUG_COMPILE
   if (DEBUG)
     {
       cerr_strm << thread_name << "In `yyparse()', rule "
                 << endl << "`begin_group_command --> "
                 << "BEGIN_GROUP':"
                 << endl << "Incrementing `scanner_node->group_ctr'. "
                 << "New value: " << (scanner_node->group_ctr + 1) << ".";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

     }
#endif /* |DEBUG_COMPILE|  */@; 
 
  scanner_node->group_ctr++;

  Id_Map_Node id_map_node = new Id_Map_Type;

  id_map_node->scanner_node = scanner_node;

  id_map_node->up = scanner_node->id_map_node;

  scanner_node->id_map_node = id_map_node;

@q ** (2) Set |$$| to 0 and exit rule.@>

@ Set |$$| to 0 and exit rule.
\initials{LDF 2004.09.13.}

@<Define rules@>=

  @=$$@> = static_cast<void*>(0); 

};

@q * (1) command: \.{END\_GROUP}.@>
@* \§command> $\longrightarrow$ \.{END\_GROUP}.
\initials{LDF 2007.10.09.}

\LOG
\initials{LDF 2007.10.09.}
Changed this rule from ``\§end group command> $\longrightarrow$ 
\.{END\_GROUP}'' to 
``\§command> $\longrightarrow$ \.{END\_GROUP}''.
Removed code from it and now calling |Scan_Parse::end_group_func|.
\ENDLOG 

@<Define rules@>=
@=command: END_GROUP@>@/
{

  Scan_Parse::end_group_func(parameter);
  
  @=$$@> = static_cast<void*>(0);

};

@q * (1) save_command.@>
@*  \§save command>.

\LOG
\initials{LDF 2004.09.13.}
Added this rule.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> save_command@>

@
@<Define rules@>=
@=save_command: SAVE@>@/
{

  @=$$@> = static_cast<void*>(0);

};

@q * @>


@q * Local variables for Emacs.@>

