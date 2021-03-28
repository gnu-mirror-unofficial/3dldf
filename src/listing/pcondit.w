@q pcondit.w @> 
@q Created by Laurence Finston Thu Sep  9 22:24:40 CEST 2004 @>
     

@q * (0) Conditionals.  @>
@** Conditionals.  
\initials{LDF 2004.09.09.}  

\LOG
\initials{LDF 2004.09.09.}  
Created this file.
\ENDLOG 

@q ** conditional.  @>
@*1 \§conditional>.

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conditional@>

@q *** conditional --> if_conditional.  @>
@ \§conditional> $\longrightarrow$ \§if-conditional>.

\LOG
\initials{LDF 2004.09.09.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=conditional: if_conditional@>
{

  @=$$@> = @=$1@>;

};

@q *** conditional --> else_conditional.  @>
@ \§conditional> $\longrightarrow$ \§else-conditional>.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=conditional: else_conditional@>
{

  @=$$@> = @=$1@>;

};

@q *** conditional --> elseif_conditional.  @>
@ \§conditional> $\longrightarrow$ \§elseif-conditional>.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=conditional: elseif_conditional@>
{

  @=$$@> = @=$1@>;

};

@q *** conditional --> fi_conditional.  @>
@ \§conditional> $\longrightarrow$ \§fi-conditional>.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.
\ENDLOG

@<Define rules@>= 
  
@=conditional: fi_conditional@>
{

  @=$$@> = @=$1@>;

};

@q *** |if_conditional|.@>   
@*2 {\bf if\_conditional}.

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> if_conditional@>

@q **** (4) if_conditional --> IF boolean_expression COLON.@>
@*3 \§if conditional> --> \.{IF} \§boolean expression> \.{COLON}.

\LOG
\initials{LDF 2004.09.09.}
Added this rule.

\initials{LDF 2004.09.10.}
Now incrementing |scanner_node->if_ctr|.

\initials{LDF 2004.10.26.}
Changed |int i| to |int* i|, because I've changed the type of 
|boolean_expression| from |int_value| to |pointer_value| in 
\filename{pblexpr.w}.

\initials{LDF 2004.12.01.}
Now using |bool| instead of |int| for the type of the object 
referenced by |boolean_variables|, |boolean_primaries|,
|secondaries|, |tertiaries|, and |expressions|.
\ENDLOG 

@q ***** (5) Definition.@> 

@<Define rules@>=

@=if_conditional: IF boolean_expression COLON@>@/
{

    bool* b = static_cast<bool*>(@=$2@>);
   
    Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

    scanner_node->if_ctr++;
 
    int i = (*b) ? 1 : 0;

    int status = Scan_Parse::conditional(scanner_node, i);

@q ****** (6) Error handling: |status != 0|.@> 

@ Error handling: |status != 0|.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  if (status != 0)
    {

#if 0 
      cerr_strm << thread_name << "In `yyparse()', "
                << "rule `if_conditional --> "
                << "IF boolean_expression COLON':"
                << endl << "`Scan_Parse::conditional()' failed. "
                << "Will try to continue.";
       
      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");
#endif 

    } /* |if (status != 0)|  */
 
@q ****** (6) Set |$$| to 0 and exit rule.@> 

@ Set |@=$$@>| to 0 and exit rule.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  delete b;

  @=$$@> = static_cast<void*>(0);

};

@q *** (3) |else_conditional|.@>   
@*2 {\bf else\_conditional}.

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> else_conditional@>

@q **** (4) else_conditional --> ELSE COLON.@>
@*3 \§else conditional> --> \.{ELSE} \.{COLON}.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.
\ENDLOG 

@q ***** (5) Definition.@> 

@<Define rules@>=

@=else_conditional: ELSE COLON@>@/
{

    int discard = 2;

    int status = Scan_Parse::conditional(static_cast<Scanner_Node>(parameter), discard);

@q ****** (6) Error handling: |status != 0|.@> 

@ Error handling: |status != 0|.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  if (status != 0)
    {
#if 0 
      cerr_strm << thread_name << "In `yyparse()', "
                << "rule `else_conditional --> "
                << "ELSE COLON':"
                << endl << "`Scan_Parse::conditional()' failed. "
                << "Will try to continue.";
       
      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");
#endif
    } /* |if (status != 0)|  */

@q ****** (6) Set |$$| to 0 and exit rule.@> 

@ Set |@=$$@>| to 0 and exit rule.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  @=$$@> = static_cast<void*>(0);

};

@q *** (3) |elseif_conditional|.@>   
@*2 {\bf elseif\_conditional}.

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> elseif_conditional@>

@q **** (4) elseif_conditional --> ELSEIF boolean_expression COLON.@>
@*3 \§elseif conditional> --> \.{ELSEIF} \§boolean expression> \.{COLON}.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.
\ENDLOG 

@q ***** (5) Definition.@> 

@<Define rules@>=

@=elseif_conditional: ELSEIF boolean_expression COLON@>@/
{

  int discard = 2;

  int status = Scan_Parse::conditional(static_cast<Scanner_Node>(parameter), discard);

@q ****** (6) Error handling: |status != 0|.@> 

@ Error handling: |status != 0|.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  if (status != 0)
    {
#if 0 
      cerr_strm << thread_name << "In `yyparse()', "
                << "rule `elseif_conditional --> "
                << "ELSEIF boolean_expression COLON':"
                << endl << "`Scan_Parse::conditional()' failed. "
                << "Will try to continue.";
       
      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");
#endif 
    } /* |if (status != 0)|  */

@q ****** (6) Set |$$| to 0 and exit rule.@> 

@ Set |@=$$@>| to 0 and exit rule.
\initials{LDF 2004.09.10.}

@<Define rules@>=

  @=$$@> = static_cast<void*>(0);

};

@q *** (3) |fi_conditional|.@>   
@*2 {\bf fi\_conditional}.

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> fi_conditional@>

@q **** (4) fi_conditional --> FI.@>
@*3 \§fi conditional> --> \.{FI}.

\LOG
\initials{LDF 2004.09.10.}
Added this rule.

\initials{LDF 2004.09.12.}
Added error handling for the case that the |fi| is unmatched.  
In the debugging and error output:
Added code for printing the current location to standard error 
\ENDLOG 

@q ***** (5) Definition.@> 

@<Define rules@>=

@=fi_conditional: FI@>@/
{
 @<Common declarations for rules@>@; 
  
#if 0 
@q  if (scanner_node->in->type == Io_Struct::FILE_TYPE)                                    @>
@q    {                                                                                    @>
@q      location_strm << scanner_node->in->filename << ": "                                @>
@q                    << @@=@@1@@>@@=.first_line@@> << ":" << @@=@@1@@>@@=.first_column@@> @>
@q                    << "--"                                                              @>
@q                    << @@=@@1@@>@@=.last_line@@> << ":" << @@=@@1@@>@@=.last_column@@>;  @>
@q    } @>
  else
    location_strm.str("");
#endif 

@q ****** (6).@> 

  if (scanner_node->if_ctr > 0)
    {

       scanner_node->if_ctr--;

    } /* |if (scanner_node->if_ctr > 0)|  */

@q ****** (6).@> 

  else /* |scanner_node->if_ctr <= 0|  */
    {
      cerr_strm << thread_name << "ERROR! In `yyparse()', "
                << "rule `fi_conditional --> FI',"
                << endl      
                << location_strm.str() 
                << endl << "Unmatched `fi'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm, error_stop_value);
      cerr_strm.str("");
      
    }    /* |else| (|scanner_node->if_ctr <= 0|)  */

@=$$@> = static_cast<void*>(0);

};

@q * @>


@q * Local variables for Emacs.@>

