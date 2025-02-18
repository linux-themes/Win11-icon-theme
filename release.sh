ROOT=$PWD
mkdir $ROOT/release

$PWD/install.sh -a -d $PWD/release # Build

cd $ROOT/release; tar -cJvf $ROOT/Win11.tar.xz *; # Compress all

for DIRECTORY in *; do tar -cJvf $DIRECTORY.tar.xz $DIRECTORY; done # Compress one 

mv $ROOT/Win11.tar.xz $ROOT/release 
