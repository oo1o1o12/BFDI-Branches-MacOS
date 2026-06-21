clear
set -e

# check some things
if ! ping -c 1 -W 2 8.8.8.8 &> /dev/null; then
	echo "You'll need internet connection to use this script."
	exit 1
fi
# path stuff
printf "Enter the path to BFDI Branches: \n"
while true; do
	read -r choice
	choice="${choice//\\ / }"
	case "$choice" in
	"")
		echo "Enter a path:"
		;;
	*)
		if [ -d "$choice/Contents/Resources" ]; then
			cd "$choice/Contents/Resources"
			break
		else
			echo "The app doesn't exist at that location. \n Enter a path:"
		fi
	esac
done
if [ -f ".bfdibranches_tmp.pck" ]; then
	rm .bfdibranches_tmp.pck
fi
# godot pck files are cross-platform, only thing that's not is the executable, which is obvious
curl -o .bfdibranches_tmp.pck https://bfdibranches.com/bfdibranches.pck

if [ -f "BFDI Branches.pck" ]; then
	serversum=$(shasum -a 256 .bfdibranches_tmp.pck | cut -d' ' -f1)
	localsum=$(shasum -a 256 "BFDI Branches.pck" | cut -d' ' -f1)
	
	if [ "$serversum" = "$localsum" ]; then
		echo "It's already up to date."
		rm .bfdibranches_tmp.pck
	else
		mv .bfdibranches_tmp.pck "BFDI Branches.pck"
		echo "BFDI Branches has been updated."
	fi
else
	mv .bfdibranches_tmp.pck "BFDI Branches.pck"
	echo "The assets for the game have been installed."
fi