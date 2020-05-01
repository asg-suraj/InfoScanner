#!/bin/sh
# This is a comment!

echo "InfoScanner Tool Developed by Suraj and Chinmay , With help of Sourabh sir, Pristine Infosolutions Pune\n\n"                                                            






echo "Hi there we got combination of some scanning tools\n"
echo "If you are running this tool fo first time on this system please run the install.sh file first\n"

echo "Enter the URL or IP"
read WEBSITE



cd


while :
do


echo "\n Enter your choice"
echo "\n 1. Inet whois information \n 2. Inic whois info \n 3. netcraft info \n 4. subdomain information \n 5. possible information leaks \n 6. scan for ssl vulnerablity \n 7. Exit "
  
  read INPUT_STRING
  case $INPUT_STRING in
	
	1)	cd /root/DMitry-1.3a
		dmitry -i -o info.out ${WEBSITE}
		continue
		;;
	
	2)	cd /root/DMitry-1.3a
		dmitry -w -o info.out ${WEBSITE}
		continue
		;;
	
	3)	cd /root/DMitry-1.3a
		dmitry -n -o info.out ${WEBSITE}
		continue
		;;

	4)	cd /root/Sublist3r
		python sublist3r.py -d ${WEBSITE}
		continue
		;;
	
	
	5)	cd /root/snitch
		python snitch.py -D all -U ${WEBSITE} P18
		continue
		;;


	6)	cd /root/a2sv
		python a2sv.py -t ${WEBSITE}
		continue
		;;


	7)	echo "\nSee you again!"
		break
		;;
	*)
		echo "\nSorry, please type valid key"
		continue
		;;
 esac
done
echo 
echo "That's all folks!"
