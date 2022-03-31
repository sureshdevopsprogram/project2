
# this is check the disk usage

 

$a='df-h | awk '{print$5}' | grep -v Use | cut -d "%" -f1 |sort -n |tail -1'

$b=90

if [ $a -eq $b ] 
then
	echo "disk space alert"

else 
	echo "all good"

fi
