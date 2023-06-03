#Create {dir} Directory
mkdir /opt/dir

#find files owned and copy at once
find / -user harry -type f -exec cp -p {} /opt/dir/ \;
