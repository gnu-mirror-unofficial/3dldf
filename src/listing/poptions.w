@q poptions.w @> 
@q Created by Laurence Finston (LDF) Fri Jul 20 15:16:48 CEST 2007  @>

@q * (0) Options.  @>
@** Options.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Created this file.
\ENDLOG 

@q ** (2) with_tolerance_optional.@> 
@*1 \§with tolerance optional>.
\initials{LDF 2007.07.15.}

\LOG
\initials{LDF 2007.07.15.}
Added this type declaration.

\initials{LDF 2007.07.27.}
Moved this section from \filename{pnumexpr.w} to this file 
(\filename{poptions.w}).
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <real_value> with_tolerance_optional@>@/

@q *** (3) with_tolerance_optional --> EMPTY.@> 
@*2 \§with tolerance optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.07.15.}

\LOG
\initials{LDF 2007.07.15.}
Added this rule.

\initials{LDF 2007.07.27.}
Now setting the value of the rule to -1 instead of |INVALID_REAL|.
\ENDLOG

@<Define rules@>= 
@=with_tolerance_optional: /* EMPTY */@>
{
    @=$$@> = -1;

};

@q *** (3) with_tolerance_optional --> WITH_TOLERANCE numeric_expression.@> 
@*2 \§with tolerance optional> $\longrightarrow$ \.{WITH\_TOLERANCE }
\§numeric expression>.
\initials{LDF 2007.07.15.}

\LOG
\initials{LDF 2007.07.15.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=with_tolerance_optional: WITH_TOLERANCE numeric_expression@>
{
    @=$$@> = @=$2@>;

};
  
@q ** (2) with_increment_optional.@> 
@*1 \§with increment optional>.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=
@=%type <real_value> with_increment_optional@>@/

@q *** (3) with_increment_optional --> EMPTY.@> 
@*2 \§with increment optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=with_increment_optional: /* EMPTY */@>
{
    @=$$@> = -1;

};

@q *** (3) with_increment_optional --> WITH_INCREMENT numeric_expression.@> 
@*2 \§with increment optional> $\longrightarrow$ \.{WITH\_INCREMENT }
\§numeric expression>.
\initials{LDF 2007.08.21.}

\LOG
\initials{LDF 2007.08.21.}
Added this rule.
\ENDLOG

@<Define rules@>= 
@=with_increment_optional: WITH_INCREMENT numeric_expression@>
{
    @=$$@> = @=$2@>;

};
  
@q ** (2) with_test_optional.@>  
@*1 \§with test optional>.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> with_test_optional@>

@q *** (3) with_test_optional:  EMPTY.@>  

@*2 \§with test optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_test_optional: /* EMPTY */@>@/
{
   @=$$@> = NULL_VALUE;
};

@q *** (3) with_test_optional: WITH_TEST.@>  

@*2 \§with test optional> $\longrightarrow$ \.{WITH\_TEST}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_test_optional: WITH_TEST@>@/
{
   @=$$@> = WITH_TEST;
};

@q *** (3) with_test_optional: WITH_NO_TEST.@>  

@*2 \§with test optional> $\longrightarrow$ \.{WITH\_NO\_TEST}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_test_optional: WITH_NO_TEST@>@/
{
   @=$$@> = WITH_NO_TEST;
};

@q ** (2) with_cull_optional.@>  
@*1 \§with cull optional>.
\initials{LDF 2007.07.27.}

\LOG
\initials{LDF 2007.07.27.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> with_cull_optional@>

@q *** (3) with_cull_optional:  EMPTY.@>  

@*2 \§with cull optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.07.27.}

\LOG
\initials{LDF 2007.07.27.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_cull_optional: /* EMPTY */@>@/
{
   @=$$@> = NULL_VALUE;
};

@q *** (3) with_cull_optional: WITH_CULL.@>  

@*2 \§with cull optional> $\longrightarrow$ \.{WITH\_CULL}.
\initials{LDF 2007.07.27.}

\LOG
\initials{LDF 2007.07.27.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_cull_optional: WITH_CULL@>@/
{
   @=$$@> = WITH_CULL;
};

@q *** (3) with_cull_optional: WITH_NO_CULL.@>  

@*2 \§with cull optional> $\longrightarrow$ \.{WITH\_NO\_CULL}.
\initials{LDF 2007.07.27.}

\LOG
\initials{LDF 2007.07.27.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_cull_optional: WITH_NO_CULL@>@/
{
   @=$$@> = WITH_NO_CULL;
};

@q ** (2) with_rectify_optional.@>  
@*1 \§with rectify optional>.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this type declaration.
\ENDLOG

@<Type declarations for non-terminal symbols@>=

@=%type <int_value> with_rectify_optional@>

@q *** (3) with_rectify_optional:  EMPTY.@>  

@*2 \§with rectify optional> $\longrightarrow$ \.{EMPTY}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_rectify_optional: /* EMPTY */@>@/
{
   @=$$@> = NULL_VALUE;
};

@q *** (3) with_rectify_optional: WITH_RECTIFY.@>  

@*2 \§with rectify optional> $\longrightarrow$ \.{WITH\_RECTIFY}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_rectify_optional: WITH_RECTIFY@>@/
{
   @=$$@> = WITH_RECTIFY;
};

@q *** (3) with_rectify_optional: WITH_NO_RECTIFY.@>  

@*2 \§with rectify optional> $\longrightarrow$ \.{WITH\_NO\_RECTIFY}.
\initials{LDF 2007.07.20.}

\LOG
\initials{LDF 2007.07.20.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=

@=with_rectify_optional: WITH_NO_RECTIFY@>@/
{
   @=$$@> = WITH_NO_RECTIFY;
};

@q * (0) @>


