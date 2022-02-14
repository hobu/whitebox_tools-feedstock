cargo build --release -v

mkdir -vp ${PREFIX}/bin
ls target/release
cp -v target/release/whitebox_tools ${PREFIX}/bin/ || exit 1;
chmod -v 755 ${PREFIX}/bin/whitebox_tools || exit 1;

cp $RECIPE_DIR/setup.py .
$PYTHON setup.py install --single-version-externally-managed --record=record.txt
