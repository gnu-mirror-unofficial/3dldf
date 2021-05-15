#! /usr/bin/bash

git add 3DLDF.texi ChangeLog ChangeLog.dev addfile.texi biblio.texi \
changes.texi circle.texi contrib.texi creatnew.texi cuboid.texi \
ellipse.texi fdl.texi future.texi glbcnvar.texi gsdlpt.texi \
gspaths.texi gspict.texi gsplane.texi gspoint.texi gssolfig.texi \
gstranpt.texi gstransf.texi instlrun.texi intersct.texi io.texi \
label.texi line.texi path.texi pattern.texi plane.texi point.texi \
polygon.texi polyhed.texi rcpcurve.texi rectang.texi regpolyg.texi \
shape.texi solfaced.texi solid.texi system.texi transfor.texi ttemp.sh \
ttemp.txt typeglb.texi using.texi utility.texi


exit 0



for i in example.[[:digit:]]*
do
   echo $i;
   s=${i:8}
   echo "mv $i example_$s.eps"
   mv $i example_$s.eps
done;    
	 
