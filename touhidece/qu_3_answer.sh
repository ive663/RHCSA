#find the echo full path
which echo
#My output was /usr/bin/echo

#Open the Crontab file
vi /etc/crontab

#The formula to be added must be like this
23 14 * * * /usr/bin/echo "hello"
