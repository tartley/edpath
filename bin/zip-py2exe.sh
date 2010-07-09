VERSION=`cat edpath_package/__init__.py | grep VERSION | cut -f 2 -d "'"`
cd dist
zip -r edpath-windows-$VERSION.zip edpath-windows-$VERSION

