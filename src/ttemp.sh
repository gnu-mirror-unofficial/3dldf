#! /bin/bash

#### ttemp.sh
#### Created by Laurence D. Finston (LDF) Mon 06 Sep 2021 10:32:01 PM CEST

for i in center_finders_7*.eps 
do
    echo "$i"
    a=`basename -s ".eps" $i`
    echo "a == $a"
    convert $i $a.jpg
done

mv center_finders_7*.jpg ttemp/

exit 0

cp -f alhambra_207.mp alhambra_207.txt /home/laurence/3DLDF-3.0_web/3dldf/SRC_CODE
cp -f alhambra_207.pdf /home/laurence/3DLDF-3.0_web/3dldf/graphics

cd ~/3DLDF-3.0_web/3dldf/SRC_CODE/
cvs commit -m "Edited." alhambra_207.mp alhambra_207.txt

cd ~/3DLDF-3.0_web/3dldf/graphics/
cvs commit -m "Edited." alhambra_207.pdf

exit 0

#### The "files" clstsph1.txt and clstsph1_a4.txt in this directory are symbolic links to the 
#### corresponding .tex files (in this directory).  The latter therefore do not need to be copied 
#### explicitly to the *.txt files in the web pages directory.
#### LDF 2021.09.06.


cp -f clstsph3.pdf ~/3DLDF-3.0_web/3dldf/graphics/

cp -f clstsph3.ldf  clstsph3_sub.ldf clstsph3.aux astronmy3.lmc clstsph3.txt ~/3DLDF-3.0_web/3dldf/SRC_CODE/

cd ~/3DLDF-3.0_web/3dldf/graphics/
cvs commit -m "Edited." clstsph3.pdf

cd ~/3DLDF-3.0_web/3dldf/SRC_CODE/
cvs commit -m "Edited." clstsph3.ldf clstsph3_sub.ldf clstsph3.aux astronmy3.lmc clstsph3.txt

exit 0



A=`ls clstsph3*`

for i in $A
do
    echo "i == $i"
    B=`expr index "$i" "3"`
    echo "B == $B"
    C=`expr $B - 1`
    echo "C == $C"
    D=`expr substr $i 1 $C`
    echo "D == $D"
    E=`expr $B + 1`
    F=`expr substr $i $E 100`
    echo "F == $F"
    G="${D}4${F}"
    echo "G == $G"
    cp $i $G
done


exit 0


echo "Arg 1 == $1"

# cp small_rhombi.ldf small_rhombi.txt ~/3DLDF-3.0_web/3dldf/SRC_CODE/
# cp small_rhombi.pdf ~/3DLDF-3.0_web/3dldf/graphics

# cd ~/3DLDF-3.0_web/3dldf/

# if test -n "$1"
# then
#     echo "Arg 1 is non-empty.  Not committing."
# else
#     echo "Arg 1 is empty.  Committing."
#     cvs commit -m "Edited."
# fi

# exit 0 


cp -f clstsph1.pdf clstsph1_a4.pdf ~/3DLDF-3.0_web/3dldf/graphics/

cp -f clstsph1.ldf clstsph2.ldf clstsph1_sub.ldf clstsph1.aux astronmy.lmc clstsph1.txt clstsph1_a4.txt \
   ~/3DLDF-3.0_web/3dldf/SRC_CODE/

rm -f ~/ttemp/clstsph/*

cp -f clstsph1.ldf clstsph2.ldf clstsph1_sub.ldf clstsph1.aux astronmy.lmc clstsph1.txt clstsph1_a4.txt \
   clstsph1.pdf clstsph1_a4.pdf ~/ttemp/clstsph

cd ~/ttemp/

tar cvf clstsph.tar clstsph

gzip clstsph.tar

mv clstsph.tar.gz clstsph.tgz 

cp -f clstsph.tgz ~/3DLDF-3.0_web/3dldf/SRC_CODE/

cd ~/3DLDF-3.0_web/3dldf/

if test -n "$1"
then
    echo "Arg 1 is non-empty.  Not committing."
else
    echo "Arg 1 is empty.  Committing."
    cvs commit -m "Edited."
fi


#cvs commit -m "Minor corrections."

exit 0


#clstsph.tgz

## Local Variables:
## mode:shell-script
## abbrev-mode:t
## End:
