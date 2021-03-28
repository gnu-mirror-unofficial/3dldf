@q mtrxassn.w @> 
@q Created by Laurence Finston (LDF) Thu Nov 29 20:03:21 CET 2007 @>

@q **** (4) matrix assignments.@>
@*3 matrix assignments. 
\initials{LDF 2007.11.28.}

@q ***** (5) assignment --> matrix_variable := matrix_expression.@>   
@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{:=} \§matrix expression>. 
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable ASSIGN matrix_expression@>
{

  Matrix* m = static_cast<Matrix*>(@=$3@>);

  Int_Void_Ptr ivp = 
     Scan_Parse::assign_simple<Matrix>(static_cast<Scanner_Node>(parameter),
                                       "Matrix",
                                       @=$1@>,
                                       m);

  @=$$@> = ivp.v;

};

@q ***** (5) matrix element assignment.@>
@*3 matrix element assignment. 
\initials{LDF 2007.11.28.}

@q ***** (5) assignment --> matrix_variable LEFT_PARENTHESIS @>
@q ***** (5) numeric_expression COMMA numeric_expression     @>
@q ***** (5) RIGHT_PARENTHESIS ASSIGN numeric_expression.    @>   

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{LEFT\_PARENTHESIS} \§numeric expression> \.{COMMA} \§numeric expression> 
\.{RIGHT\_PARENTHESIS} \.{ASSIGN} \§numeric expression>. 
\initials{LDF 2007.11.28.}

\LOG
\initials{LDF 2007.11.28.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable LEFT_PARENTHESIS numeric_expression@>@/ 
@=COMMA numeric_expression RIGHT_PARENTHESIS ASSIGN numeric_expression@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry && entry->object)
  {
     int status 
        = static_cast<Matrix*>(entry->object)->set_element(@=$3@>, 
                                                           @=$5@>, 
                                                           static_cast<void*>(&@=$8@>), 
                                                           Matrix::MATRIX_REAL_TYPE,
                                                           parameter); 
  }   

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) assignment --> matrix_variable LEFT_PARENTHESIS @>
@q ***** (5) numeric_expression COMMA numeric_expression     @>
@q ***** (5) RIGHT_PARENTHESIS ASSIGN complex_expression.    @>   

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{LEFT\_PARENTHESIS} \§numeric expression> \.{COMMA} \§numeric expression> 
\.{RIGHT\_PARENTHESIS} \.{ASSIGN} \§complex expression>. 
\initials{LDF 2007.12.18.}

\LOG
\initials{LDF 2007.12.18.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable LEFT_PARENTHESIS numeric_expression@>@/ 
@=COMMA numeric_expression RIGHT_PARENTHESIS ASSIGN complex_expression@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

#if (HAVE_LIBGSL & HAVE_GSL_GSL_COMPLEX_H)
  if (entry && entry->object)
  {

     Complex* c = static_cast<Complex*>(@=$8@>);

     int status 
        = static_cast<Matrix*>(entry->object)->set_element(@=$3@>, 
                                                           @=$5@>, 
                                                           &c->complex,
                                                           Matrix::MATRIX_COMPLEX_TYPE,
                                                           parameter); 
     delete c;
  }   
#endif 

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) Set matrix to identity matrix.@>
@*3 Set matrix to identity matrix.
\initials{LDF 2007.11.29.}

@q ***** (5) assignment --> matrix_variable ASSIGN IDENTITY_MATRIX.@>

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{ASSIGN} \.{IDENTITY\_MATRIX}.
\initials{LDF 2007.11.29.}

\LOG
\initials{LDF 2007.11.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable ASSIGN IDENTITY_MATRIX@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry && entry->object)
  {
     int status 
        = static_cast<Matrix*>(entry->object)->set_identity(parameter); 
  }   

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) Set matrix to zero matrix.@>
@*3 Set matrix to zero matrix.
\initials{LDF 2007.11.29.}

@q ***** (5) assignment --> matrix_variable ASSIGN ZERO_MATRIX.@>

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{ASSIGN} \.{ZERO\_MATRIX}.
\initials{LDF 2007.11.29.}

\LOG
\initials{LDF 2007.11.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable ASSIGN ZERO_MATRIX@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry && entry->object)
  {
     int status 
        = static_cast<Matrix*>(entry->object)->set_zero(parameter); 
  }   

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) Set all elements of |matrix| to 1.@>
@*3 Set all elements of {\bf matrix} to 1.
\initials{LDF 2007.11.29.}

@q ***** (5) assignment --> matrix_variable ASSIGN ONE_MATRIX.@>

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{ASSIGN} \.{ONE\_MATRIX}.
\initials{LDF 2007.11.29.}

\LOG
\initials{LDF 2007.11.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable ASSIGN ONE_MATRIX@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry && entry->object)
  {
     int status 
        = static_cast<Matrix*>(entry->object)->set_one(parameter); 
  }   

  @=$$@> = static_cast<void*>(0);

};

@q ***** (5) Set all elements of |matrix| to a single value.@>
@*3 Set all elements of {\bf matrix} to a single value.
\initials{LDF 2007.11.29.}

@q ***** (5) assignment --> matrix_variable ASSIGN numeric_expression.@>

@*4 \§assignment> $\longrightarrow$ \§matrix variable> 
\.{ASSIGN} \§numeric expression>.
\initials{LDF 2007.11.29.}

\LOG
\initials{LDF 2007.11.29.}
Added this rule.
\ENDLOG

@q ****** (6) Definition.@> 

@<Define rules@>= 
 
@=assignment: matrix_variable ASSIGN numeric_expression@>@/   
{

  Id_Map_Entry_Node entry = static_cast<Id_Map_Entry_Node>(@=$1@>);

  if (entry && entry->object)
  {
     int status 
        = static_cast<Matrix*>(entry->object)->set_all(@=$3@>, parameter); 
  }   

  @=$$@> = static_cast<void*>(0);

};

