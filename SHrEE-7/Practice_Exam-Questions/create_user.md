### <center>**Add user Krish such that it's password not gonna expire.**
### Answer :-
```
[root@localhost ~]# useradd -h (get help to checkout options for password inactive period)

Graphical window appears 

select -f to option to decide password period.

[root@localhost ~]# useradd -f -1 Krish

here password expiry value is -1 which means not expiry period.
```
