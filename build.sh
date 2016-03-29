name=$1
builddir=build
! [ -d $builddir ] && mkdir $builddir
[ -z $name ] && name=$(basename `pwd`)
zip  "$builddir/$name.love" -x "$builddir/*" -x '.git*' -x 'vendor/*' -r *
