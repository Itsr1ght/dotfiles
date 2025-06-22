# goes to each folder and fetch the latest update for git  
update_git_folders()
{
    folders=$(ls)
    for i in $(echo "$folders" | sed 's/DELIMITER/REPLACING_DELIMITER/g');
	do
	    cd "$i"
	    gpl
	    cd ..
	done
}
