if [ "$1" = "" ]; then
	echo "*** ERROR: No directory defined."
	exit 1
fi
for d in "$@"
do
    rm -rf $d
done
