cd /home

#First Part of the question is simple
mkdir admins
groupadd admin
chown -R .admin admins/
chmod -R 760 admins/

#Second Part of the question is solved by enabling Sticky bit upon the G "group"
chmod -R g+s admins/
