@q pdatabas.w @> 
@q Created by Laurence Finston Thu 09 Sep 2021 07:11:30 PM CEST @>
     
@q * Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, @>
@q 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021 The Free Software Foundation, Inc. @>

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

@q *** (3) Commands for showing.  @>
@*3 Commands for showing.
 
@q **** (4) command --> SHOW boolean_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�boolean expression>.
\initials{LDF 2004.11.21.}

\LOG
\initials{LDF 2004.11.21.}
Added this rule.

\initials{LDF 2004.12.01.}
Now using |bool| instead of |int| for the type of the object 
referenced by |boolean_variables|, |boolean_primaries|,
|secondaries|, |tertiaries|, and |expressions|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW boolean_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW boolean_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   bool* b = static_cast<bool*>(@=$2@>); 

   if (b)
      {
         cerr_strm  << ">> " <<  ((*b) ? "true" : "false");
         delete b; 
      }
   else
      cerr_strm  << ">> unknown boolean";
 
   log_message(cerr_strm);
   cerr_message(cerr_strm);
   cerr_strm.str("");

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW numeric_expression fixed_optional@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�numeric expression> \�fixed optional>.
\initials{LDF 2004.11.21.}

\LOG
\initials{LDF 2004.11.21.}
Added this rule.

\initials{LDF 2005.09.13.}
Added \�fixed optional>.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW numeric_expression fixed_optional@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW numeric_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   real r = static_cast<real>(@=$2@>); 

   cerr_strm  << ">> ";

   if (@=$3@>)
      cerr_strm << fixed << r;
   else 
      cerr_strm << r;
 
   log_message(cerr_strm);
   cerr_message(cerr_strm);
   cerr_strm.str("");

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW complex_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�complex expression>.
\initials{LDF 2007.12.04.}

\LOG
\initials{LDF 2007.12.04.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW complex_expression@>@/
{

    Scan_Parse::show_func<Complex>(
                    static_cast<Complex*>(@=$2@>),
                    "complex",
                    parameter);

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW matrix_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�matrix expression>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW matrix_expression@>@/
{

    Scan_Parse::show_func<Matrix>(
                    static_cast<Matrix*>(@=$2@>),
                    "matrix",
                    parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ***** (5) fixed_optional@>  
@*4 \�fixed optional>.
\initials{LDF 2005.09.13.}

\LOG
\initials{LDF 2005.09.13.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> fixed_optional@>

@q ****** (6) fixed_optional --> EMPTY.@> 
@*5 \�fixed optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2005.09.13.}

\LOG
\initials{LDF 2005.09.13.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=fixed_optional: /* Empty */@>@/
{
   @=$$@> = 0;  /* integer  */
};

@q ****** (6) fixed_optional --> FIXED.@> 
@*5 \�fixed optional> $\longrightarrow$ \.{FIXED}.
\initials{LDF 2005.09.13.}

\LOG
\initials{LDF 2005.09.13.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=fixed_optional: FIXED@>@/
{
   @=$$@> = 1;
};

@q **** (4) command --> SHOW ulong_long_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW} \�ulong long expression>.
\initials{LDF 2005.12.06.}

\LOG
\initials{LDF 2005.12.06.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ulong_long_expression@>@/
{
  @<Common declarations for rules@>@; 

   unsigned long long ull = static_cast<unsigned long long>(@=$2@>); 

   cerr_strm  << ">> ";

   cerr_strm << ull;
 
   log_message(cerr_strm);
   cerr_message(cerr_strm);
   cerr_strm.str("");

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW string_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�string expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |string_expression|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW string_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW string_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   string* s = static_cast<string*>(@=$2@>); 

   cerr_strm  << ">> "; 

   if (s)
      {
         cerr_strm << *s;
         delete s;
      }

   else 
      cerr_strm << "(unknown string)";

   log_message(cerr_strm);
   cerr_message(cerr_strm);
   cerr_strm.str("");

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW pen_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�pen expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |pen_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW pen_expression@>@/

{

    Scan_Parse::show_func<Pen>(static_cast<Pen*>(@=$2@>),
                                 "pen",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW dash_pattern_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�dash pattern expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |dash_pattern_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW dash_pattern_expression@>@/

{
    Scan_Parse::show_func<Dash_Pattern>(static_cast<Dash_Pattern*>(@=$2@>),
                                 "dash_pattern",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW color_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�color expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |color_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW color_expression@>@/

{
    Scan_Parse::show_func<Color>(static_cast<Color*>(@=$2@>),
                                 "color",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW transform_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�transform expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |transform_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW transform_expression@>@/
{
    Scan_Parse::show_func<Transform>(static_cast<Transform*>(@=$2@>),
                                 "transform",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW picture_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�picture expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.  The way things are set up now, I don't think it's
possible that |pictures| will ever be unknown.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.

\initials{2008.12.22.}
@:BUG FIX@> BUG FIX:  Now casting |@=$2@>| to |Id_Map_Entry_Node|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW picture_expression@>@/
{
#if DEBUG_COMPILE
   bool DEBUG = false; /* |true| */
   if (DEBUG)
   {

       cerr << "*** Parser:  In rule `command: SHOW picture_expression':"
            << endl 
            << "Showing `Picture':"
            << endl;
   }
#endif /* |DEBUG_COMPILE|  */

    Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

    if (entry && entry->object)
       Scan_Parse::show_func<Picture>(static_cast<Picture*>(entry->object),
                                     "picture",
                                     parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW glyph_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�glyph expression>.
\initials{LDF 2005.06.09.}

\LOG
\initials{LDF 2005.06.09.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW glyph_expression@>@/
{
    Scan_Parse::show_func<Glyph>(static_cast<Glyph*>(@=$2@>),
                                 "glyph",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW newwrite_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�newwrite expression>.
\initials{LDF 2021.07.05.}

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW newwrite_expression@>@/
{

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW newwrite_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if 1 /* 0 */
    entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

    static_cast<Newwrite*>(entry->object)->show("*entry->object:");

#else

    Scan_Parse::show_func<Newwrite>(static_cast<Newwrite*>(@=$2@>),
                                    "newwrite",
                                    parameter); 
#endif 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW star_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�star expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW star_expression@>@/
{
    Scan_Parse::show_func<Star>(static_cast<Star*>(@=$2@>),
                                 "star",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW constellation_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�constellation expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW constellation_expression@>@/
{
    Scan_Parse::show_func<Constellation>(static_cast<Constellation*>(@=$2@>),
                                 "constellation",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};


@q **** (4) command --> SHOW planet_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�planet expression>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW planet_expression@>@/
{
    Scan_Parse::show_func<Planet>(static_cast<Planet*>(@=$2@>),
                                 "planet",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW STARS stars_field_list stars_option_list @>

@*3 \�command> $\longrightarrow$ \.{SHOW} \.{STARS} \<stars field list> \�stars option list>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW STARS stars_field_list stars_option_list@>@/
{
@q ******* (7) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW STARS stars_field_list stars_option_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->stars_get_option_struct->fields = @=$3@>;

    status = show_stars_func(scanner_node);

    if (status != 0)
    {
      cerr_strm << "ERROR!  In Parser: `command --> SHOW STARS stars_field_list stars_option_list':"
                << "`Scan_Parse::show_stars_func' failed, returning " << status << "."
                << endl
                << "Failed to show `stars'.  Will try to continue."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

    }
#if DEBUG_COMPILE
    else if (DEBUG)
    { 
      cerr_strm << "*** Parser: `command --> SHOW STARS stars_field_list stars_option_list':"
                << "`Scan_Parse::show_stars_func' succeeded, returning 0."
                << endl
                << "Showed `stars' successfully."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

    }  
#endif /* |DEBUG_COMPILE|  */@; 

   if (scanner_node->stars_get_option_struct != 0)
   {
       delete scanner_node->stars_get_option_struct;
       scanner_node->stars_get_option_struct = 0;
   }

    @=$$@> = static_cast<void*>(0);

@q ******* (7) @>

};

@q ***** (5) stars_field_list@>  
@*4 \�stars field list>.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_field_list@>

@q ****** (6) stars_field_list --> EMPTY.@> 
@*5 \�stars field list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_list: /* Empty */@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_list:  EMPTY'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    if (scanner_node->stars_get_option_struct != 0)
    {
       delete scanner_node->stars_get_option_struct;
       scanner_node->stars_get_option_struct = 0;
    }

    scanner_node->stars_get_option_struct = new Stars_Get_Option_Struct;

    @=$$@> = 0;
};

@q ****** (6) stars_field_list --> stars_field_list stars_field_specifier@> 
@*5 \�stars field list> $\longrightarrow$ \�stars field list> \$stars field specifier>.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_list: stars_field_list stars_field_specifier@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_list: stars_field_list stars_field_specifier'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_list: stars_field_list stars_field_specifier':"
                << endl
                << "`$2' (hex) == " << hex << @=$2@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = @=$1@> | @=$2@>;

};

@q ****** (6) stars_field_list --> stars_field_list COMMA stars_field_specifier@> 
@*5 \�stars field list> $\longrightarrow$ \�stars field list> \.{COMMA} \$stars field specifier>.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_list: stars_field_list COMMA stars_field_specifier@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_list: stars_field_list COMMA stars_field_specifier'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_list: stars_field_list COMMA stars_field_specifier':"
                << endl
                << "`$3' (hex) == " << hex << @=$3@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

      @=$$@> = @=$1@> | @=$3@>;

};

@q ****** (6) @>

@q ***** (5) stars_option_list@>  
@*4 \�stars option list>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_option_list@>

@q ****** (6) stars_option_list --> EMPTY.@> 
@*5 \�stars option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_option_list: /* Empty */@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list:  EMPTY'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    if (scanner_node->stars_get_option_struct == 0)
       scanner_node->stars_get_option_struct = new Stars_Get_Option_Struct;
    else
       scanner_node->stars_get_option_struct->where_options.clear();

    @=$$@> = 0;
};

@q ****** (6) stars_option_list --> stars_option_list order_by stars_order_by_list@> 
@*5 \�stars option list> $\longrightarrow$ \�stars option list> \�{order by} \�stars order by list>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_option_list: stars_option_list order_by stars_order_by_list@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list order_by stars_order_by_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0;

};

@q ***** (5) order_by@>  
@*4 \�order by>.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> order_by@>

@q ****** (6) order_by --> ORDER BY@> 
@*5 \�order by> $\longrightarrow$ \.{ORDER} \.{BY}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=order_by: ORDER BY@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `order_by: ORDER BY'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0;
};

@q ****** (6) order_by --> ORDER_BY@> 
@*5 \�order by> $\longrightarrow$ \.{ORDER\_BY}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=order_by: ORDER_BY@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `order_by: ORDER_BY'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0;
};

@q ***** (5) stars_order_by_list and stars_order_by_element@>  
@*4 \�stars order by list> and \�stars order by element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added these type declarations.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_order_by_list@>
@=%type <int_value> stars_order_by_element@>

@q ****** (6) stars_order_by_list --> stars_order_by_element@> 
@*5 \�stars order by list> $\longrightarrow$ \�stars order by element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_order_by_list: stars_order_by_element@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_order_by_list: stars_order_by_element'."
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   scanner_node->stars_get_option_struct->order_by_options.push_back(@=$1@>);

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_order_by_list: stars_order_by_element':"
                << endl
                << "`$1' (hex)  == " << hex << @=$1@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_order_by_list --> stars_order_by_list COMMA stars_order_by_element@> 
@*5 \�stars order by list> $\longrightarrow$ \�stars order by list> \.{COMMA} \�stars order by element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_order_by_list: stars_order_by_list COMMA stars_order_by_element@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
  {
    cerr_strm << "*** Parser: `stars_order_by_list: stars_order_by_list COMMA stars_order_by_element'.";

    log_message(cerr_strm);
    cerr_message(cerr_strm);
    cerr_strm.str("");
    
  }
#endif /* |DEBUG_COMPILE|  */@;

  scanner_node->stars_get_option_struct->order_by_options.push_back(@=$3@>);

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
  {
    cerr_strm << "*** Parser: `stars_order_by_list: stars_order_by_list COMMA stars_order_by_element'."
              << endl
              << "`$3$' (hex) == " << hex << @=$3@> << dec << endl;

    log_message(cerr_strm);
    cerr_message(cerr_strm);
    cerr_strm.str("");
    
  }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = 0;

};

@q ****** (6) stars_order_by_element --> stars_field_specifier.@> 
@*5 \�stars order by element> $\longrightarrow$ \<stars field specifier>.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_order_by_element: stars_field_specifier@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_order_by_element: stars_field_specifier'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = @=$1@>;

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_order_by_element: stars_field_specifier':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ***** (5) stars_field_specifier@>  
@*4 \�stars order by element>.
\initials{LDF 2021.06.23.}

\LOG
\initials{LDF 2021.06.23.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_field_specifier@>

@q ****** (6) stars_field_specifier --> STAR_CONSTANT_NAME.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{STAR\_CONSTANT\_NAME}.
\initials{LDF 2021.6.27.}

\LOG
\initials{LDF 2021.6.27.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: STAR_CONSTANT_NAME@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: STAR_CONSTANT_NAME'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_STAR_CONSTANT_NAME;

#if DEBUG_COMPILE
  DEBUG = true; /* |false| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: STAR_CONSTANT_NAME':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> COMMON_NAME.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{COMMON\_NAME}.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: COMMON_NAME@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: COMMON_NAME'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_COMMON_NAME;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: COMMON_NAME':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};


@q ****** (6) stars_field_specifier --> FLAMSTEED_DESIGNATION_NUMBER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{FLAMSTEED\_DESIGNATION\__NUMBER}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: FLAMSTEED_DESIGNATION_NUMBER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: FLAMSTEED_DESIGNATION_NUMBER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_FLAMSTEED_DESIGNATION_NUMBER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: FLAMSTEED_DESIGNATION_NUMBER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> BAYER_DESIGNATION_GREEK_LETTER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{BAYER\_DESIGNATION\_GREEK\_LETTER}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_BAYER_DESIGNATION_GREEK_LETTER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> BAYER_DESIGNATION_GREEK_LETTER_TEX.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{BAYER\_DESIGNATION\_GREEK\_LETTER\_TEX}.
\initials{LDF 2021.09.08.}

\LOG
\initials{LDF 2021.09.08.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER_TEX@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER_TEX'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_BAYER_DESIGNATION_GREEK_LETTER_TEX;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BAYER_DESIGNATION_GREEK_LETTER_TEX':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> BS_HR_NUMBER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{BS\_HR\_NUMBER}.
\initials{LDF 2021.06.24.}

\LOG
\initials{LDF 2021.06.24.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: BS_HR_NUMBER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BS_HR_NUMBER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_BS_HR_NUMBER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BS_HR_NUMBER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> BS_NUMBER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{BS\_NUMBER}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: BS_NUMBER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BS_NUMBER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_BS_NUMBER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: BS_NUMBER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> HR_NUMBER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{HR\_NUMBER}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: HR_NUMBER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: HR_NUMBER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_HR_NUMBER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: HR_NUMBER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> APPROX_RANK_APPARENT_MAGNITUDE.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{APPROX\_RANK\_APPARENT\_MAGNITUDE}.
\initials{LDF 2021.06.21.}

\LOG
\initials{LDF 2021.06.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: APPROX_RANK_APPARENT_MAGNITUDE@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPROX_RANK_APPARENT_MAGNITUDE'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_APPROX_RANK_APPARENT_MAGNITUDE;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPROX_RANK_APPARENT_MAGNITUDE':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> APPARENT_MAGNITUDE.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{APPARENT\_MAGNITUDE}.
\initials{LDF 2021.07.10.}

\LOG
\initials{LDF 2021.07.10.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: APPARENT_MAGNITUDE@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPARENT_MAGNITUDE'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_APPARENT_MAGNITUDE;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPARENT_MAGNITUDE':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> ABSOLUTE_MAGNITUDE.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{ABSOLUTE\_MAGNITUDE}.
\initials{LDF 2021.09.06.}

\LOG
\initials{LDF 2021.09.06.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: ABSOLUTE_MAGNITUDE@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: ABSOLUTE_MAGNITUDE'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_ABSOLUTE_MAGNITUDE;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: ABSOLUTE_MAGNITUDE':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> APPARENT_MAGNITUDE_VARIES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{APPARENT\_MAGNITUDE_VARIES}.
\initials{LDF 2021.09.06.}

\LOG
\initials{LDF 2021.09.06.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: APPARENT_MAGNITUDE_VARIES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPARENT_MAGNITUDE_VARIES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_APPARENT_MAGNITUDE_VARIES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: APPARENT_MAGNITUDE_VARIES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> ABSOLUTE_MAGNITUDE_VARIES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{ABSOLUTE\_MAGNITUDE_VARIES}.
\initials{LDF 2021.09.06.}

\LOG
\initials{LDF 2021.09.06.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: ABSOLUTE_MAGNITUDE_VARIES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: ABSOLUTE_MAGNITUDE_VARIES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_ABSOLUTE_MAGNITUDE_VARIES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: ABSOLUTE_MAGNITUDE_VARIES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> CONSTELLATION_FULL_NAME.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{CONSTELLATION\_FULL\_NAME}.
\initials{LDF 2021.06.22.}

\LOG
\initials{LDF 2021.06.22.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: CONSTELLATION_FULL_NAME@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_FULL_NAME'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_CONSTELLATION_FULL_NAME;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_FULL_NAME':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> CONSTELLATION_ABBREVIATION.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{CONSTELLATION\_ABBREVIATION}.
\initials{LDF 2021.06.22.}

\LOG
\initials{LDF 2021.06.22.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: CONSTELLATION_ABBREVIATION@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_ABBREVIATION'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_CONSTELLATION_ABBREVIATION;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_ABBREVIATION':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> CONSTELLATION_NAME_GENITIVE.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{CONSTELLATION\_NAME\_GENITIVE}.
\initials{LDF 2021.06.22.}

\LOG
\initials{LDF 2021.06.22.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: CONSTELLATION_NAME_GENITIVE@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_NAME_GENITIVE'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_CONSTELLATION_NAME_GENITIVE;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_NAME_GENITIVE':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> CONSTELLATION_NUMBER.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{CONSTELLATION\_NUMBER}.
\initials{LDF 2021.06.22.}

\LOG
\initials{LDF 2021.06.22.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: CONSTELLATION_NUMBER@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_NUMBER'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_CONSTELLATION_NUMBER;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: CONSTELLATION_NUMBER':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> RIGHT_ASCENSION_HOURS.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{RIGHT\_ASCENSION\_HOURS}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: RIGHT_ASCENSION_HOURS@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_HOURS'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_RIGHT_ASCENSION_HOURS;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_HOURS':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> RIGHT_ASCENSION_MINUTES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{RIGHT\_ASCENSION\_MINUTES}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: RIGHT_ASCENSION_MINUTES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_MINUTES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_RIGHT_ASCENSION_MINUTES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_MINUTES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> RIGHT_ASCENSION_SECONDS.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{RIGHT\_ASCENSION\_SECONDS}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: RIGHT_ASCENSION_SECONDS@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_SECONDS'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_RIGHT_ASCENSION_SECONDS;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_SECONDS':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> RIGHT_ASCENSION_DECIMAL_HOURS.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{RIGHT\_ASCENSION\_DECIMAL\_HOURS}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: RIGHT_ASCENSION_DECIMAL_HOURS@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_DECIMAL_HOURS'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_RIGHT_ASCENSION_DECIMAL_HOURS;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_DECIMAL_HOURS':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> RIGHT_ASCENSION_DECIMAL_DEGREES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{RIGHT\_ASCENSION\_DECIMAL\_DEGREES}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: RIGHT_ASCENSION_DECIMAL_DEGREES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_DECIMAL_DEGREES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_RIGHT_ASCENSION_DECIMAL_DEGREES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: RIGHT_ASCENSION_DECIMAL_DEGREES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> DECLINATION_DEGREES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{DECLINATION\_DEGREES}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: DECLINATION_DEGREES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_DEGREES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_DECLINATION_DEGREES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_DEGREES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> DECLINATION_MINUTES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{DECLINATION\_MINUTES}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: DECLINATION_MINUTES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_MINUTES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_DECLINATION_MINUTES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_MINUTES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> DECLINATION_SECONDS.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{DECLINATION\_SECONDS}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: DECLINATION_SECONDS@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_SECONDS'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_DECLINATION_SECONDS;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_SECONDS':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> DECLINATION_DECIMAL_DEGREES.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{DECLINATION\_DECIMAL\_DEGREES}.
\initials{LDF 2021.06.25.}

\LOG
\initials{LDF 2021.06.25.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: DECLINATION_DECIMAL_DEGREES@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_DECIMAL_DEGREES'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_DECLINATION_DECIMAL_DEGREES;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: DECLINATION_DECIMAL_DEGREES':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_field_specifier --> IS_BINARY.@> 
@*5 \�stars field specifier> $\longrightarrow$ \.{IS\_BINARY}.
\initials{LDF 2021.6.27.}

\LOG
\initials{LDF 2021.6.27.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_field_specifier: IS_BINARY@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: IS_BINARY'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = STARS_IS_BINARY;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_field_specifier: IS_BINARY':"
                << endl
                << "`$$' (hex) == " << hex << @=$$@> << dec << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

};

@q ****** (6) stars_option_list --> stars_option_list WHERE stars_where_list@> 
@*5 \�stars option list> $\longrightarrow$ \�stars option list> \.{WHERE} \�stars where list>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_option_list: stars_option_list WHERE stars_where_list@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list WHERE stars_where_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0;
};

@q ***** (5) stars_where_list@>  
@*4 \�stars where list>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_where_list@>

@q ****** (6) stars_where_list --> stars_where_element@> 
@*5 \�stars where list> $\longrightarrow$ \�stars where element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_where_list: stars_where_element@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_where_list: stars_where_element'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0;
};

@q ****** (6) stars_where_list --> stars_where_list logical_operator stars_where_element@> 
@*5 \�stars where list> $\longrightarrow$ \�stars where list> \�logical operator> \�stars where element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_where_list: stars_where_list logical_operator stars_where_element@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_where_list: stars_where_list logical_operator stars_where_element'."
                << endl 
                << "`logical_operator' ($2) == " << @=$2@> << " == " << name_map[@=$2@>] << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->stars_get_option_struct->where_options.back().conjunction = @=$2@>;

#if 1 /* 0   */
    scanner_node->stars_get_option_struct->where_options.back().show(
      "scanner_node->stars_get_option_struct->where_options.back():");
#endif 

   @=$$@> = 0;
};

@q ***** (5) stars_where_element@>  
@*4 \�stars where element>.
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> stars_where_element@>

@q ****** (6) stars_where_element --> stars_field_specifier relation string_expression.@> 
@*5 \�stars where element> $\longrightarrow$ \<stars field specifier> \�relation> \�string expression>.@> 
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_where_element: stars_field_specifier relation string_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_where_element: stars_field_specifier relation string_expression'."
                << endl 
                << "`stars_field_specifier' == " << @=$1@> << endl
                << "`relation'              == " << @=$2@> << " == " << name_map[@=$2@>] << endl
                << "`string_expression'     == \"" << *static_cast<string*>(@=$3@>) << "\"" 
                << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    Stars_Where_Option_Struct w;

    w.field              = @=$1@>;
    w.relation           = @=$2@>;
    w.comparison_string = *static_cast<string *>(@=$3@>); 
   
    scanner_node->stars_get_option_struct->where_options.push_back(w);

   @=$$@> = 0;
};

@q ****** (6) stars_where_element --> stars_field_specifier relation numeric_expression.@> 
@*5 \�stars where element> $\longrightarrow$ \<stars field specifier> \�relation> \�numeric expression>.@> 
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.20.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_where_element: stars_field_specifier relation numeric_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_where_element: stars_field_specifier relation numeric_expression'."
                << endl 
                << "`stars_field_specifier' == " << @=$1@> << endl
                << "`relation'              == " << @=$2@> << " == " << name_map[@=$2@>] << endl
                << "`numeric_expression'    == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    Stars_Where_Option_Struct w;

    w.field     = @=$1@>;
    w.relation  = @=$2@>;
  
    if (@=$3@> == floor(@=$3@>))
       w.int_value = static_cast<int>(floor(@=$3@>)); 
    else
       w.real_value = @=$3@>; 

    scanner_node->stars_get_option_struct->where_options.push_back(w);

   @=$$@> = 0;
};

@q ****** (6) stars_option_list --> stars_option_list WITH_LIMIT numeric_expression@> 
@*5 \�stars option list> $\longrightarrow$ \.{WITH\_LIMIT} \�numeric expression>
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_option_list: stars_option_list WITH_LIMIT numeric_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list WITH_LIMIT numeric_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list WITH_LIMIT numeric_expression':"
                << endl
                << "`$3' == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->stars_get_option_struct->limit = @=$3@>;

   @=$$@> = 0;

};

@q ****** (6) stars_option_list --> stars_option_list WITH_OFFSET numeric_expression@> 
@*5 \�stars option list> $\longrightarrow$ \.{WITH\_OFFSET} \�numeric expression>
\initials{LDF 2021.06.20.}

\LOG
\initials{LDF 2021.06.23.}
Added this rule.
\ENDLOG

@<Define rules@>= 

@=stars_option_list: stars_option_list WITH_OFFSET numeric_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list WITH_OFFSET numeric_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `stars_option_list: stars_option_list WITH_OFFSET numeric_expression':"
                << endl
                << "`$3' == " << @=$3@> << endl;

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

    scanner_node->stars_get_option_struct->offset = @=$3@>;

   @=$$@> = 0;

};

@q **** (4) command --> SHOW plane_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�plane expression>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW plane_expression@>@/
{

    Scan_Parse::show_func<Plane>(static_cast<Plane*>(@=$2@>),
                                 "plane",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW origami_figure_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�origami figure expression>.
\initials{LDF 2005.02.04.}

\LOG
\initials{LDF 2005.02.04.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW origami_figure_expression@>@/
{
    Scan_Parse::show_func<Origami_Figure>(static_cast<Origami_Figure*>(@=$2@>),
                                 "origami_figure",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW point_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�point expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |point_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW point_expression@>@/

{
    Scan_Parse::show_func<Point>(static_cast<Point*>(@=$2@>),
                                 "point",
                                 parameter); 

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW bool_point_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�bool-point expression>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW bool_point_expression@>@/

{

    Scan_Parse::show_func<Bool_Point>(static_cast<Bool_Point*>(@=$2@>),
                                      "bool_point",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW focus_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�focus expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |focus_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW focus_expression@>@/
{
    Scan_Parse::show_func<Focus>(static_cast<Focus*>(@=$2@>),
                                      "focus",
                                      parameter);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW macro_variable@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�macro variable>.
\initials{LDF 2004.12.28.}

\LOG
\initials{LDF 2004.12.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW macro_variable@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW macro_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>); 

   cerr_strm  << ">> ";

   if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
     {
        cerr_strm << "(unknown macro)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     } /* |if (entry == 0 || entry->object == 0)|  */

   else /* |entry != 0 && entry->object != 0|  */
      {

          Definition_Info_Node m = static_cast<Definition_Info_Node>(entry->object); 

          
          cerr << cerr_strm.str();
          cerr << entry->name << endl;
          m->show("macro:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

      } /* |else| (|entry != 0 && entry->object != 0|)  */
 
   @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW path_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�path expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |path_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW path_expression@>@/
{
    Scan_Parse::show_func<Path>(static_cast<Path*>(@=$2@>),
                                      "path",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW ellipse_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�ellipse expression>.
\initials{LDF 2004.11.23.}

\LOG
\initials{LDF 2004.11.23.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |ellipse_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ellipse_expression@>@/
{
    Scan_Parse::show_func<Ellipse>(static_cast<Ellipse*>(@=$2@>),
                                      "ellipse",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW parabola_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�parabola expression>.
\initials{LDF 2005.11.07.}

\LOG
\initials{LDF 2005.11.07.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW parabola_expression@>@/
{
    Scan_Parse::show_func<Parabola>(static_cast<Parabola*>(@=$2@>),
                                    "parabola",
                                    parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW hyperbola_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�hyperbola expression>.
\initials{LDF 2005.11.14.}

\LOG
\initials{LDF 2005.11.14.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW hyperbola_expression@>@/
{
    Scan_Parse::show_func<Hyperbola>(static_cast<Hyperbola*>(@=$2@>),
                                     "hyperbola",
                                     parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW circle_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�circle expression>.
\initials{LDF 2004.11.22.}

\LOG
\initials{LDF 2004.11.22.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |circle_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

\TODO
@q { @>
@:TO DO}{{\bf TO DO}@>
@q } @> 
@q !! TO DO:  @>
\initials{LDF 2004.11.22.}
Add |Circle::show()|.
\ENDTODO 

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW circle_expression@>@/
{
    Scan_Parse::show_func<Circle>(static_cast<Circle*>(@=$2@>),
                                      "circle",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW conic_section_lattice_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�conic section lattice expression>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW conic_section_lattice_expression@>@/
{
    Scan_Parse::show_func<Conic_Section_Lattice>(
                    static_cast<Conic_Section_Lattice*>(@=$2@>),
                    "conic_section_lattice",
                    parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW arc_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�arc expression>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW arc_expression@>@/
{
    Scan_Parse::show_func<Arc>(static_cast<Arc*>(@=$2@>),
                                     "arc",
                                     parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW helix_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�helix expression>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW helix_expression@>@/
{
    Scan_Parse::show_func<Helix>(static_cast<Helix*>(@=$2@>),
                                      "helix",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW rectangle_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�rectangle expression>.
\initials{LDF 2004.11.23.}

\LOG
\initials{LDF 2004.11.23.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |rectangle_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW rectangle_expression@>@/
{
    Scan_Parse::show_func<Rectangle>(static_cast<Rectangle*>(@=$2@>),
                                      "rectangle",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW triangle_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�triangle expression>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW triangle_expression@>@/
{
    Scan_Parse::show_func<Triangle>(static_cast<Triangle*>(@=$2@>),
                                      "triangle",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW nurb_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�nurb expression>.
\initials{LDF 2005.01.26.}

\LOG
\initials{LDF 2005.01.26.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW nurb_expression@>@/
{
    Scan_Parse::show_func<Nurb>(static_cast<Nurb*>(@=$2@>),
                                      "nurb",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW polygon_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�polygon expression>.
\initials{LDF 2005.02.11.}

\LOG
\initials{LDF 2005.02.11.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW polygon_expression@>@/
{
    Scan_Parse::show_func<Polygon>(static_cast<Polygon*>(@=$2@>),
                                      "polygon",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW reg_polygon_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�regular polygon expression>.
\initials{LDF 2004.11.23.}

\LOG
\initials{LDF 2004.11.23.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |reg_polygon_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW reg_polygon_expression@>@/
{
    Scan_Parse::show_func<Reg_Polygon>(static_cast<Reg_Polygon*>(@=$2@>),
                                      "reg_polygon",
                                      parameter);

    @=$$@> = static_cast<void*>(0);};

@q **** (4) command --> SHOW cone_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�cone expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cone_expression@>@/
{
    Scan_Parse::show_func<Cone>(static_cast<Cone*>(@=$2@>),
                                      "cone",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW cylinder_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�cylinder expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cylinder_expression@>@/
{

    Scan_Parse::show_func<Cylinder>(static_cast<Cylinder*>(@=$2@>),
                                      "cylinder",
                                      parameter);

    @=$$@> = static_cast<void*>(0);

};

@q **** (4) command --> SHOW cuboid_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�cuboid expression>.
\initials{LDF 2004.11.23.}

\LOG
\initials{LDF 2004.11.23.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |cuboid_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cuboid_expression@>@/
{
    Scan_Parse::show_func<Cuboid>(static_cast<Cuboid*>(@=$2@>),
                                      "cuboid",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW polyhedron_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�polyhedron expression>.
\initials{LDF 2004.11.23.}

\LOG
\initials{LDF 2004.11.23.}
Added this rule.

\initials{LDF 2004.12.09.}
@:BUG FIX@> BUG FIX:  Now deleting |tetrahedron_expression|.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW polyhedron_expression@>@/
{
    Scan_Parse::show_func<Polyhedron>(static_cast<Polyhedron*>(@=$2@>),
                                      "polyhedron",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW ellipsoid_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�ellipsoid expression>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ellipsoid_expression@>@/
{
    Scan_Parse::show_func<Ellipsoid>(static_cast<Ellipsoid*>(@=$2@>),
                                      "ellipsoid",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW sphere_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�sphere expression>.
\initials{LDF 2005.06.06.}

\LOG
\initials{LDF 2005.06.06.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW sphere_expression@>@/
{
    Scan_Parse::show_func<Sphere>(static_cast<Sphere*>(@=$2@>),
                                      "sphere",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW sphere_development_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW} \�sphere development expression>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW sphere_development_expression@>@/
{
    Scan_Parse::show_func<Sphere_Development>(
                             static_cast<Sphere_Development*>(@=$2@>),
                             "sphere_development",
                             parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW paraboloid_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�paraboloid expression>.
\initials{LDF 2006.01.23.}

\LOG
\initials{LDF 2006.01.23.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW paraboloid_expression@>@/
{
    Scan_Parse::show_func<Paraboloid>(static_cast<Paraboloid*>(@=$2@>),
                                      "paraboloid",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW ellipse_slice_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�ellipse slice expression>.
\initials{LDF 2005.03.29.}

\LOG
\initials{LDF 2005.03.29.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ellipse_slice_expression@>@/
{
    Scan_Parse::show_func<Ellipse_Slice>(static_cast<Ellipse_Slice*>(@=$2@>),
                                      "ellipse_slice",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW circle_slice_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�circle slice expression>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW circle_slice_expression@>@/
{
    Scan_Parse::show_func<Circle_Slice>(static_cast<Circle_Slice*>(@=$2@>),
                                      "circle_slice",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) command --> SHOW polyhedron_slice_expression@>

@*3 \�command> $\longrightarrow$ \.{SHOW}
\�polyhedron slice expression>.
\initials{LDF 2005.03.30.}

\LOG
\initials{LDF 2005.03.30.}
Added this rule.

\initials{LDF 2005.10.31.}
Replaced code with a call to |Scan_Parse::show_func()|.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW polyhedron_slice_expression@>@/
{
    Scan_Parse::show_func<Polyhedron_Slice>(static_cast<Polyhedron_Slice*>(@=$2@>),
                                      "polyhedron_slice",
                                      parameter);

    @=$$@> = static_cast<void*>(0);
};

@q **** (4) Vector-type expressions.@>   
@*3 Vector-type expressions.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this section.
\ENDLOG

@q ***** (5) Non-|Shape| types.@> 
@*4 Non-{\bf Shape} types.
\initials{LDF 2004.12.12.}

\LOG
\initials{LDF 2004.12.12.}
Added this section.
\ENDLOG

@q ****** (6) command --> SHOW boolean_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�boolean vector expression>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW boolean_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  `command --> "
                << "SHOW boolean_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<bool>* nv = static_cast<Pointer_Vector<bool>*>(@=$2@>); 

   cerr_strm  << ">> boolean_vector:"
             << endl << "size: " << nv->ctr << endl;

   if (nv && nv->ctr > 0)
      {
          int ctr = 0;
          string temp_str[2];
          temp_str[0] = "false";
          temp_str[1] = "true";
          
          cerr << cerr_strm.str();
          for (vector<bool*>::const_iterator iter 
                  = nv->v.begin();
               iter != nv->v.end();
               ++iter)
               {
                  cerr << "(" << ctr++ << ") : " << temp_str[**iter] 
                       << endl;

               }  /* |for|  */

          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete nv;

      }  /* |if (nv)|  */

else  /* |!nv|  */
     {
        cerr_strm << "(unknown boolean_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!nv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW numeric_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�numeric vector expression>.
\initials{LDF 2005.01.07.}

\LOG
\initials{LDF 2005.01.07.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW numeric_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  `command --> "
                << "SHOW numeric_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<real>* nv = static_cast<Pointer_Vector<real>*>(@=$2@>); 

   cerr_strm  << ">> numeric_vector:"
             << endl << "size: " << nv->ctr << endl;

   if (nv && nv->ctr > 0)
      {
          int ctr = 0;
          
          cerr << cerr_strm.str();
          for (vector<real*>::const_iterator iter 
                  = nv->v.begin();
               iter != nv->v.end();
               ++iter)
               {
                  cerr << "(" << ctr++ << ") : " << **iter << endl;

               }  /* |for|  */

          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete nv;

      }  /* |if (nv)|  */

else  /* |!nv|  */
     {
        cerr_strm << "(unknown numeric_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!nv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW ulong_long_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW} \�ulong long vector expression>.
\initials{LDF 2005.12.07.}

\LOG
\initials{LDF 2005.12.07.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ulong_long_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

   Pointer_Vector<ulong_long>* nv = static_cast<Pointer_Vector<ulong_long>*>(@=$2@>); 

   cerr_strm  << ">> ulong_long_vector:"
             << endl << "size: " << nv->ctr << endl;

   if (nv && nv->ctr > 0)
      {
          int ctr = 0;
          
          cerr << cerr_strm.str();
          for (vector<ulong_long*>::const_iterator iter 
                  = nv->v.begin();
               iter != nv->v.end();
               ++iter)
               {
                  cerr << "(" << ctr++ << ") : " << **iter << endl;

               }  /* |for|  */

          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete nv;

      }  /* |if (nv)|  */

else  /* |!nv|  */
     {
        cerr_strm << "(unknown ulong_long_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!nv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW complex_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�complex vector expression>.
\initials{LDF 2007.12.04.}

\LOG
\initials{LDF 2007.12.04.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW complex_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Complex> >(
                        static_cast<Pointer_Vector<Complex>*>(@=$2@>),
                        "complex_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW matrix_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�matrix vector expression>.
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW matrix_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Matrix> >(
                        static_cast<Pointer_Vector<Matrix>*>(@=$2@>),
                        "matrix_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW string_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�string vector expression>.
\initials{LDF 2005.01.09.}

\LOG
\initials{LDF 2005.01.09.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW string_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW string_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<string>* sv = static_cast<Pointer_Vector<string>*>(@=$2@>); 

   cerr_strm  << ">> ";

@q ******** (8) @> 

@
\LOG
\initials{LDF 2005.01.11.}
@:BUG FIX@> BUG FIX:  Added the condition |sv->ctr > 0|.  This doesn't
seem to be necessary for the other types, so I don't know why it's
needed here.
\ENDLOG 

@<Define rules@>=

   if (sv && sv->ctr > 0)
      {
          int ctr = 0;
          
          cerr << cerr_strm.str();
          for (vector<string*>::const_iterator iter 
                  = sv->v.begin();
               iter != sv->v.end();
               ++iter)
               {
                  cerr << "(" << ctr++ << ") : " << **iter << endl;

               }  /* |for|  */

          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete sv;

      }  /* |if (sv && sv->ctr > 0)|  */
 
@q ******** (8) @> 

   else  /* |!sv || sv->ctr <= 0|  */
     {
        cerr_strm << "(unknown string_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!sv || sv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW pen_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�pen vector expression>.
\initials{LDF 2005.01.11.}

\LOG
\initials{LDF 2005.01.11.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW pen_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW pen_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Pen>* pv = static_cast<Pointer_Vector<Pen>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("pen_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

else  /* |!pv|  */
     {
        cerr_strm << "(unknown pen_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW dash_pattern_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�dash pattern vector expression>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW dash_pattern_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW dash_pattern_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Dash_Pattern>* pv 
      = static_cast<Pointer_Vector<Dash_Pattern>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("dash_pattern_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown dash_pattern_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW color_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�color vector expression>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.

\initials{LDF 2004.12.12.}
Now deleting |Pointer_Vector<Color>* cv|.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW color_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW color_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Color>* cv = static_cast<Pointer_Vector<Color>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (cv)
      {
          
          cerr << cerr_strm.str();
          cv->show("color_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete cv;

      }  /* |if (cv)|  */

else  /* |!cv|  */
     {
        cerr_strm << "(unknown color_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!cv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW transform_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�transform vector expression>.
\initials{LDF 2005.01.13.}

\LOG
\initials{LDF 2005.01.13.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW transform_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW transform_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Transform>* pv 
      = static_cast<Pointer_Vector<Transform>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("transform_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown transform_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW focus_vector_expression@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�focus vector expression>.
\initials{LDF 2005.01.18.}

\LOG
\initials{LDF 2005.01.18.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW focus_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW focus_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Focus>* pv 
      = static_cast<Pointer_Vector<Focus>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("focus_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown focus_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW picture_vector_variable@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�picture vector variable>.
\initials{LDF 2005.01.15.}

\LOG
\initials{LDF 2005.01.15.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW picture_vector_variable@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG)
      {
          cerr_strm << "*** Parser:  `command --> "
                    << "SHOW picture_vector_variable'.";

          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
       
      }
#endif /* |DEBUG_COMPILE|  */@;

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   cerr_strm  << ">> ";

   if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
      {
          cerr_strm << "(unknown picture_vector)";
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str(""); 

      }  /* |if (entry == 0 || entry->object == 0)|  */

   else /* |entry != 0 && entry->object != 0|  */
      {

          Pointer_Vector<Picture>* pv 
             = static_cast<Pointer_Vector<Picture>*>(entry->object); 

          
          cerr << cerr_strm.str();
          pv->show("picture_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

      }  /* |else| (|entry != 0 && entry->object != 0|)  */

   @=$$@> = static_cast<void*>(0);
};

@q ****** (6) command --> SHOW macro_vector_variable@>

@*4 \�command> $\longrightarrow$ \.{SHOW}
\�macro vector variable>.
\initials{LDF 2004.12.28.}

\LOG
\initials{LDF 2004.12.28.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW macro_vector_variable@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW macro_vector_variable'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   entry = static_cast<Id_Map_Entry_Node>(@=$2@>);

   cerr_strm  << ">> ";

   if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
      {
          cerr_strm << "(unknown macro_vector)";
          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str(""); 

      }  /* |if (entry == 0 || entry->object == 0)|  */

   else /* |entry != 0 && entry->object != 0|  */
      {

          Pointer_Vector<Definition_Info_Type>* mv 
             = static_cast<Pointer_Vector<Definition_Info_Type>*>(entry->object); 

          
          cerr << cerr_strm.str();
          mv->show("macro_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

      }  /* |else| (|entry != 0 && entry->object != 0|)  */

   @=$$@> = static_cast<void*>(0);
};

@q ****** (6) command --> SHOW origami_figure_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�origami figure vector expression>.
\initials{LDF 2005.02.04.}

\LOG
\initials{LDF 2005.02.04.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW origami_figure_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW origami_figure_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Origami_Figure>* pv 
      = static_cast<Pointer_Vector<Origami_Figure>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("origami_figure_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown origami_figure_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW glyph_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�glyph vector expression>.
\initials{LDF 2005.06.09.}

\LOG
\initials{LDF 2005.06.09.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW glyph_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW glyph_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Glyph>* pv 
      = static_cast<Pointer_Vector<Glyph>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("glyph_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown glyph_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW newwrite_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�newwrite vector expression>.
\initials{LDF 2021.07.05.}

\LOG
\initials{LDF 2021.07.05.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW newwrite_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW newwrite_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Newwrite>* pv 
      = static_cast<Pointer_Vector<Newwrite>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("newwrite_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown newwrite_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};



@q ****** (6) command --> SHOW plane_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�plane vector expression>.
\initials{LDF 2005.10.30.}

\LOG
\initials{LDF 2005.10.30.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW plane_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW plane_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Plane>* pv 
      = static_cast<Pointer_Vector<Plane>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("plane_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown plane_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};
@q ****** (6) command --> SHOW star_vector_expression stars_field_list @>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�star vector expression>.
\initials{LDF 2021.06.26.}

\LOG
\initials{LDF 2021.06.26.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW star_vector_expression stars_field_list@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> SHOW star_vector_expression stars_field_list'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

#if 0 
    if (scanner_node->stars_get_option_struct != 0)
    {
       cerr << "scanner_node->stars_get_option_struct->where_options.size() == " 
            << scanner_node->stars_get_option_struct->where_options.size() << endl;
    }
    else 
       cerr << "scanner_node->stars_get_option_struct == 0" << endl;
#endif 


   Pointer_Vector<Star, Star>* pv 
      = static_cast<Pointer_Vector<Star, Star>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0 && !pv->v.empty())
   {

        stringstream s;
        int i = 0;
               
        for (vector<Star*>::iterator iter = pv->v.begin();
             iter != pv->v.end();
             ++iter)
        {
            s << "Star " << i++ << ":";

            (*iter)->show(s.str(), @=$3@>);

            s.str("");
        }

         delete pv;
         pv = 0;

   }  /* |if (pv && pv->ctr > 0)|  */

   else  /* |!pv || pv->ctr <= 0|  */
   {
      cerr_strm << "(unknown star_vector)";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");

   }  /* |else| (|!pv || pv->ctr <= 0|)  */

   if(scanner_node->stars_get_option_struct != 0)
   {
       delete scanner_node->stars_get_option_struct;
       scanner_node->stars_get_option_struct = 0;
   }


   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW constellation_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�constellation vector expression>.
\initials{LDF 2021.06.26.}

\LOG
\initials{LDF 2021.06.26.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW constellation_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW constellation_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Constellation>* pv 
      = static_cast<Pointer_Vector<Constellation>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("constellation_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown constellation_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW planet_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�planet vector expression>.
\initials{LDF 2021.06.26.}

\LOG
\initials{LDF 2021.06.26.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW planet_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW planet_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Planet>* pv 
      = static_cast<Pointer_Vector<Planet>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("planet_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown planet_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ***** (5) |Shape| types.@> 
@*4 {\bf Shape} types.
\initials{LDF 2004.12.12.}

\LOG
\initials{LDF 2004.12.12.}
Added this section.

\initials{LDF 2004.12.12.}
Now deleting |Pointer_Vector<Point>* pv|.
\ENDLOG

@q ****** (6) command --> SHOW point_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�point vector expression>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW point_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW point_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Point>* pv = static_cast<Pointer_Vector<Point>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          cerr << cerr_strm.str();
          pv->show("point_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");

          delete pv;

      }  /* |if (pv)|  */

else  /* |!pv|  */
     {
        cerr_strm << "(unknown point_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW bool_point_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�bool-point vector expression>.
\initials{LDF 2004.12.09.}

\LOG
\initials{LDF 2004.12.09.}
Added this rule.

\initials{LDF 2004.12.12.}
Now deleting |Pointer_Vector<Bool_Point>* bpv|.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW bool_point_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW bool_point_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Bool_Point>* bpv 
      = static_cast<Pointer_Vector<Bool_Point>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (bpv)
      {
          
          cerr << cerr_strm.str();
          bpv->show("bool_point_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete bpv;

      }  /* |if (bpv)|  */

   else  /* |!bpv|  */
     {
        cerr_strm << "(unknown bool_point_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!bpv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW path_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�path vector expression>.
\initials{LDF 2004.12.12.}

\LOG
\initials{LDF 2004.12.12.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW path_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW path_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Path>* pv = static_cast<Pointer_Vector<Path>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("path_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown path_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW ellipse_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�ellipse vector expression>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.

\initials{LDF 2005.12.01.}
Removed code from this rule.  Now calling |Scan_Parse::show_func()| instead.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ellipse_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Ellipse> >(
                        static_cast<Pointer_Vector<Ellipse>*>(@=$2@>),
                        "ellipse_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW circle_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�circle vector expression>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.

\initials{LDF 2005.12.01.}
Removed code from this rule.  Now calling |Scan_Parse::show_func()| instead.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
@=command: SHOW circle_vector_expression@>@/
{
 
   Scan_Parse::show_func<Pointer_Vector<Circle> >(
                        static_cast<Pointer_Vector<Circle>*>(@=$2@>),
                        "circle_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW parabola_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�parabola vector expression>.
\initials{LDF 2005.12.01.}

\LOG
\initials{LDF 2005.12.01.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW parabola_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Parabola> >(
                        static_cast<Pointer_Vector<Parabola>*>(@=$2@>),
                        "parabola_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW hyperbola_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�hyperbola vector expression>.
\initials{LDF 2005.12.01.}

\LOG
\initials{LDF 2005.12.01.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW hyperbola_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Hyperbola> >(
                        static_cast<Pointer_Vector<Hyperbola>*>(@=$2@>),
                        "hyperbola_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW conic_section_lattice_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�conic section lattice vector expression>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW conic_section_lattice_vector_expression@>@/
{

   Scan_Parse::show_func<Pointer_Vector<Conic_Section_Lattice> >(
                        static_cast<Pointer_Vector<Conic_Section_Lattice>*>(@=$2@>),
                        "conic_section_lattice_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW arc_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�arc vector expression>.
\initials{LDF 2007.10.13.}

\LOG
\initials{LDF 2007.10.13.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW arc_vector_expression@>@/

{

   Scan_Parse::show_func<Pointer_Vector<Arc> >(
                        static_cast<Pointer_Vector<Arc>*>(@=$2@>),
                        "arc_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW helix_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�helix vector expression>.
\initials{LDF 2005.05.19.}

\LOG
\initials{LDF 2005.05.19.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW helix_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  'command --> "
                << "SHOW helix_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Helix>* pv = static_cast<Pointer_Vector<Helix>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("helix_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown helix_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW rectangle_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�rectangle vector expression>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW rectangle_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW rectangle_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Rectangle>* pv = static_cast<Pointer_Vector<Rectangle>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("rectangle_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown rectangle_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW triangle_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�triangle vector expression>.
\initials{LDF 2005.01.20.}

\LOG
\initials{LDF 2005.01.20.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW triangle_vector_expression@>@/
{
   @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG)
      {
          cerr_strm << "*** Parser: `command --> "
                    << "SHOW triangle_vector_expression'.";

          log_message(cerr_strm);
          cerr_message(cerr_strm);
          cerr_strm.str("");
      
      }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Triangle>* pv = static_cast<Pointer_Vector<Triangle>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("triangle_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown triangle_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW polygon_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�polygon vector expression>.
\initials{LDF 2005.02.11.}

\LOG
\initials{LDF 2005.02.11.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW polygon_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  `command --> "
                << "SHOW polygon_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Polygon>* pv 
      = static_cast<Pointer_Vector<Polygon>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("polygon_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown polygon_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW reg_polygon_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�regular polygon vector expression>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW reg_polygon_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW reg_polygon_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Reg_Polygon>* pv 
      = static_cast<Pointer_Vector<Reg_Polygon>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("reg_polygon_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown reg_polygon_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW cone_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�cone vector expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cone_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  'command --> "
                << "SHOW cone_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Cone>* pv = static_cast<Pointer_Vector<Cone>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("cone_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown cone_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW cylinder_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�cylinder vector expression>.
\initials{LDF 2005.05.25.}

\LOG
\initials{LDF 2005.05.25.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cylinder_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser:  'command --> "
                << "SHOW cylinder_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Cylinder>* pv = static_cast<Pointer_Vector<Cylinder>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv)
      {
          
          cerr << cerr_strm.str();
          pv->show("cylinder_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          

          delete pv;

      }  /* |if (pv)|  */

   else  /* |!pv|  */
     {
        cerr_strm << "(unknown cylinder_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW ellipsoid_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�ellipsoid vector expression>.
\initials{LDF 2005.12.01.}

\LOG
\initials{LDF 2005.12.01.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW ellipsoid_vector_expression@>@/
{
   Scan_Parse::show_func<Pointer_Vector<Ellipsoid> >(
                        static_cast<Pointer_Vector<Ellipsoid>*>(@=$2@>),
                        "ellipsoid_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW sphere_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�sphere vector expression>.
\initials{LDF 2005.12.01.}

\LOG
\initials{LDF 2005.12.01.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW sphere_vector_expression@>@/

{
   Scan_Parse::show_func<Pointer_Vector<Sphere> >(
                        static_cast<Pointer_Vector<Sphere>*>(@=$2@>),
                        "sphere_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW sphere_development_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�sphere development vector expression>.
\initials{LDF 2009.11.10.}

\LOG
\initials{LDF 2009.11.10.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW sphere_development_vector_expression@>@/

{
   Scan_Parse::show_func<Pointer_Vector<Sphere_Development> >(
                        static_cast<Pointer_Vector<Sphere_Development>*>(@=$2@>),
                        "sphere_development_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW paraboloid_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�paraboloid vector expression>.
\initials{LDF 2006.01.23.}

\LOG
\initials{LDF 2006.01.23.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW paraboloid_vector_expression@>@/

{
   Scan_Parse::show_func<Pointer_Vector<Paraboloid> >(
                        static_cast<Pointer_Vector<Paraboloid>*>(@=$2@>),
                        "paraboloid_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW cuboid_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�cuboid vector expression>.
\initials{LDF 2004.12.14.}

\LOG
\initials{LDF 2004.12.14.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW cuboid_vector_expression@>@/
{
   Scan_Parse::show_func<Pointer_Vector<Cuboid> >(
                        static_cast<Pointer_Vector<Cuboid>*>(@=$2@>),
                        "cuboid_vector",
                        parameter);

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW polyhedron_vector_expression@>

@*5 \�command> $\longrightarrow$ \.{SHOW}
\�polyhedron vector expression>.
\initials{LDF 2005.01.14.}

\LOG
\initials{LDF 2005.01.14.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW polyhedron_vector_expression@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: `command --> "
                << "SHOW polyhedron_vector_expression'.";

      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   Pointer_Vector<Polyhedron>* pv 
      = static_cast<Pointer_Vector<Polyhedron>*>(@=$2@>); 

   cerr_strm  << ">> ";

   if (pv && pv->ctr > 0)
      {
          
          cerr << cerr_strm.str();
          pv->show("polyhedron_vector:");
          log_message(cerr_strm);
          cerr_strm.str("");
          
          delete pv;

      }  /* |if (pv && pv->ctr > 0)|  */

   else  /* |!pv || pv->ctr <= 0|  */
     {
        cerr_strm << "(unknown polyhedron_vector)";
        log_message(cerr_strm);
        cerr_message(cerr_strm);
        cerr_strm.str("");

     }  /* |else| (|!pv || pv->ctr <= 0|)  */

   @=$$@> = static_cast<void*>(0);

};

@q ****** (6) command --> SHOW DATABASE database_option_list@>

@*5 \�command> $\longrightarrow$ \.{SHOW} \.{DATABASE} \�database option list>.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>=
  
@=command: SHOW DATABASE database_option_list@>@/
{
@q ******** (8) @>

  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `command --> SHOW DATABASE database_option_list'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

@q ******** (8) @>

#ifndef MYSQL_AVAILABLE
    cerr_strm << "MySQL not available.  No database to show." << endl
              << "Continuing." << endl;
    log_message(cerr_strm);
    cerr_message(cerr_strm);
    cerr_strm.str("");

    goto END_SHOW_DATABASE_0;
#endif 

@q ******** (8) @>
@
@<Define rules@>=

    if (!database_enabled)
    {
       cerr_strm << "*** Parser:  In rule `command --> SHOW DATABASE database_option_list':"
                 << "`database_enabled' == `false'." << endl 
                 << endl
                 << "Database is not available.  Continuing." << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
   
       goto END_SHOW_DATABASE_0;
    }

@q ******** (8) @>
@
@<Define rules@>= 

    if (scanner_node->database_options.empty())
       scanner_node->database_options.push_back(ALL);

    status = scanner_node->show_database();
 
    if (status == 2)
    {
       cerr_strm << "*** Parser:  In rule `command --> SHOW DATABASE database_option_list':"
                 << "`Scanner_Type::show_database' returned 2." << endl 
                 << endl
                 << "No rows returned from database.  Continuing." << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");

    }
    else if (status != 0)
    {
       cerr_strm << "*** Parser:  ERROR! In rule `command --> SHOW DATABASE database_option_list':"
                 << "`Scanner_Type::show_database' failed, returning " << status 
                 << endl
                 << "Failed to show database.  Continuing." << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }
    else if (DEBUG)
    {
       cerr_strm << "*** Parser:  In rule `command --> SHOW DATABASE database_option_list':"
                 << "`Scanner_Type::show_database' succeeded, returning 0."
                 << endl;
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
    }

    scanner_node->database_options.clear();

@q ******** (8) @>

END_SHOW_DATABASE_0:

    @=$$@> = static_cast<void*>(0);

};

@q ** (2) database_option_list.@>
@*1 \�database option list>.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> database_option_list@>

@q *** (3) database_option_list: /* Empty  */@>
@*2 \�database option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option_list: /*  Empty  */@>@/
{
  @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `database_option_list: EMPTY'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->database_options.clear();   

   @=$$@> = 0; 
};

@q *** (3) database_option_list: database_option_list database_option. @>
@*2 \�database option list> $\longrightarrow$ \�database option>.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option_list: database_option_list database_option@>@/
{
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG)
     {
       cerr_strm << "*** Parser: Rule `database_option_list: database_option_list database_option'.";
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
       
     }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0; 
};

@q ** (2) database_option.@>
@*1 \�database option>.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> database_option@>

@q *** (3) database_option: ALL.@>
@*2 \�database option>$\longrightarrow$ \.{ALL}.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option: ALL@>@/
{
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `database_option: ALL'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->database_options.push_back(ALL);

   @=$$@> = 0;
};

@q *** (3) database_option: POINTS.@>
@*2 \�database option>$\longrightarrow$ \.{POINTS}.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option: POINTS@>@/
{
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `database_option: POINTS'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->database_options.push_back(POINTS);

   @=$$@> = 0;
};

@q *** (3) database_option: PATHS.@>
@*2 \�database option> $\longrightarrow$ \.{PATHS}.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option: PATHS@>@/
{
  @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `database_option: PATHS'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->database_options.push_back(PATHS);

   @=$$@> = 0;
};

@q *** (3) database_option: TRANSFORMS.@>
@*2 \�database option> $\longrightarrow$ \.{TRANSFORMS}.
\initials{LDF 2021.03.23.}

\LOG
\initials{LDF 2021.03.23.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=database_option: TRANSFORMS@>@/
{
  @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `database_option: TRANSFORMS'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->database_options.push_back(TRANSFORMS);

   @=$$@> = 0;
};

@q ****** (6) command --> SHOW SCANNER_NODE show_scanner_node_option_list@>

@*5 \�command> $\longrightarrow$ \.{SHOW} \.{SCANNER_NODE} \�scanner node option list>.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this rule.
\ENDLOG

@q ******* (7) Definition.@> 

@<Define rules@>= 
  
@=command: SHOW SCANNER_NODE show_scanner_node_option_list@>@/
{
  @<Common declarations for rules@>@; 

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
  {
      cerr_strm << "*** Parser: Rule `command --> SHOW SCANNER_NODE show_scanner_node_option_list'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
   
  }
#endif /* |DEBUG_COMPILE|  */@;

    vector<int>::iterator iter = find(scanner_node->show_scanner_node_options.begin(), 
                                      scanner_node->show_scanner_node_options.end(), ALL);

    bool show_all = (iter != scanner_node->show_scanner_node_options.end()) ? true : false;

    scanner_node->show("Scanner_Type", show_all);
 
    scanner_node->show_scanner_node_options.clear();

    @=$$@> = static_cast<void*>(0);

};

@q ** (2) show_scanner_node_option_list.@>
@*1 \�show scanner node option list>.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> show_scanner_node_option_list@>

@q *** (3) show_scanner_node_option_list: /* Empty  */@>
@*2 \�show scanner node option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=show_scanner_node_option_list: /*  Empty  */@>@/
{
  @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `show_scanner_node_option_list: EMPTY'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->show_scanner_node_options.clear();   

   @=$$@> = 0; 
};

@q *** (3) show_scanner_node_option_list: show_scanner_node_option_list show_scanner_node_option. @>
@*2 \�show scanner node option list> $\longrightarrow$ \�show scanner node option>.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=show_scanner_node_option_list: show_scanner_node_option_list show_scanner_node_option@>@/
{
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
   DEBUG = false; /* |true| */ @; 
   if (DEBUG)
     {
       cerr_strm << "*** Parser: Rule `show_scanner_node_option_list: show_scanner_node_option_list show_scanner_node_option'.";
       log_message(cerr_strm);
       cerr_message(cerr_strm);
       cerr_strm.str("");
       
     }
#endif /* |DEBUG_COMPILE|  */@;

   @=$$@> = 0; 
};

@q ** (2) show_scanner_node_option.@>
@*1 \�show scanner node option>.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <int_value> show_scanner_node_option@>

@q *** (3) show_scanner_node_option: ALL.@>
@*2 \�show scanner node option>$\longrightarrow$ \.{ALL}.
\initials{LDF 2021.04.11.}

\LOG
\initials{LDF 2021.04.11.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=show_scanner_node_option: ALL@>@/
{
   @<Common declarations for rules@>@;

#if DEBUG_COMPILE
  DEBUG = false; /* |true| */ @; 
  if (DEBUG)
    {
      cerr_strm << "*** Parser: Rule `show_scanner_node_option: ALL'.";
      log_message(cerr_strm);
      cerr_message(cerr_strm);
      cerr_strm.str("");
      
    }
#endif /* |DEBUG_COMPILE|  */@;

   if (scanner_node)
      scanner_node->show_scanner_node_options.push_back(ALL);

   @=$$@> = 0;
};


@q ** (2) command -->  SHOW DATABASE string_expression @>  

@*3 \�> $\longrightarrow$ \.{SHOW} \.{DATABASE} \�string expression>. 
\initials{LDF 2021.6.28.}

\LOG
\initials{LDF 2021.6.28.}
Added this rule.
\ENDLOG

@q *** (3) Definition.@> 

@<Define rules@>=

@=command: SHOW DATABASE string_expression@>@/
{
@q **** (4) @>

   @<Common declarations for rules@>@;

   string s;

   int i = 0;

#if DEBUG_COMPILE

   DEBUG = true; /* |false|  */

   if (DEBUG)
   { 
       cerr << "*** Parser: `command: SHOW DATABASE string_expression'."
            << endl
            << "`*static_cast<string *>(string_expression)' == " 
            << *static_cast<string *>(@=$3@>) << endl;
   }  
#endif /* |DEBUG_COMPILE|  */@; 

@q **** (4) @>
@
@<Define rules@>=

   if (static_cast<string *>(@=$3@>) == 0)
   {
       cerr << "WARNING!  *** Parser: `command: SHOW DATABASE string_expression':"
            << endl
            << "`static_cast<string *>(string_expression)' is NULL."
            << endl 
            << "Can't query database.  Will try to continue."
            << endl;
 
       goto END_SHOW_DATABASE_1;
   }

@q *** (3) @>
@
@<Define rules@>=

   s = *static_cast<string *>(@=$3@>);

   if (s == "")
   {
       cerr << "WARNING!  *** Parser: `command: SHOW DATABASE string_expression':"
            << endl
            << "`*static_cast<string *>(string_expression)' is empty."
            << endl 
            << "Can't query database.  Will try to continue."
            << endl;
 
       goto END_SHOW_DATABASE_1;
   }

@q *** (3) @>
@
@<Define rules@>=

   cerr << "*** Parser: `command: SHOW DATABASE string_expression':"
        << endl
        << "Before call to `Scanner_Type::submit_mysql_query':"
        << endl
        << "`scanner_node->row_ctr'       == " << scanner_node->row_ctr << endl 
        << "`scanner_node->field_ctr'     == " << scanner_node->field_ctr << endl 
        << "`scanner_node->affected_rows' == " << scanner_node->affected_rows << endl;


   status = scanner_node->submit_mysql_query(s);

   cerr << "*** Parser: `command: SHOW DATABASE string_expression':"
        << endl
        << "After call to `Scanner_Type::submit_mysql_query':"
        << endl
        << "`scanner_node->row_ctr'       == " << scanner_node->row_ctr << endl 
        << "`scanner_node->field_ctr'     == " << scanner_node->field_ctr << endl 
        << "`scanner_node->affected_rows' == " << scanner_node->affected_rows << endl;

   if (status != 0)
   {
       cerr << "ERROR!  *** Parser: `command: SHOW DATABASE string_expression':"
            << endl
            << "`Scanner_Type::submit_mysql_query' failed, returning " << status << "."
            << endl 
            << "MySQL error:  " << mysql_error(scanner_node->mysql)
            << endl 
            << "MySQL error number:  " << mysql_errno(scanner_node->mysql)
            << endl 
            << "Database query failed.  Failed to assign to `star_vector'."
            << endl 
            << "Will try to continue."
            << endl;
 
       if (scanner_node->result)
       {
          mysql_free_result(scanner_node->result);
          scanner_node->result = 0;
       }   

       goto END_SHOW_DATABASE_1;

   }

@q *** (3) @>
@
@<Define rules@>=

#if DEBUG_COMPILE
   else if (DEBUG)
   { 
       cerr << "*** Parser: `command: SHOW DATABASE string_expression':"
            << endl
            << "`Scanner_Type::submit_mysql_query' succeeded, returning 0."
            << endl
            << "`scanner_node->row_ctr'       == " << scanner_node->row_ctr << endl 
            << "`scanner_node->field_ctr'     == " << scanner_node->field_ctr << endl 
            << "`scanner_node->affected_rows' == " << scanner_node->affected_rows << endl;
   }  
#endif /* |DEBUG_COMPILE|  */@;


@q *** (3) @>
@
@<Define rules@>=

   if (scanner_node->affected_rows == 0 || scanner_node->row_ctr == 0 || scanner_node->field_ctr == 0)
   {
       cerr << "WARNING!  *** Parser: `command: SHOW DATABASE string_expression':"
            << endl
            << "`scanner_node->affected_rows', `scanner_node->row_ctr' and/or `scanner_node->field_ctr' == 0:"
            << endl 
            << "`scanner_node->affected_rows' == " << scanner_node->affected_rows << endl 
            << "`scanner_node->row_ctr'       == " << scanner_node->row_ctr << endl      
            << "`scanner_node->field_ctr'     == " << scanner_node->field_ctr << endl    
            << "No results from database query.  Will try to continue."
            << endl;
 
       if (scanner_node->result)
       {
          mysql_free_result(scanner_node->result);
          scanner_node->result = 0;
       }   

       goto END_SHOW_DATABASE_1;
   }

@q *** (3) @>   
@ 
@<Define rules@>=

   /*  Process the contents of |scanner_node->curr_row|  */

   scanner_node->curr_row = 0;
   
   i = 0;   
  
@q **** (4) @>
 
    do
       {
@q ***** (5) @>

            scanner_node->curr_row = mysql_fetch_row(scanner_node->result);

            if (scanner_node->curr_row == 0)
            {

              if (*mysql_error(scanner_node->mysql))
              {
                cerr_strm << "ERROR! In `Scanner_Type::show_database: `mysql_fetch_row' failed "
                          << "returning NULL." << endl
                          << "Error:  " << mysql_error(scanner_node->mysql) << endl
                          << "Exiting function  unsuccessfully with exit status 1."
                          << endl;
                log_message(cerr_strm);
                cerr_message(cerr_strm);
                cerr_strm.str("");

                if (scanner_node->result)
                {
                  mysql_free_result(scanner_node->result);
                  scanner_node->result = 0;
                }       

                return 1;

              }
              else if (DEBUG)
              {
                
                cerr_strm << "In `Scanner_Type::show_database:" << endl 
                          << "No more rows." << endl;

                log_message(cerr_strm);
                cerr_message(cerr_strm);
                cerr_strm.str("");
              }

              break;

           }  /* |if (scanner_node->curr_row == 0)|  */

           cerr_strm << "Row " << i++ << ":" << endl;

           for (int j = 0; j < scanner_node->field_ctr; ++j)
           {
               cerr_strm << "Field";
  
               if (j < 10 && scanner_node->field_ctr >= 10)
                 cerr_strm << "  ";
               else 
                 cerr_strm << " ";

               cerr_strm << j << ": " << scanner_node->curr_row[j] << endl;
           }

           log_message(cerr_strm);
           cerr_message(cerr_strm);
           cerr_strm.str("");

@q ***** (5) @>

      } while (scanner_node->curr_row != 0);

@q **** (4) @>

@q *** (3) @>   
@ 
@<Define rules@>=

END_SHOW_DATABASE_1:

   /* Free |scanner_node->result|  */

   if (scanner_node->result)
   {
      mysql_free_result(scanner_node->result);
      scanner_node->result = 0;
   }   

   scanner_node->row_ctr       = 0;
   scanner_node->field_ctr     = 0;
   scanner_node->affected_rows = 0;

   @=$$@> = static_cast<void*>(0); 

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