@q pfuncfin.w @> 

@q Created by Laurence Finston Thu Jan 29 19:09:21 MET 2004  @>
     

@q * (1) Additional C++ code. @>
@* Additional \CPLUSPLUS/ code.

@q ** (2) |yylex| declaration.@>
@*1 {\it yylex\/} declaration.
\initials{LDF 2004.04.06.}.

This function is a layer between the low-level 
scanning performed by |sub_yylex| and |yyparse|.  
It's defined in \filename{scan.web}.
\initials{LDF 2004.04.22.}

\LOG
Added this function.
\initials{LDF 2004.04.06.}.
\ENDLOG 

@q *** Declaration. @>

@<Declare functions@>=
int
yylex(YYSTYPE* value,
      yyscan_t parameter);  

#if 0 
      YYLTYPE* location,
#endif 

@q ** yyerror() @>
@ {\it yyerror\/}().
@<Declare functions@>=
int
yyerror(void *v, char const* message);@/

@
@<Define functions@>=
int
yyerror(void *v, char const* message)
{
  cerr << "ERROR! In yyparse(): " << message << endl;
  return 0;
}

@q ** Set |yydebug|.  @>
@ Set {\bf yydebug}.

\LOG
\initials{LDF 2004.05.05.}  Added this function.
\ENDLOG 

@<Declare functions@>=
void
set_yydebug(int i = 1);

@
@<Define functions@>=
void
set_yydebug(int i)
{
  yydebug = i;
  return;
}

@q ** Unset |yydebug|.  @>
@ Unset {\bf yydebug}.

\LOG
\initials{LDF 2004.05.05.}  Added this function.
\ENDLOG 

@<Declare functions@>=
inline
void
unset_yydebug(void)
{
  return set_yydebug(0);
}

@q ** (2) Reset |DEBUG_COMPILE|.@> 
@* Reset {\tt DEBUG\_COMPILE}.
\initials{LDF 2005.10.28.}

\LOG
\initials{LDF 2005.10.28.}
Added this section.
\ENDLOG

@<Reset |DEBUG_COMPILE|@>=

@q #undef DEBUG_COMPILE @>

@q #if DEBUG_COMPILE_SAVE @>
@q #define DEBUG_COMPILE 1 @>
@q #else @>
@q #define DEBUG_COMPILE 0 @>
@q #endif @>

@q #undef DEBUG_COMPILE_SAVE @>

@q ** (2) Garbage. @>
@ Garbage.  Just in case it's not used anywhere else.
\initials{LDF 2004.05.02.}

@<Garbage@>=

@q * (1) Putting the parser together.@>
@* Putting the parser together.

@q ** (2) This is what's compiled.@>

@ This is what's compiled.
\initials{LDF Undated.}

\LOG
\initials{LDF 2005.10.20.}
Now setting |DEBUG_COMPILE| back to |DEBUG_COMPILE_SAVE|
and undefining |DEBUG_COMPILE_SAVE|.

\initials{LDF 2005.10.22.}
@:BUG FIX@> BUG FIX:  Fixed the way I reset  
|DEBUG_COMPILE| to |DEBUG_COMPILE_SAVE|.  
The way it was before didn't work, 
because the bodies of macros are not expanded in 
definitions, but only when the macros are expanded.
\ENDLOG 

@c
@=%{@>
@<Include files@>@;
@<Using declarations@>@;
typedef void* yyscan_t;
@q Declare location type @>
@<Preprocessor macros not only for the parser@>@;
@<Preprocessor macros for the parser only@>@;
@<Declare |name_map| and |type_name_map|@>@;
@=%}@>
@<Bison declarations@>@;
@<Union declaration for |YYSTYPE|@>@;
@<Token and precedence declarations@>@;
@<Type declarations for non-terminal symbols@>@;

@=%{@>
@<Constants in |namespace Scan_Parse|@>@;
@<Declare functions@>@;
@=%}@>

@=%%@> /* Introduces ``Rules'' section.  \initials{LDF 2004.02.11}.  */
@<Define rules@>@;
@=%%@> /* Introduces ``Additional C++ code'' section.  
          \initials{LDF 2004.04.07}.  */
@q <Define |LDF_LOCATION_TYPE| functions@>
@<Define functions@>@;

@<Reset |DEBUG_COMPILE|@>@;

#if 0 
@<Garbage@>@;
#endif 

@q ** (2) This is what's written to `parser_1.h'.@>
@ This is what's written to \filename{parser_1.h}.

It's necessary to write the declaration of |LDF_LOCATION_TYPE| to
\filename{parser.h}, because Bison does not write it to 
\filename{parser.h++}.
\initials{LDF 2004.04.08.}   

\LOG
\initials{LDF 2005.10.28.}
@:BUG FIX@> BUG FIX: Now including |@<Reset |DEBUG_COMPILE|@>|.
Before, the files that loaded \filename{parser.h} had the value
set for parser input files.
\ENDLOG 

@(parser_1.h++@>=

#undef YYLTYPE
typedef void* yyscan_t;
@q <Declare location type @>
@<Preprocessor macros not only for the parser@>@;
@<|extern| declarations in |namespace Scan_Parse|@>@;
@<|extern| declaration of |name_map| and |type_name_map|@>@;
@<Declare functions@>@;
@<Reset |DEBUG_COMPILE|@>@;

