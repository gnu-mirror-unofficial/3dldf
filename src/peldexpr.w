@q peldexpr.w @> 
@q Created by Laurence Finston Do Mai 26 14:12:04 CEST 2005 @>
       
@q * (0) Copyright and License.@>

@q This file is part of GNU 3DLDF, a package for three-dimensional drawing. @>
@q Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, @>
@q 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022 The Free Software Foundation, Inc.  @>

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

@q * (0) ellipsoid expressions.  @>
@** ellipsoid expressions.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Created this file.
\ENDLOG 

@q * (1) ellipsoid_primary.  @>
@* \�ellipsoid primary>.
\initials{LDF 2005.05.26.}  

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_primary@>@/

@q ** (2) ellipsoid_primary --> ellipsoid_variable.@>
@*1 \�ellipsoid primary> $\longrightarrow$ \�ellipsoid variable>.  

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG 

@q *** (3) Definition.@> 

@<Define rules@>=
@=ellipsoid_primary: ellipsoid_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
  {

      @=$$@> = static_cast<void*>(0);

  } /* |if (entry == 0 || entry->object == 0)|  */

  else /* |entry != 0 && entry->object != 0|  */

    @=$$@> = static_cast<void*>(create_new<Ellipsoid>(
                                  static_cast<Ellipsoid*>(
                                     entry->object))); 

};

@q ** (2) ellipsoid_primary --> LEFT_PARENTHESIS ellipsoid_expression @> 
@q ** (2) RIGHT_PARENTHESIS                                   @>

@*1 \�ellipsoid primary> $\longrightarrow$ \.{\LP} 
\�ellipsoid expression> \.{\RP}.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_primary: LEFT_PARENTHESIS ellipsoid_expression RIGHT_PARENTHESIS@>@/
{

  @=$$@> = @=$2@>;

};

@q ***** (5) ellipsoid_primary --> LAST @>
@q ***** (5) ellipsoid_vector_expression.@>

@*4 \�ellipsoid primary> $\longrightarrow$ 
\.{LAST} \�ellipsoid vector expression>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=ellipsoid_primary: LAST ellipsoid_vector_expression@>@/
{ 
   Ellipsoid* c;

         c = create_new<Ellipsoid>(0);

   Pointer_Vector<Ellipsoid>* pv 
      = static_cast<Pointer_Vector<Ellipsoid>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == 0|.@> 

@ Error handling:  |pv == 0|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Ellipsoid>*>(0))
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == 0)|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete c;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != 0 && pv->ctr > 0|.@> 

@ |pv != 0 && pv->ctr > 0|.  Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2005.05.26.}

@<Define rules@>=

   else 
      {
         *c = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(c); 
      }
@q ******* (7) @> 

};

@q * (1) ellipsoid_secondary.  @>
@* \�ellipsoid secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_secondary@>
  
@q ** (2) ellipsoid secondary --> ellipsoid_primary.@>
@*1 \�ellipsoid secondary> $\longrightarrow$ \�ellipsoid primary>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_secondary: ellipsoid_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) ellipsoid secondary --> ellipsoid_secondary transformer.  @>
@*1 \�ellipsoid secondary> $\longrightarrow$ \�ellipsoid secondary> 
\�transformer>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.

\initials{LDF 2005.12.16.}
@:BUG FIX@> BUG FIX: Now deleting |Transform* t|.
\ENDLOG

@<Define rules@>=
@=ellipsoid_secondary: ellipsoid_secondary transformer@>@/
{

  Ellipsoid* p = static_cast<Ellipsoid*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  *p *= *t;

  delete t;

  @=$$@> = static_cast<void*>(p); 

};

@q * (1) ellipsoid tertiary.@>
@* \�ellipsoid tertiary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_tertiary@>

@q ** (2) ellipsoid tertiary --> ellipsoid_secondary.  @>
@*1 \�ellipsoid tertiary> $\longrightarrow$ \�ellipsoid secondary>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_tertiary: ellipsoid_secondary@>@/
{

  @=$$@> = @=$1@>;

};

@q * (1) ellipsoid expression.@>
@* \�ellipsoid expression>.
\initials{LDF 2005.05.26.}

\LOG
\initials{LDF 2005.05.26.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> ellipsoid_expression@>

@q ** (2) ellipsoid expression --> ellipsoid_tertiary.  @>
@*1 \�ellipsoid expression> $\longrightarrow$ \�ellipsoid tertiary>.

\LOG
\initials{LDF 2005.05.26.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=ellipsoid_expression: ellipsoid_tertiary@>@/
{

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

