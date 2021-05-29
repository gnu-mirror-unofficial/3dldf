@q pastrnmy.w @> 
@q Created by Laurence Finston Fri 28 May 2021 10:11:32 AM CEST @>
       
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2021 The Free Software Foundation, Inc.  @>

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

@q * (0) star expressions.  @>
@** star expressions.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Created this file.
\ENDLOG 

@q * (1) star_primary.  @>
@* \§star primary>.
\initials{LDF 2021.05.28.}  

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> star_primary@>@/

@q ** (2) star_primary --> star_variable.@>
@*1 \§star primary> $\longrightarrow$ \§star variable>.  

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=

@=star_primary: star_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
  {

    @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

  @=$$@> = static_cast<void*>(create_new<Star>(
                              static_cast<Star*>(
                              entry->object))); 

};

@q ** (2) star_primary --> LEFT_PARENTHESIS star_expression RIGHT_PARENTHESIS @>

@*1 \§star primary> $\longrightarrow$ \.{\LP} 
\§star expression> \.{\RP}.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=star_primary: LEFT_PARENTHESIS star_expression RIGHT_PARENTHESIS@>@/
{
  @=$$@> = @=$2@>;

};

@q ***** (5) star_primary --> LAST @>
@q ***** (5) star_vector_expression.@>

@*4 \§star primary> $\longrightarrow$ 
\.{LAST} \§star vector expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=star_primary: LAST star_vector_expression@>@/
{ 

    Star* c;

    c = create_new<Star>(0);

    Pointer_Vector<Star>* pv 
      = static_cast<Pointer_Vector<Star>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

  if (pv == static_cast<Pointer_Vector<Star>*>(0))
  {
      delete c;

      @=$$@> = static_cast<void*>(0);

  }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

   else if (pv->ctr == 0)
   {

       delete c;

       @=$$@> = static_cast<void*>(0);

   }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

   else 
   {
      *c = *(pv->v[pv->ctr - 1]);
      @=$$@> = static_cast<void*>(c); 
   }

@q ******* (7) @> 

};

@q * (1) star_secondary.  @>
@* \§star secondary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> star_secondary@>
  
@q ** (2) star secondary --> star_primary.@>
@*1 \§star secondary> $\longrightarrow$ \§star primary>.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=star_secondary: star_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: star_secondary --> star_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) star tertiary.@>
@* \§star tertiary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> star_tertiary@>

@q ** (2) star tertiary --> star_secondary.  @>
@*1 \§star tertiary> $\longrightarrow$ \§star secondary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=star_tertiary: star_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) star expression.@>
@* \§star expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> star_expression@>

@q ** (2) star expression --> star_tertiary.  @>
@*1 \§star expression> $\longrightarrow$ \§star tertiary>.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=star_expression: star_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (0) constellation expressions.  @>
@** constellation expressions.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Created this file.
\ENDLOG 

@q * (1) constellation_primary.  @>
@* \§constellation primary>.
\initials{LDF 2021.05.28.}  

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> constellation_primary@>@/

@q ** (2) constellation_primary --> constellation_variable.@>
@*1 \§constellation primary> $\longrightarrow$ \§constellation variable>.  

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=

@=constellation_primary: constellation_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
  {

    @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

  @=$$@> = static_cast<void*>(create_new<Constellation>(
                              static_cast<Constellation*>(
                              entry->object))); 

};

@q ** (2) constellation_primary --> LEFT_PARENTHESIS constellation_expression RIGHT_PARENTHESIS @>

@*1 \§constellation primary> $\longrightarrow$ \.{\LP} 
\§constellation expression> \.{\RP}.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=constellation_primary: LEFT_PARENTHESIS constellation_expression RIGHT_PARENTHESIS@>@/
{
  @=$$@> = @=$2@>;

};

@q ***** (5) constellation_primary --> LAST @>
@q ***** (5) constellation_vector_expression.@>

@*4 \§constellation primary> $\longrightarrow$ 
\.{LAST} \§constellation vector expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=constellation_primary: LAST constellation_vector_expression@>@/
{ 

    Constellation* c;

    c = create_new<Constellation>(0);

    Pointer_Vector<Constellation>* pv 
      = static_cast<Pointer_Vector<Constellation>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

  if (pv == static_cast<Pointer_Vector<Constellation>*>(0))
  {
      delete c;

      @=$$@> = static_cast<void*>(0);

  }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

   else if (pv->ctr == 0)
   {

       delete c;

       @=$$@> = static_cast<void*>(0);

   }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2021.05.28.}

@<Define rules@>=

   else 
   {
      *c = *(pv->v[pv->ctr - 1]);
      @=$$@> = static_cast<void*>(c); 
   }

@q ******* (7) @> 

};

@q * (1) constellation_secondary.  @>
@* \§constellation secondary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> constellation_secondary@>
  
@q ** (2) constellation secondary --> constellation_primary.@>
@*1 \§constellation secondary> $\longrightarrow$ \§constellation primary>.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=constellation_secondary: constellation_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: constellation_secondary --> constellation_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) constellation tertiary.@>
@* \§constellation tertiary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> constellation_tertiary@>

@q ** (2) constellation tertiary --> constellation_secondary.  @>
@*1 \§constellation tertiary> $\longrightarrow$ \§constellation secondary>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=constellation_tertiary: constellation_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) constellation expression.@>
@* \§constellation expression>.
\initials{LDF 2021.05.28.}

\LOG
\initials{LDF 2021.05.28.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> constellation_expression@>

@q ** (2) constellation expression --> constellation_tertiary.  @>
@*1 \§constellation expression> $\longrightarrow$ \§constellation tertiary>.

\LOG
\initials{LDF 2021.05.28.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=constellation_expression: constellation_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (0) planet expressions.  @>
@** planet expressions.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Created this file.
\ENDLOG 

@q * (1) planet_primary.  @>
@* \§planet primary>.
\initials{LDF 2021.05.29.}  

\LOG
\initials{LDF 2021.05.29.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> planet_primary@>@/

@q ** (2) planet_primary --> planet_variable.@>
@*1 \§planet primary> $\longrightarrow$ \§planet variable>.  

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=

@=planet_primary: planet_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
  {

    @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

  @=$$@> = static_cast<void*>(create_new<Planet>(
                              static_cast<Planet*>(
                              entry->object))); 

};

@q ** (2) planet_primary --> LEFT_PARENTHESIS planet_expression RIGHT_PARENTHESIS @>

@*1 \§planet primary> $\longrightarrow$ \.{\LP} 
\§planet expression> \.{\RP}.

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=planet_primary: LEFT_PARENTHESIS planet_expression RIGHT_PARENTHESIS@>@/
{
  @=$$@> = @=$2@>;

};

@q ***** (5) planet_primary --> LAST @>
@q ***** (5) planet_vector_expression.@>

@*4 \§planet primary> $\longrightarrow$ 
\.{LAST} \§planet vector expression>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=planet_primary: LAST planet_vector_expression@>@/
{ 

    Planet* c;

    c = create_new<Planet>(0);

    Pointer_Vector<Planet>* pv 
      = static_cast<Pointer_Vector<Planet>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2021.05.29.}

@<Define rules@>=

  if (pv == static_cast<Pointer_Vector<Planet>*>(0))
  {
      delete c;

      @=$$@> = static_cast<void*>(0);

  }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2021.05.29.}

@<Define rules@>=

   else if (pv->ctr == 0)
   {

       delete c;

       @=$$@> = static_cast<void*>(0);

   }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2021.05.29.}

@<Define rules@>=

   else 
   {
      *c = *(pv->v[pv->ctr - 1]);
      @=$$@> = static_cast<void*>(c); 
   }

@q ******* (7) @> 

};

@q * (1) planet_secondary.  @>
@* \§planet secondary>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> planet_secondary@>
  
@q ** (2) planet secondary --> planet_primary.@>
@*1 \§planet secondary> $\longrightarrow$ \§planet primary>.

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=planet_secondary: planet_primary@>@/
{
#if DEBUG_COMPILE
  bool DEBUG = false; /* |true| */ @;
  if (DEBUG)
    {
      cerr << "\n*** Parser: planet_secondary --> planet_primary "
           << endl;
    }
#endif /* |DEBUG_COMPILE|  */@;

  @=$$@> = @=$1@>;

};

@q * (1) planet tertiary.@>
@* \§planet tertiary>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> planet_tertiary@>

@q ** (2) planet tertiary --> planet_secondary.  @>
@*1 \§planet tertiary> $\longrightarrow$ \§planet secondary>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=planet_tertiary: planet_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) planet expression.@>
@* \§planet expression>.
\initials{LDF 2021.05.29.}

\LOG
\initials{LDF 2021.05.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> planet_expression@>

@q ** (2) planet expression --> planet_tertiary.  @>
@*1 \§planet expression> $\longrightarrow$ \§planet tertiary>.

\LOG
\initials{LDF 2021.05.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=planet_expression: planet_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

@q * Emacs-Lisp code for use in indirect buffers when using the          @>
@q   GNU Emacs editor.  The local variable list is not evaluated when an @>
@q   indirect buffer is visited, so it's necessary to evaluate the       @>
@q   following s-expression in order to use the facilities normally      @>
@q   accessed via the local variables list.                              @>
@q   \initials{LDF 2004.02.12}.                                          @>
@q   (progn (cweb-mode) (outline-minor-mode t) (setq fill-column 70))    @>

@q Local Variables:                   @>
@q mode:CWEB                          @>
@q eval:(outline-minor-mode t)        @>
@q abbrev-file-name:"~/.abbrev_defs"  @>
@q eval:(read-abbrev-file)            @>
@q fill-column:70                     @>
@q run-cweave-on-file:"3DLDFprg.web"  @>
@q End:                               @>

