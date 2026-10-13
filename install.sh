#!/bin/bash
function addtoSys(){
				sudo cp -r Anime /usr/share/sddm/themes/
				sudo sed -i "s/^Current=.*/Current=Anime/g" /etc/sddm.conf.d/theme.conf
				sudo sed -i "s/^Current=.*/Current=Anime/g" /etc/sddm.conf
				echo "Theme Installed successfully"
			}	
function setBackground(){
	printf "Select a Background : \n"
	options=("Shinobu")
	select opt in "${options[@]}";do
		case $opt in
			
			Shinobu)
				cp Asset/shinobu.png Anime/background.png
				addtoSys
				break
				;;											
			*)
				printf "[*]Please select an image "
				break
				;;
		esac
	done
}

setBackground			

#https://github.com/l1nkzz1 forked from https://github.com/shinas101
