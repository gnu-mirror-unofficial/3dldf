@q cslexpr.w @> 
@q Created by Laurence Finston Sun Jul 29 16:12:27 CEST 2007 @>
       
@q * (0) conic_section_lattice expressions.  @>
@** \§conic section lattice expressions>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Created this file.
\ENDLOG 

@q * (1) conic_section_lattice primary.  @>
@* \§conic section lattice primary>.
\initials{LDF 2007.07.29.}
  
\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG 

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_primary@>@/

@q ** (2) conic_section_lattice_primary --> conic_section_lattice_variable.@>
@*1 \§conic section lattice primary> $\longrightarrow$ 
\§conic section lattice variable>.  
\initials{LDF 2007.07.29.}

\syntax{conic_section_lattice_primary: conic_section_lattice_variable}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG 

@<Define rules@>=
@=conic_section_lattice_primary: conic_section_lattice_variable@>@/
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry == static_cast<Id_Map_Entry_Node>(0) || entry->object == static_cast<void*>(0))
    {

      @=$$@> = static_cast<void*>(0);

    } /* |if (   entry == static_cast<Id_Map_Entry_Node>(0) 
              || entry->object == static_cast<void*>(0))|  */

  else /* |   entry != static_cast<Id_Map_Entry_Node>(0) 
           && entry->object != static_cast<void*>(0)|  */

    @=$$@> = static_cast<void*>(create_new<Conic_Section_Lattice>(
                                  static_cast<Conic_Section_Lattice*>(
                                     entry->object))); 
};

@q ** (2) conic_section_lattice_primary --> LEFT_PARENTHESIS @>
@q ** (2) conic_section_lattice_expression RIGHT_PARENTHESIS.@> 

@*1 \§conic section lattice primary> $\longrightarrow$ 
\.{LEFT\_PARENTHESIS} \§conic section lattice expression> 
\.{RIGHT\_PARENTHESIS}.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_primary: LEFT_PARENTHESIS conic_section_lattice_expression @>@/
@=RIGHT_PARENTHESIS@>@/
{

   @=$$@> = @=$2@>;

};

@q ** (2) conic_section_lattice_primary --> GET_CONIC_SECTION_LATTICE @>
@q ** (2) point_vector_expression get_conic_section_lattice_option_list.@> 

@*1 \§conic section lattice primary>  $\longrightarrow$ 
\.{GET\_CONIC\_SECTION\_LATTICE} \§point vector expression>
\§get conic section lattice option list>.
\initials{LDF 2007.07.29.}

The semantic value of \§get conic section lattice option list> is 0.
The rules that reduce to this symbol set values on 
|scanner_node->conic_section_lattice_options|.  |scanner_node| is passed 
to |Scan_Parse::get_conic_section_lattice_func|, which can then access
any values that have been set.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_primary: GET_CONIC_SECTION_LATTICE @>@/
@=point_vector_expression get_conic_section_lattice_option_list@>@/
{
    @=$$@> 
      = Scan_Parse::get_conic_section_lattice_func(
           static_cast<Pointer_Vector<Point>*>(@=$2@>),
           static_cast<Scanner_Node>(parameter));

};

@q *** (3) get_conic_section_lattice_option_list.@>   
@*2 \§get conic section lattice option list>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> get_conic_section_lattice_option_list@>

@q **** (4) get_conic_section_lattice_option_list --> EMPTY.@>   
@*3 \§get conic section lattice option list> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option_list: /* Empty  */@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(parameter);

   if (   scanner_node->conic_section_lattice_options 
       == static_cast<Conic_Section_Lattice_Options*>(0))
   {
      scanner_node->conic_section_lattice_options = new Conic_Section_Lattice_Options;
   }

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option_list --> @>
@q **** (4) get_conic_section_lattice_option_list     @>   
@q **** (4) get_conic_section_lattice_option.         @>   

@*3 \§get conic section lattice option list> $\longrightarrow$ 
\§get conic section lattice option list> \§get conic section lattice option>. 
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option_list: @>@/
@=get_conic_section_lattice_option_list @>@/
@=get_conic_section_lattice_option@>@/        
{

   @=$$@> = static_cast<void*>(0);

};

@q *** (3) get_conic_section_lattice_option.@>   
@*2 \§get conic section lattice option>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <pointer_value> get_conic_section_lattice_option@>

@q **** (4) get_conic_section_lattice_option --> WITH_CULL.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_CULL}.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_CULL@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
       scanner_node->conic_section_lattice_options->do_cull 
          = true;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_NO_CULL.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_NO\_CULL}.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_NO_CULL@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
      scanner_node->conic_section_lattice_options->do_cull 
         = false;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_RECTIFY.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_RECTIFY}.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_RECTIFY@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
       scanner_node->conic_section_lattice_options->do_rectify 
          = true;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_NO_RECTIFY.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_NO\_RECTIFY}.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_NO_RECTIFY@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
      scanner_node->conic_section_lattice_options->do_rectify 
         = false;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_TOLERANCE.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_TOLERANCE}.
\§numeric expression>.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_TOLERANCE numeric_expression@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
       scanner_node->conic_section_lattice_options->tolerance 
          = @=$2@>;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_TEST.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_TEST}.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.

\initials{LDF 2007.08.05.}
Removed \§boolean expresssion> from the right-hand side.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_TEST@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
       scanner_node->conic_section_lattice_options->do_test 
          = true;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_NO_TEST.@>   
@*3 \§get conic section lattice option> $\longrightarrow$ \.{WITH\_NO\_TEST}.
\initials{LDF 2007.08.05.}

\LOG
\initials{LDF 2007.08.05.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_NO_TEST@>@/        
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
      scanner_node->conic_section_lattice_options->do_test 
         = false;

   @=$$@> = static_cast<void*>(0);

};

@q **** (4) get_conic_section_lattice_option --> WITH_TRANSFORM @>   
@q **** (4) transform_expression                                @>
@*3 \§get conic section lattice option> $\longrightarrow$ 
\.{WITH\_TRANSFORM} \§transform expression>.
\initials{LDF 2007.08.06.}

\LOG
\initials{LDF 2007.08.06.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=get_conic_section_lattice_option: WITH_TRANSFORM@>@/
@=transform_expression@>@/
{

   Scanner_Node scanner_node = static_cast<Scanner_Node>(scanner_node); 
   
   if (scanner_node && scanner_node->conic_section_lattice_options)
      scanner_node->conic_section_lattice_options->transform
         = static_cast<Transform*>(@=$2@>);

   @=$$@> = static_cast<void*>(0);

};

@q ** (2) conic_section_lattice_primary --> LAST @>
@q ** (2) conic_section_lattice_vector_expression.@>

@*1 \§conic section lattice primary> $\longrightarrow$ 
\.{LAST} \§conic section lattice vector expression>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>=
@=conic_section_lattice_primary: LAST conic_section_lattice_vector_expression@>@/
{ 

   Conic_Section_Lattice* r;

         r = create_new<Conic_Section_Lattice>(0);

   Pointer_Vector<Conic_Section_Lattice>* pv 
      = static_cast<Pointer_Vector<Conic_Section_Lattice>*>(@=$2@>);

@q ******* (7) Error handling:  |pv == static_cast<Pointer_Vector<Conic_Section_Lattice>*>(0)|.@>

@ Error handling:  |pv == 0|.
\initials{LDF 2007.07.29.}

@<Define rules@>=

   if (pv == static_cast<Pointer_Vector<Conic_Section_Lattice>*>(0))
      {

          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |if (pv == static_cast<Pointer_Vector<Conic_Section_Lattice>*>(0))|  */

@q ******* (7) Error handling:  |pv->ctr == 0|.@> 

@ Error handling:  |pv->ctr == 0|.
\initials{LDF 2007.07.29.}

@<Define rules@>=

   else if (pv->ctr == 0)
      {

          delete r;

          @=$$@> = static_cast<void*>(0);

      }  /* |else if (pv->ctr == 0)|  */

@q ******* (7) |pv != static_cast<Pointer_Vector<Conic_Section_Lattice>*>(0) && pv->ctr > 0|.@>

@ |pv != static_cast<Pointer_Vector<Conic_Section_Lattice>*>(0) && pv->ctr > 0|.  
Set |@=$$@>| to |*(pv->v[pv->ctr - 1])|.
\initials{LDF 2007.07.29.}

@<Define rules@>=

   else 
      {
         *r = *(pv->v[pv->ctr - 1]);
         @=$$@> = static_cast<void*>(r); 
      }
@q ******* (7) @> 

};

@q * (1) conic_section_lattice secondary.@>
@* \§conic section lattice secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_secondary@>
  
@q ** (2) conic_section_lattice secondary --> conic_section_lattice_primary.@>
@*1 \§conic section lattice secondary> $\longrightarrow$ \§conic section lattice primary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_secondary: conic_section_lattice_primary@>@/
{

  @=$$@> = @=$1@>;

};

@q ** (2) conic_section_lattice secondary -->           @>
@q        conic_section_lattice_secondary transformer.  @>
@*1 \§conic section lattice secondary> $\longrightarrow$ 
\§conic section lattice secondary> \§transformer>.

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_secondary: conic_section_lattice_secondary transformer@>@/
{

  Conic_Section_Lattice* c = static_cast<Conic_Section_Lattice*>(@=$1@>);
  Transform* t = static_cast<Transform*>(@=$2@>);

  if (c && t)
  {
     *c *= *t;
     delete t;
     @=$$@> = static_cast<void*>(c); 
  }
  else if (c)
  {
      @=$$@> = static_cast<void*>(c); 
  }
  else if (t)
  {
      delete t;
      @=$$@> = static_cast<void*>(0);
  }
};

@q * (1) conic_section_lattice_tertiary.@>
@* \§conic section lattice tertiary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_tertiary@>

@q ** (2) conic_section_lattice tertiary --> conic_section_lattice_secondary.  @>
@*1 \§conic section lattice tertiary> $\longrightarrow$ \§conic section lattice secondary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_tertiary: conic_section_lattice_secondary@>@/
{
   @=$$@> = @=$1@>;

};

@q * (1) conic_section_lattice expression.  @>
@* \§conic section lattice expression>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <pointer_value> conic_section_lattice_expression@>

@q ** (2) conic_section_lattice expression --> conic_section_lattice_tertiary.  @>
@*1 \§conic section lattice expression> $\longrightarrow$ \§conic section lattice tertiary>.
\initials{LDF 2007.07.29.}

\LOG
\initials{LDF 2007.07.29.}
Added this rule.
\ENDLOG

@<Define rules@>=
@=conic_section_lattice_expression: conic_section_lattice_tertiary@>@/
{

  @=$$@> = @=$1@>;

};

