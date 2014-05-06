### Make sure there is the latest version of GE for us to use
mydir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sh "$mydir/www/update_ge.sh"

### Run the app
cd "$mydir"
#rm -rf "$mydir/platforms/android"
phonegap run android