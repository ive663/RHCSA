# <center> **Download, Install, Update, manage software packages** </center>
## Objectives :-
- Configuring yum locally
- installing software packages with yum  
- updating packages with yum
- Enabling and disabling software repositories

### Cofiguring yum
cofiguring yum using **config-manager** command
```
[root@localhost ~]# yum config-manager --add-repo (repo url or repo path)

we can configure repositories with dnf command also.

[root@localhost ~]# dnf config-manager --add-repo (repo path or url)
```

### Installing and removing software packages with yum.
**yum install PackagesName** obtains and install software packages.

```
[root@localhost ~]# yum install nmap (installs software called nmap)
```
**yum remove PackagesName** removes software packages.

```
[root@localhost ~]# yum remove nmap (removes software called nmap)
```

### Updating package with yum
**yum update PackageName** updates specific software
```
[root@localhost ~]# yum update httpd (here httpd is package name)
```

### Enabling and disabling software repositories
**yum config-manager** command used to enable or disable repos.

yum config-manager --enable (repo url or name) enables repository
```
First checkout which repo need to enable run following command

[root@localhost ~]# yum repolist all

[root@localhost ~]# yum config-manager --enable epel-testing-source
```

yum config-manager --disable (repo url or name) disable repository
```
[root@localhost ~]# yum config-manager --disable epel-testing-source
```

