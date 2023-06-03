### ***Q. Configure a cronjob that runs 14:10 minutes and executes, logger"Target EX200" at the user Krish.***
### Answer :-

```
[root@localhost ~]# crontab -eu Krish

10 14 * * *logger"Target EX200"

[root@localhost ~]# crontab -l (check cronjob)

```
