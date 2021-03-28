@q reverse.w @> 
@q Created by Laurence Finston Thu Aug 16 12:56:37 CEST 2007  @>
     

@q * (0) Reverse Command.  @>
@** Reverse Command.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Created this file.  
\ENDLOG

@q * (1) command --> REVERSE boolean_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§boolean vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE boolean_vector_variable@>@/
{

   Scan_Parse::reverse_func<bool>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE string_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§string vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE string_vector_variable@>@/
{

   Scan_Parse::reverse_func<string>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE numeric_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§numeric vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE numeric_vector_variable@>@/
{

   Scan_Parse::reverse_func<real>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE ulong_long_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§ulong long vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE ulong_long_vector_variable@>@/
{

   Scan_Parse::reverse_func<unsigned long long>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE transform_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§transform vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE transform_vector_variable@>@/
{

   Scan_Parse::reverse_func<Transform>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE color_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§color vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE color_vector_variable@>@/
{

   Scan_Parse::reverse_func<Color>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE pen_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§pen vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE pen_vector_variable@>@/
{

   Scan_Parse::reverse_func<Pen>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE dash_pattern_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§dash pattern vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE dash_pattern_vector_variable@>@/
{

   Scan_Parse::reverse_func<Dash_Pattern>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE focus_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§focus vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE focus_vector_variable@>@/
{

   Scan_Parse::reverse_func<Focus>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE picture_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§picture vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE picture_vector_variable@>@/
{

   Scan_Parse::reverse_func<Picture>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE point_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§point vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE point_vector_variable@>@/
{

   Scan_Parse::reverse_func<Point>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE bool_point_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§bool point vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE bool_point_vector_variable@>@/
{

   Scan_Parse::reverse_func<Bool_Point>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE nurb_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§nurb vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE nurb_vector_variable@>@/
{

   Scan_Parse::reverse_func<Nurb>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE path_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§path vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE path_vector_variable@>@/
{

   Scan_Parse::reverse_func<Path>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE triangle_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§triangle vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE triangle_vector_variable@>@/
{

   Scan_Parse::reverse_func<Triangle>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE polygon_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§polygon vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE polygon_vector_variable@>@/
{

   Scan_Parse::reverse_func<Polygon>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE reg_polygon_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§reg polygon vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE reg_polygon_vector_variable@>@/
{

   Scan_Parse::reverse_func<Reg_Polygon>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE rectangle_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§rectangle vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE rectangle_vector_variable@>@/
{

   Scan_Parse::reverse_func<Rectangle>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE ellipse_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§ellipse vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE ellipse_vector_variable@>@/
{

   Scan_Parse::reverse_func<Ellipse>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE circle_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§circle vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE circle_vector_variable@>@/
{

   Scan_Parse::reverse_func<Circle>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE conic_section_lattice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§conic section lattice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE conic_section_lattice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Conic_Section_Lattice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE helix_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§helix vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE helix_vector_variable@>@/
{

   Scan_Parse::reverse_func<Helix>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE cuboid_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§cuboid vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE cuboid_vector_variable@>@/
{

   Scan_Parse::reverse_func<Cuboid>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE polyhedron_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§polyhedron vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE polyhedron_vector_variable@>@/
{

   Scan_Parse::reverse_func<Polyhedron>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE cone_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§cone vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE cone_vector_variable@>@/
{

   Scan_Parse::reverse_func<Cone>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE cylinder_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§cylinder vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE cylinder_vector_variable@>@/
{

   Scan_Parse::reverse_func<Cylinder>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE ellipsoid_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§ellipsoid vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE ellipsoid_vector_variable@>@/
{

   Scan_Parse::reverse_func<Ellipsoid>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE sphere_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§sphere vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE sphere_vector_variable@>@/
{

   Scan_Parse::reverse_func<Sphere>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE parabola_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§parabola vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE parabola_vector_variable@>@/
{

   Scan_Parse::reverse_func<Parabola>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE hyperbola_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§hyperbola vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE hyperbola_vector_variable@>@/
{

   Scan_Parse::reverse_func<Hyperbola>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE paraboloid_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§paraboloid vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE paraboloid_vector_variable@>@/
{

   Scan_Parse::reverse_func<Paraboloid>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE hyperboloid_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§hyperboloid vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE hyperboloid_vector_variable@>@/
{

   Scan_Parse::reverse_func<Hyperboloid>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE parabola_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§parabola slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE parabola_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Parabola_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE hyperbola_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§hyperbola slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE hyperbola_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Hyperbola_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE paraboloid_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§paraboloid slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE paraboloid_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Paraboloid_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE hyperboloid_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§hyperboloid slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE hyperboloid_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Hyperboloid_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE glyph_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§glyph vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE glyph_vector_variable@>@/
{

   Scan_Parse::reverse_func<Glyph>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE plane_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§plane vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE plane_vector_variable@>@/
{

   Scan_Parse::reverse_func<Plane>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE origami_figure_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§origami figure vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE origami_figure_vector_variable@>@/
{

   Scan_Parse::reverse_func<Origami_Figure>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE ellipse_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§ellipse slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE ellipse_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Ellipse_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE circle_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§circle slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE circle_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Circle_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE helix_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§helix slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE helix_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Helix_Slice>(@=$2@>, parameter);

};
@q * (1) command --> REVERSE polyhedron_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§polyhedron slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.
\ENDLOG

@q **** (4) Definition.@> 

@<Define rules@>=
@=command: REVERSE polyhedron_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Polyhedron_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE cone_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§cone slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE cone_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Cone_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE cylinder_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§cylinder slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE cylinder_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Cylinder_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE ellipsoid_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§ellipsoid slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE ellipsoid_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Ellipsoid_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE sphere_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§sphere slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE sphere_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Sphere_Slice>(@=$2@>, parameter);

};

@q * (1) command --> REVERSE glyph_slice_vector_variable.@> 
@* \§command> $\longrightarrow$ \.{REVERSE} 
\§glyph slice vector variable>.
\initials{LDF 2007.08.16.}

\LOG
\initials{LDF 2007.08.16.}
Added this rule.  It's currently commented-out.
\ENDLOG

@q **** (4) Definition.@> 

@<Garbage@>=
@=command: REVERSE glyph_slice_vector_variable@>@/
{

   Scan_Parse::reverse_func<Glyph_Slice>(@=$2@>, parameter);

};

