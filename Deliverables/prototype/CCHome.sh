# function to clear screen and display header
function displayHeader {
	clear
	echo "---------------------------------------"
	echo "-- DCS Internship Management System! --"
	echo "---------------------------------------"
	echo "--------- Course Co-Ordinator ---------"
	echo "---------------------------------------"
	echo
}

# display header
displayHeader

# display options
echo "1. Review adverts"
echo "2. Delete advert(s)"
echo "3. Logout"
echo 
echo -n "Select option: "

# read option
read input

if [ $input == "1" ]; then 
	bash ./reviewAdverts.sh
elif [ $input == "2" ]; then
    bash ./deleteAdverts.sh
elif [ $input == "3" ]; then
	displayHeader
	echo "Logging out..."
	echo
	sleep 2
	bash ./login.sh
else
	displayHeader
	echo "Incorrect option selected."
	echo "Please try again."
	echo
	sleep 2
	bash ./CCHome.sh
fi
