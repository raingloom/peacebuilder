name=$1
builddir=build
cd ../..
if [ -z $name ]; then
	name=$(basename `pwd`)
fi
zip  "$build/$name.zip" -x $build -x .git* -r -i .
