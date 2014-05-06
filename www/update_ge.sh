mydir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

rm -rf $mydir/Go-Everywhere

if [ !-z $GE ]
then
	echo "No GE variable set (should be set to location of local Go-Everywhere repo)"
	echo "Pulling from GIT instead..."
	git clone https://github.com/GoEverywhere/Go-Everywhere.git $mydir/Go-Everywhere
	echo "Done!"
else
	echo "Using local Go-Everywhere repo..."
	rsync -av --progress "$GE" "$mydir"
	echo "Done!"
fi