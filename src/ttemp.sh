#! /bin/bash

#### ttemp.sh

#### The "files" clstsph1.txt and clstsph1_a4.txt are symbolic links to the corresponding
#### .tex files.  The latter therefore do not need to be copied explicitly to the *.txt files in
#### the web pages directory.
#### LDF 2021.09.06.


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

exit 0


#clstsph.tgz
