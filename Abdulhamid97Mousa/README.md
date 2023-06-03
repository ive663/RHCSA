Made by [Abdulhamid97Mousa](https://github.com/Abdulhamid97Mousa)
https://github.com/Abdulhamid97Mousa/RHCSA-EX200


![RHCSA](https://user-images.githubusercontent.com/80536675/222508192-136e187a-6db1-4298-ad99-7f300fd34ca6.jpg)


# Inspiration:
This repository is built to help you as beginner to Understand linux system administration, And walk you through RHCE_EX200 study Topics from setting up a lab to mastry in system administration, and ensure that you're ready for the RHCE EX200 exam.
This repo wasn't built by me, i just found the repo that someone has made and decided to add to it. Please if you star it please start his too.


# Redhat

- [RHCSA](#RHCSA)

## RHCSA

- [Understand and use essential tools](#Understand-and-use-essential-tools)
- [Create simple shell scripts](#Create-simple-shell-scripts)
- [Operate running systems](#Operate-running-systems)
- [Configure local storage](#Configure-local-storage)
- [Create and configure file systems](#Create-and-configure-file-systems)
- [Deploy, configure, and maintain systems](#Deploy-configure-and-maintain-systems)
- [Manage basic networking](#Manage-basic-networking)
- [Manage users and groups](#Manage-users-and-groups)
- [Manage security](#Manage-security)
- [Manage containers](#Manage-containers)
- [Exercises](#Exercises)

### Understand and use essential tools

1. Programmable completion for bash is provided in the bash-completion module. To install this module:

    ```
    sudo dnf install bash-completion
    ```

1. Access a shell prompt and issue commands with correct syntax

    * Common commands and their options, as well as vim usage, are shown below:
        | Command        | Options                                         | Description                                     |
        |----------------|-------------------------------------------------|-------------------------------------------------|
        | ls             | -h (human readable) <br>  -a (show hidden) <br> -l (detailed) <br> -lt (newist file first) <br> -ltr (oldest file first)                                            | List of files and directories                   |
        | pwd            |                                                 | Print working directory                         |
        | cd             | ~ (home) <br> / (root) <br> - (switch) <br> .. (parent)   | Change directories                    |
        | who            | whoami (show user)                              | Show logged in users                            |
        | what           | w (shorthand)                                   | Show logged in users with more detail           |
        | uptime         |                                                 | Show system uptime                              |
        | logname        |                                                 | Show real username (if using su)                |
        | id             |                                                 | Shows a user's UID, username, GUID etc.         |
        | groups         |                                                 | Lists groups for users                          |
        | last           |                                                 | List all user logins and system reboots         |
        | lastb          |                                                 | List all failed login attempts                  |
        | lastlog        |                                                 | List recent logins                              |
        | uname          | -a (details)                                    | System information                              |
        | hostnamectl    | set-hostname                                    | View hostname                                   |
        | clear          |                                                 | Clear the screen                                |
        | timedatectl    | set-time <br> list-timezones <br> set-timezone <br>  | Display system time                        |
        | date           | --set                                           | View system date                                |
        | which          |                                                 | Show path to a command                          |
        | wc             |                                                 | Word count                                      |
        | lspci          | -m (legible)                                    | PCI buses details                               |
        | lsusb          |                                                 | USB buses details                               |
        | lscpu          |                                                 | Processor details                               |
        | gzip/bzip2     | -d (uncompress)                                 | Compress files                                  |
        | gunzip/bunzip2 |                                                 | Uncompress files                                |
        | tar            | -c (create) <br> -f (specifies name) <br> -v (verbose) <br> -r (append to existing) <br> -x (extract) <br> -z (compress with gzip) <br> -j (compress with bzip2)    | Archive file                                    |
        | star           |                                                 | Enhanced tar                                    |
        | man            | -k (keyword) <br> -f (short description)        | Manual                                          |
        | mandb          |                                                 | Update the mandb                                |
        | ssh            | -l (as different user)                          | SSH to another Linux system                     |
        | tty            |                                                 | Display terminal name                           |
        | whatis         |                                                 | Search the command in the mandb for description |
        | info           |                                                 | More detailed than man                          |
        | apropos        |                                                 | Search the command in the mandb                 |
        | grep           | -n (show line numbers) <br> -v (pattern exclusion) <br> -i (case insensitive) <br> -E (use alternation) <br> -w (word match) | Find text  |
        
	
        | Key                      | Description                     |
        |--------------------------|---------------------------------|
        | i                        | Change to insert mode           |
        | h, j, k, l               | Move left, down, up, right      |
        | w, b, e, ge              | Move word at a time             |
        | n[action]                | Do n times                      |
        | x                        | Remove a character              |
        | a                        | Append                          |
        | f[char]                  | Move to next given char in line |
        | F[char]                  | Move to previous char in line   |
        | ; and ,                  | Repeat last f or F              |
        | /yourtext and then: n, N | Search text                     |
        | d[movement]              | Delete by giving movement       |
        | r[char]                  | Replaces character below cursor |
        | 0, $                     | Move to start/end of line       |
        | o, O                     | Add new line                    |
        | %                        | Goto corresponding parentheses  |
        | ci[movement]             | Change inside of given movement |
        | D                        | Delete to end of line           |
        | S                        | Clear current line              |
        | gg / G                   | Move to start / end of buffer   |
        | yy                       | Copy current line               |
        | p                        | Paste copied text after cursor  |
	
    
1. Use input-output redirection (>, >>, |, 2>, etc.)
    * The default locations for input, output, and error are referred to as standard input (stdin), standard output (stdout), and standard error (stderr).
    
    * Standard input redirection can be done to have a command read the required information from an alternative source, such as a file, instead of the keyboard. For example:
    
        ```
	
        cat < /etc/cron.allow 
	
        ```

    * Standard output redirection sends the output generated by a command to an alternative destination, such as a file. For example:
    
        ```
	
        ll > ll.out
	
        ```

    * Standard error redirection sends the output generated by a command to an alternative destination, such as a file. For example: 
    
        ```
	
        echo test 2> outerr.out
	
        ```

    * Instead of > to create or overwrite, >> can be used to append to a file.

    * To redirect both stdout and stderror to a file:
    
        ```
	
        echo test >> result.txt 2>&1
	
        ```

1. Use grep and regular expressions to analyse text
    * The grep command is used to find text. For example:
        ```shell
        grep user100 /etc/passwd
        ```    
    * Common regular expression parameters are shown below:
        | Symbol | Description                                                        |
        |--------|--------------------------------------------------------------------|
        | ^      | Beginning of a line or word                                        |
        | $      | End of a line or word                                              |
        | \|     | Or                                                                 |
        | .      | Any character                                                      |
        | *      | Any number of any character                                        |
        | ?      | Exactly one character                                              |
        | []     | Range of characters                                                |
        | \      | Escape character                                                   |
        | ''     | Mask meaning of enclosed special characters                        |
        | ""     | Mask meaning of all enclosed special characters except \, $ and '' |
    
1. Access remote systems using SSH

    * Secure Shell (SSH) provides a secure mechanism for data transmission between source and destination systems over IP networks.
    
    * SSH uses encryption and performs data integrity checks on transmitted data.
    
    * The version of SSH used is defined in `/etc/ssh/sshd_config`.
    
    * The most common authentication methods are Password-Based Authentication and Public/Private Key-Based Authentication.
    
    * The command *ssh-keygen* is used to generate keys and place them in the .ssh directory, and the command *ssh-copy-id* is used to copy the public key file to your account on the remote server.
    
    * TCP Wrappers is a host-based mechanism that is used to limit access to wrappers-aware TCP services on the system by inbound clients. 2 files `/etc/hosts.allow` and `/etc/hosts.deny` are used to control access. The .allow file is referenced before the .deny file. The format of the files is \<name of service process>:\<user@source>.
    
    * All messages related to TCP Wrappers are logged to the `/var/log/secure` file.
    
    * To login using SSH: 
        ```shell
        ssh user@host
        ``` 

1. Log in and switch users in multiuser targets

    * A user can switch to another user using the *su* command. The *-i* option ensures that the target users login scripts are run:
        ```shell
        sudo -i -u targetUser
        ``` 

    * To run a command as root without switching:
        ```shell
        sudo -c
        ``` 

    * The configuration for which users can run which commands using sudo is defined in the `/etc/sudoers` file. The visudo command is used to edit the sudoers file. The sudo command logs successful authentication and command data to `/var/log/secure`.

1. Archive, compress, unpack, and decompress files using tar, star, gzip, and bzip2

    * To archive using tar:
        ```shell
        tar cvf myTar.tar /home
        ``` 

    * To unpack using tar:
        ```shell
        tar xvf myTar.tar
        ``` 

    * To compress using tar and gzip:
        ```shell
        tar cvfz myTar.tar /home
        ``` 

    * To compress using tar and bzip2:
        ```shell
        tar cvfj myTar.tar /home
        ``` 

    * To decompress using tar and gzip:
        ```shell
        tar xvfz myTar.tar /home
        ``` 

    * To decompress using tar and bzip2:
        ```shell
        tar xvfj myTar.tar /home
        ``` 

    * The star command is an enhanced version of tar. It also supports SELinux security contexts and extended file attributes. The options are like tar.


1. Create and edit text files

    * To create an empty file:
        ```shell
        touch file
        cat > newfile
        ``` 

    * To create a file using vim:
        ```shell
        vi file
        ``` 

1. Create, delete, copy, and move files and directories

    * To create a directory:
        ```shell
        mkdir directory
        ``` 

    * To move a file or directory:
        ```shell
        mv item1 item2
        ```     

    * To copy a file or directory:
        ```shell
        cp item1 item2
        ```     

    * To remove a file:
        ```shell
        rm file1
        ```

    * To remove an empty directory:
        ```shell
        rmdir directory
        ```

    * To remove a non-empty directory:
        ```shell
        rm -r directory
        ```

1. Create hard and soft links

    * A soft link associates one file with another. If the original file is removed the soft link will point to nothing. To create a soft link to file1:
        ```shell
        ln -s file1 softlink
        ``` 

    * A hard link associates multiple files to the same inode making them indistinguishable. If the original file is removed, you will still have access to the data through the linked file. To create a soft link to file1:
        ```shell
        ln file1 hardlink
        ``` 

1. List, set, and change standard ugo/rwx permissions

    * Permissions are set for the user, group, and others. User is the owner of the file or the directory, group is a set of users with identical access defined in `/etc/group`, and others are all other users. The types of permission are read, write, and execute.
    
    * Permission combinations are shown below:
        | Octal Value | Binary Notation | Symbolic Notation | Explanation                           |
        |-------------|-----------------|-------------------|---------------------------------------|
        | 0           | 000             | ---               | No permissions.                       |
        | 1           | 001             | --x               | Execute permission only.              |
        | 2           | 010             | -w-               | Write permission only.                |
        | 3           | 011             | -wx               | Write and execute permissions.        |
        | 4           | 100             | r--               | Read permission only.                 |
        | 5           | 101             | r-x               | Read and execute permissions.         |
        | 6           | 110             | rw-               | Read and write permissions.           |
        | 7           | 111             | rwx               | Read, write, and execute permissions. |

    * To grant the owner, group, and others all permissions using the *chmod* command:
        ```shell
        chmod 777 file1
        ```

    * The default permissions are calculated based on the umask. The default umask for root is 0022 and 0002 for regular users (the leading 0 has no significance). The pre-defined initial permissions are 666 for files and 777 for directories. The umask is subtracted from these initial permissions to obtain the default permissions. To change the default umask:
        ```shell
        umask 027
        ```

    * Every file and directory has an owner. By default, the creator assumes ownership. The owner's group is assigned to a file or directory. To change the ownership of a file or directory:
        ```shell
        useradd user100
        chown user100 item1
        chgrp user100 item1
        ```
    
        ```shell
        chown user100:user100 item1
        ```
    * Note that the -R option must be used to recursively change all files in a directory.

1. Locate, read, and use system documentation including man, info, and files in `/usr/share/doc`

    * The *man* command can be used to view help for a command. To search for a command based on a keyword the *apropros* command or *man* with the -k option can be used. The *mandb* command is used to build the man database.

    * To search for a command based on a keyword in occurring in its man page:
        ```shell
        man -K <keyword>
        ```

    * The *whatis* command can be used to search for a command in the man database for a short description.

    * The *info* command provides more detailed information than the *man* command. 

    * The `/usr/share/doc` directory contains documentation for all installed packages under sub-directories that match package names followed by their version.

### Create simple shell scripts

1. Conditionally execute code (use of: if, test, [], etc.)

	* An example using if and test statements is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#ping -c 1 $1
		#if test "$?" -eq "0"; then
		#	echo "$1 IP is reachable"
		#else
		#	echo "$1 IP is not reachable"
		#fi
		#exit
        #####
        ```

	* Input arguments can be passed in after the script name, with e.g. 1 being the first input argument. The *$?* term expands the exit status of the most recently executed command. When using *echo* the *-e* argument can be used to print characters such as new lines.

	* An example using a case statement is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#now=$(date + "%a")
		#case $now in
		#	Mon)
		#		echo "Full Backup";
		#		;;
		#	Tue|Wed|Thu|Fri)
		#		echo "Partial Backup";
		#		;;
		#	Sat|Sun)
		#		echo "No Backup";
		#		;;
		#	*)	;;
		#esac
		#exit
        #####
        ```

	* An example using [] is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#ping -c 1 $1
		#if ["$?" -eq "0"]; then
		#	echo "$1 IP is reachable"
		#else
		#	echo "$1 IP is not reachable"
		#fi
		#exit
        #####
        ```

1. Use Looping constructs (for, etc.) to process file, command line input

	* An example of a for loop is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#for file in ./*.log
		#do
		#	mv "${file}" "${file}".txt
		#done
		#exit
        #####
        ```

	* An example of a while loop is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#input = "/home/kafka.log"
		#while IFS = read -r line
		#do
		#	echo "$line"
		#done < "$input"
		#exit
        #####
        ```

1. Process script inputs ($1, $2, etc.)

	* The first variable passed into a script can be accessed with *$1*.

1. Processing output of shell commands within a script

	* An example is shown with *example.sh* below:
	    ```shell
		# contents of example.sh
        #####
        ##!/bin/bash
		#echo "Hello World!" >> example-`date +%Y%m%d-%H%M`.log
		#exit
        #####
        ```

1. Processing shell command exit codes

	* The *$?* term expands the exit status of the most recently executed command.

### Operate running systems

1. Boot, reboot, and shut down a system normally

    * The RHEL boot process occurs when the system is powered up or reset and lasts until all enabled services are started and a login prompt appears at the screen. The login process consists of 4 steps:

        * The firmware is the Basic Input Output System (BIOS) or Unified Extensible Firmware Interface (UEFI) code that is stored in flash memory on the motherboard. The first thing it does is run the power-on-self-test (POST) to initialise the system hardware components. It also installs appropriate drivers for the video hardware and displays system messages to the screen. It scans the available storage devices to locate a boot device (GRUB2 on RHEL), and then loads it into memory and passes control to it.

        * The boot loader presents a menu with a list of bootable kernels available on the system. After a pre-defined amount of time it boots the default kernel. GRUB2 searches for the kernel in the `/boot` file system. It then extracts the kernel code into memory and loads it based on the configuration in `/boot/grub2/grub.cfg`. Note that for UEFI systems, GRUB2 looks in `/boot/efi` instead and loads based on configuration in `/boot/efi/EFI/redhat/grub.efi`. Once the kernel is loaded, GRUB2 passes control to it.

        * The kernel loads the initial RAM disk (initrd) image from the `/boot` file system. This acts as a temporary file system. The kernel then loads necessary modules from initrd to allow access to the physical disks and the partitions and file systems within. It also loads any drivers required to support the boot process. Later, the kernel unmounts initrd and mounts the actual root file system.

        * The kernel continues the boot process. *systemd* is the default system initialisation scheme. It starts all enabled user space system and network services.

    * The *shutdown* command is used to halt, power off, or reboot the system gracefully. This command broadcasts a warning message to all logged-in users, disables further user logins, waits for the specified time, and then stops the service and shuts to the system down to the specified target state. 
    
    * To shut down the system now:
        ```shell
        shutdown -P now
        ```

    * To halt the system now:
        ```shell
        shutdown -H now
        ```

    * To reboot the system now:
        ```shell
        shutdown -r now
        ```

    * To shut down the system after 5 minutes:
        ```shell
        shutdown -P 5
        ```

1. Boot systems into different targets manually

    * *systemd* is the default system initialisation mechanism in RHEL 8. It is the first process that starts at boot and it is the last process that terminates at shutdown.

    * *Units* are systemd objects that are used for organising boot and maintenance tasks, such as hardware initialisation, socket creation, file system mounts, and service start-ups. Unit configuration is stored in their respective configuration files, which are auto generated from other configurations, created dynamically from the system state, produced at runtime, or user developed. Units are in one of several operational states, including active, inactive, in the process of being activated or deactivated, and failed. Units can be enabled or disabled.

    * Units have a name and a type, which are encoded in files of the form unitname.type. Units can be viewed using the *systemctl* command. A target is a logical collection of units. They are a special systemd unit type with the .target file extension.

    * *systemctl* is the primary command for interaction with systemd. 

    * To boot into a custom target the *e* key can be pressed at the GRUB2 menu, and the desired target specified using systemd.unit. After editing press *ctrl+x* to boot into the target state. To boot into the emergency target: 
        ```shell
        systemd.unit=emergency.target
        ```

    * To boot into the rescue target:
        ```shell
        systemd.unit=rescue.target
        ```

    * Run *systemctl reboot* after you are done to reboot the system.

1. Interrupt the boot process in order to gain access to a system

    * Press *e* at the GRUB2 menu and add "rd.break" in place of "ro crash". This boot option tells the boot sequence to stop while the system is still using initramfs so that we can access the emergency shell.
    
    * Press *ctrl+x* to reboot.
    
    * Run the following command to remount the `/sysroot` directory with rw privileges:
        ```shell
        mount -o remount,rw /sysroot
        ```
    *  Run the following command to change the root directory to `/sysroot`:
        ```shell
        chroot /sysroot
        ```
    *  Run *passwd* command to change the root password.
    
    *  Run the following commands to create an empty, hidden file to instruct the system to perform SELinux relabelling after the next boot:
        ```shell
        touch /.autorelabel
        exit
        exit
        ```

1. Identify CPU/memory intensive processes and kill processes

    * A process is a unit for provisioning system resources. A process is created in memory in its own address space when a program, application, or command is initiated. Processes are organised in a hierarchical fashion. Each process has a parent process that spawns it and may have one or many child processes. Each process is assigned a unique identification number, known as the Process Identifier (PID). When a process completes its lifecycle or is terminated, this event is reported back to its parent process, and all the resources provisioned to it are then freed and the PID is removed. Processes spawned at system boot are called daemons. Many of these sit in memory and wait for an event to trigger a request to use their services.

    * There are 5 basic process states:
        * Running: The process is being executed by the CPU.
        
        * Sleeping: The process is waiting for input from a user or another process.
        
        * Waiting: The process has received the input it was waiting for and is now ready to run when its turn arrives.
        
        * Stopped: The process is halted and will not run even when its turn arrives, unless a signal is sent to change its behaviour.
        
        * Zombie: The process is dead. Its entry is retained until the parent process permits it to die.

    * The *ps* and *top* commands can be used to view running processes.
    
    * The *pidof* or *pgrep* commands can be used to view the PID associated with a process name.
    
    * The *ps* command can be used to view the processes associated with a particular user. An example is shown below:
        ```shell
        ps -U root
        ```

    * To kill a process the *kill* or *pkill* commands can be used. Ordinary users can kill processes they own, while the *root* user can kill any process. The *kill* command requires a PID and the *pkill* command requires a process name. An example is shown below:
        ```shell
        pkill crond
        kill `pidof crond`
        ```

    * The list of signals accessible by *kill* can be seen by passing the *-l* option. The default signal is SIGTERM which signals for a process to terminate in an orderly fashion.

    * To use the SIGKILL signal:
        ```shell
        pkill -9 crond
        kill -9 `pgrep crond`
        ```

    * The *killall* command can be used to terminate all processes that match a specified criterion.
    
1. Adjust process scheduling

    * The priority of a process ranges from -20 (highest) to +19 (lowest). A higher niceness lowers the execution priority of a process and a lower niceness increases it. A child process inherits the niceness of its parent process.

    * To run a command with a lower (+2) priority:
        ```shell
        nice -2 top
        ```

    * To run a command with a higher (-2) priority:
        ```shell
        nice --2 top
        ```

    * To renice a running process:
        ```shell
        renice 5 1919
        ```
    
1. Manage tuning profiles

    * Tuned is a service which monitors the system and optimises the performance of the system for different use cases. There are pre-defined tuned profiles available in the `/usr/lib/tuned` directory. New profiles are created in the `/etc/tuned` directory. The *tuned-adm* command allows you to interact with the Tuned service.

    * To install and start the tuned service:
        ```shell
        yum install tuned
        systemctl enable --now tuned
        ```
 
    * To check the currently active profile:
        ```shell
        tuned-adm active
        ```

    * To check the recommended profile:
        ```shell
        tuned-adm recommend
        ```

    * To change the active profile:
        ```shell
        tuned-adm profile <profile-name>
        ```

    * To create a customised profile and set it as active:
        ```shell   
        mkdir /etc/tuned/<profile-name>
        vi /etc/tuned/<profile-name>/<profile-name.conf>
        # customise as required
        tuned-adm profile <profile-name>
        systmctl restart tuned.service
        ```

1. Locate and interpret system log files and journals

    * In RHEL logs capture messages generated by the kernel, daemons, commands, user activities, applications, and other events. The daemon that is responsible for system logging is called *rsyslogd*. The configuration file for *rsyslogd* is in the `/etc/rsyslog.conf` file. As defined in this configuration file, the default repository for most logs is the `/var/log` directory.

    * The below commands can be used to start and stop the daemon:
        ```shell   
        systemctl stop rsyslog
        systemctl start rsyslog
        ```
    * A script called *logrotate* in `/etc/cron.daily` invokes the *logrotate* command to rotate log files as per the configuration file.

    * The boot log file is available at `/var/log/boot.log` and contains logs generated during system start-up. The system log file is available in `/var/log/messages` and is the default location for storing most system activities.

1. Preserve system journals

    * In addition to system logging, the *journald* daemon (which is an element of *systemd*) also collects and manages log messages from the kernel and daemon processes. It also captures system logs and RAM disk messages, and any alerts generated during the early boot stage. It stores these messages in binary format in files called *journals* in the `/var/run/journal` directory. These files are structured and indexed for faster and easier searches and can be viewed and managed using the *journalctl* command.

    * By default, journals are stored temporarily in the `/run/log/journal` directory. This is a memory-based virtual file system and does not persist across reboots. To have journal files stored persistently in `/var/log/journal` the following commands can be run:
        ```shell   
        mkdir -p /var/log/journal
        systemctl restart systemd-journald
        ```

1. Start, stop, and check the status of network services

    * The *sshd* daemon manages ssh connections to the server. To check the status of this service:
        ```shell   
        systemctl is-active sshd        
        systemctl status sshd
        ```

    * To start and stop this service:
        ```shell   
        systemctl start sshd
        systemctl stop sshd
        ```

    * To enable or disable this service:
        ```shell      
        systemctl enable sshd
        systemctl disable sshd
        ```

    * To completely disable the service (i.e. to avoid loading the service at all):
        ```shell   
        systemctl mask sshd
        systemctl unmask sshd
        ```

1. Securely transfer files between systems

    * To transfer a file using the Secure Copy Protocol (SCP):
        ```shell   
        scp <file> <user>@<ip>:<file>
        ```

    * To transfer a directory:
        ```shell   
        scp /etc/ssh/* <user>@<ip>:/tmp
        ```

    * The direction of transfer can also be reversed:
        ```shell   
        scp <user>@<ip>:/tmp/sshd_config sshd_config_external
        ```

### Configure local storage

1. List, create, delete partitions on MBR and GPT disks

    * Data is stored on disk drives that are logically divided into partitions. A partition can exist on a portion of a disk, an entire disk, or across multiple disks. Each partition can contain a file system, raw data space, swap space, or dump space.

    * A disk in RHEL can be divided into several partitions. This partition information is stored on the disk in a small region, which is read by the operating system at boot time. This is known as the Master Boot Record (MBR) on BIOS-based systems, and GUID Partition Table (GPT) on UEFI-based systems. At system boot, the BIOS/UEFI scans all storage devices, detects the presence of MBR/GPT, identifies the boot disks, loads the boot loader program in memory from the default boot disk, executes the boot code to read the partition table and identify the `/boot` partition, and continues with the boot process by loading the kernel in the memory and passing control over to it.

    * MBR allows the creation of only up to 4 primary partitions on a single disk, with the option of using one of the 4 partitions as an extended partition to hold an arbitrary number of logical partitions. MBR also lacks addressing space beyond 2TB due to its 32-bit nature and the disk sector size of 512-byte that it uses. MBR is also non-redundant, so a system becomes unbootable if it becomes corrupted somehow.

    * GPT is a newer 64-bit partitioning standard developed and integrated to UEFI firmware. GPT allows for 128 partitions, use of disks much larger than 2TB, and redundant locations for the storage of partition information. GPT also allows a BIOS-based system to boot from a GPT disk, using the boot loader program stored in a protective MBR at the first disk sector.

    * To list the mount points, size, and available space:
        ```shell   
        df -h
        ```

    * In RHEL block devices are an abstraction for certain hardware, such hard disks. The *blkid* command lists all block devices. The *lsblk* command lists more details about block devices.

    * To list all disks and partitions:
        ```shell   
        fdisk -l # MBR
        gdisk -l # GPT
        ```

    * For MBR based partitions the *fdisk* utility can be used to create and delete partitions. To make a change to a disk:
        ```shell   
        fdisk <disk>
        ```

    * For GPT based partitions the *gdisk* utility can be used to create and delete partitions. To make a change to a disk:
        ```shell   
        gdisk <disk>
        ```

    * To inform the OS of partition table changes:
        ```shell   
        partprobe
        ```
    
1. Create and remove physical volumes

    * Logical Volume Manager (LVM) is used to provide an abstraction layer between the physical storage and the file system. This enables the file system to be resized, to span across multiple physical disks, use random disk space, etc. One or more partitions or disks (physical volumes) can form a logical container (volume group), which is then divided into logical partitions (called logical volumes). These are further divided into physical extents (PEs) and logical extents (LEs).

    * A physical volume (PV) is created when a block storage device is brought under LVM control after going through the initialisation process. This process constructs LVM data structures on the device, including a label on the second sector and metadata information. The label includes a UUID, device size, and pointers to the locations of data and metadata areas.

    * A volume group (VG) is created when at least one physical volume is added to it. The space from all physical volumes in a volume group is aggregated to form one large pool of storage, which is then used to build one or more logical volumes. LVM writes metadata information for the volume group on each physical volume that is added to it.

    * To view physical volumes:
        ```shell   
        pvs
        ```

    * To view physical volumes with additional details:
        ```shell   
        pvdisplay
        ```

    * To initialise a disk or partition for use by LVM:
        ```shell   
        pvcreate <disk>
        ```

    * To remove a physical volume from a disk:
        ```shell   
        pvremove <disk>
        ```

1. Assign physical volumes to volume groups

    * To view volume groups:
        ```shell   
        vgs
        ```

    * To view volume groups with additional details:
        ```shell   
        vgdisplay
        ```

    * To create a volume group:
        ```shell   
        vgcreate <name> <disk>
        ```

    * To extend an existing volume group:
        ```shell   
        vgextend <name> <disk>
        ```

    * To remove a disk from a volume group:
        ```shell   
        vgreduce <name> <disk>
        ```

    * To remove the last disk from a volume group:
        ```shell   
        vgremove <name> <disk>
        ```

1. Create and delete logical volumes

    * To view logical volumes:
        ```shell   
        lvs
        ```

    * To view logical volumes with additional details:
        ```shell   
        lvdisplay
        ```

    * To create a logical volume in vg1 named lv1 and with 4GB of space:
        ```shell   
        lvcreate -L 4G -n lv1 vg1 
        ```

    * To extend the logical volume by 1GB:
        ```shell   
        lvextend -L+1G <lvpath>
        ```

    * To extend the logical volume by 1GB:
        ```shell   
        lvextend -L+1G <lvpath>
        ```

    * To reduce the size for a logical volume by 1GB:
        ```shell   
        lvreduce -L-1G <lvpath>
        ```

    * To remove a logical volume:
        ```shell   
        umount <mountpoint>
        lvremove <lvpath>
        ```

1. Configure systems to mount file systems at boot by Universally Unique ID (UUID) or label
    
    * The `/etc/fstab` file is a system configuration file that lists all available disks, disk partitions and their options. Each file system is described on a separate line. The `/etc/fstab` file is used by the *mount* command, which reads the file to determine which options should be used when mounting the specific device. A file system can be added to this file so that it is mounted on boot automatically.
    
    * The *e2label* command can be used to change the label on ext file systems. This can then be used instead of the UUID.
    
1. Add new partitions and logical volumes, and swap to a system non-destructively

    * Virtual memory is equal to RAM plus swap space. A swap partition is a standard disk partition that is designated as swap space by the *mkswap* command. A file can also be used as swap space but that is not recommended.

    * To create a swap:
        ```shell   
        mkswap <device>
        ```

    * To enable a swap:
        ```shell   
        swapon <device>
        ```

    * To check the status of swaps:
        ```shell   
        swapon -s
        ```

    * To disable a swap:
        ```shell   
        swapoff <device>
        ```

    * The `/etc/fstab` file will need a new entry for the swap so that it is created persistently.

### Create and configure file systems

1. Create, mount, unmount, and use vfat, ext4, and xfs file systems

    * A file system is a logical container that is used to store files and directories. Each file system must be connected to the root of the directory hierarchy to be accessible. This is typically done automatically on system boot but can be done manually as well. Each file system can be mounted or unmounted using the UUID associated with it or by using a label that can be assigned to it. Mounting is the process of attaching an additional filesystem, which resides on a CDROM, Hard Disk Drive (HDD) or other storage device, to the currently accessible filesystem of a computer. 

    * Each file system is created in a separate partition or logical volume. A typical RHEL system has numerous file systems. During OS installation, the `/` and `/boot` file systems are created by default. Typical additional file systems created during installation include `/home`, `/opt`, `/tmp`, `/usr` and `/var`.

    * File systems supported in RHEL are categorised as disk-based, network-based, and memory-based. Disk-based and network-based file systems are stored persistently, while data in memory-based systems is lost at system reboot. The different file systems are shown below:

    | File System          | Type    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
    |----------------------|---------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
    | ext2                 | Disk    | The second generation of the extended file system. The first generation is no longer supported. ext2 is deprecated in RHEL and will be removed in a future RHEL release.                                                                                                                                                                                                                                                                                                                                        |
    | ext3                 | Disk    | The third generation of the extended file system. It supports metadata journaling for faster recovery, superior reliability, file systems up to 16TB, files up to 2TB, and up to 32,000 sub-directories. ext3 writes each metadata update in its entirety to the journal after it has been completed. The system looks in the file system journal following a reboot after a system crash has occurred, and recovers the file system rapidly using the updated structural information stored in its journal. |
    | ext4                 | Disk    | The fourth generation of the extended file system. It supports file systems up to 1EB, files up to 16TB, an unlimited number of sub-directories, metadata and quota journaling, and extended user attributes.                                                                                                                                                                                                                                                                                                   |
    | xfs                  | Disk    | XFS is a highly scalable and high-performance 64-bit file system.  It supports metadata journaling for faster crash recovery, online defragmentation, expansion quota journaling, and extended user attributes. It supports file systems and files of sizes up to 8EB. It is the default file system in RHEL 8.                                                                                                                                                                                                  |
    | btrfs                | Disk    | B-tree file system that supports a system size of 50TB. It supports more files, larger files, and larger volumes than ext4 and supports snapshotting and compression capabilities.                                                                                                                                                                                                                                                                                                                              |
    | vfat                 | Disk    | This is used for post-Windows 95 file system format on hard disks, USB drives, and floppy disks.                                                                                                                                                                                                                                                                                                                                                                                                                |
    | iso9660              | Disk    | This is used for CD/DVD-based optical file systems.                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
    | BIOS Boot            | Disk    | A very small partition required for booting a device with a GUID partition table (GPT) on a BIOS system.                                                                                                                                                                                                                                                                                                                                                                                                        |
    | EFI System Partition | Disk    | A small partition required for booting a device with a GUID partition table (GPT) on a UEFI system.                                                                                                                                                                                                                                                                                                                                                                                                             |
    | NFS                  | Network | A directory or file system shared over the network for access by other Linux systems.                                                                                                                                                                                                                                                                                                                                                                                                                           |
    | AutoFS               | Network | An NFS file system set to mount and unmount automatically on a remote system.                                                                                                                                                                                                                                                                                                                                                                                                                                   |
    | CIFS                 | Network | Common Internet File System (aka Samba). A directory or file system shared over the network for access by Windows and other Linux systems.                                                                                                                                                                                                                                                                                                                                                                    |

    * The *mount* command is used to attach a file system to a desired point in the directory hierarchy to make it accessible to users and applications. This point is referred to as the *mount point*, which is essentially an empty directory created solely for this point. The *mount* command requires the absolute pathname (or its UUID or label) to the block device containing the file system, and a mount point name to attach it to the directory tree. The *mount* command adds an entry to the `/proc/mounts` file and instructs the kernel to add the entry to the `/proc/mounts` file as well after a file system has been successfully mounted.

    * The opposite of the *mount* command is *unmount*, which is used to detach a file system from the directory hierarchy and make it inaccessible to users and applications.

    * To create a vfat file system:
        ```shell   
        mkfs.vfat <path>
        ```

    * To mount a vfat file system:
        ```shell   
        mount <path> /mnt
        ```

     * To unmount a vfat file system:
        ```shell   
        umount <path> /mnt
        ```

     * To check a vfat file system:
        ```shell   
        fsck.vfat <path>
        ```

    * To create an ext4 file system:
        ```shell   
        mkfs.ext4 <path>
        ```

    * To mount an ext4 file system:
        ```shell   
        mount <path> /mnt
        ```

     * To unmount an ext4 file system:
        ```shell   
        umount <path> /mnt
        ```

     * To check an ext4 file system:
        ```shell   
        fsck <path>
        ```

     * To get additional details about an ext4 file system:
        ```shell   
        dumpe2fs <path>
        ```

    * To create a xfs file system:
        ```shell   
        mkfs.xfs <path>
        ```

    * To mount a xfs file system:
        ```shell   
        mount <path> /mnt
        ```

     * To unmount a xfs file system:
        ```shell   
        umount <path> /mnt
        ```

     * To check a xfs file system:
        ```shell   
        xfs_repair <path>
        ```

     * To get additional details about an xfs file system:
        ```shell   
        xfs_info <path>
        ```

    * The path is the device name or a regular file that shall contain the file system.

1. Mount and unmount network file systems using NFS

     * To confirm nfs-utils is installed:
        ```shell   
        dnf install nfs-utils
        ```

     * To mount the network file system:
        ```shell   
        mount -t nfs 10.0.2.5:/home/nfs-share /mnt
        ```

     * Alternatively the following can be run after adding the entry to `/etc/fstab`:
        ```shell   
        mount -a 
        ```

     * Using AutoFS with NFS:
        ```shell
		# on the server
        systemctl status 
		mkdir /common
		echo "/common *(rw)" >> /etc/exports
		systemctl restart nfs-server.service

		# on the client
		dnf install autofs -y
		mkdir /autodir
		vi /etc/auto.master
		# add line
		#/- /etc/auto.master.d/auto.dir
		vi /etc/auto.master.d/auto.dir
		# add line
		#/autodir 172.25.1.4:/common
		systemctl restart autofs & systemctl enable autofs

		# on the server
		touch /common/test
		
		# on the client
		ls /autodir # confirm test file is created
        ``` 

1. Extend existing logical volumes

     * To extend the logical volume size by 2GB:
        ```shell   
        lvextend -L+2G /dev/vg1/lv1
        lvdisplay # confirm changes
        ```

     * To extend the file system:
        ```shell   
        df -Th # confirm file system type
        resize2fs /dev/vg1/lvl1 # for ext3 or ext4
        xfs_growfs /mnt # for xfs
        ```

1. Create and configure set-GID directories for collaboration

     * SUID (meaning set user id) is used to specify that a user can run an executable file with effective permissions of the file owner.  This is primarily used to elevate the privileges of the current user. When a user executes the file, the operating system will execute as the file owner. Instead of the normal *x* which represents execute permissions, an *s* will be visible. To set the SUID:
        ```shell
        chmod u+s <filename>
        ```
     
     * SGID (meaning set group id) is used to specify that a user can run an executable file with effective permissions of the owning group.  When a user executes the file, the operating system will execute as the owning group. Instead of the normal x which represents execute permissions, an s will be visible. To set the SGID:
        ```shell
        chmod g+s <filename>
        ```
    
     * To create a group and shared directory:
        ```shell
        groupadd accounts
        mkdir -p /home/shared/accounts
        chown nobody:accounts /home/shared/accounts
        chmod g+s /home/shared/accounts
        chmod 070 /home/shared/accounts
        ```

     * When using SGID on a directory all files that are created in the directory will be owned by the group of the directory as opposed to the group of the owner.

     * If the sticky bit is set on a directory, the files in that directory can only be removed by the owner. A typical use case is for the `/tmp` directory. It can be written to by any user, but other users cannot delete the files of others. To set the sticky bit:
        ```shell
        chmod +t <directory>
        ```

    * The SUID, SGID and sticky bit can also be set with number notation. The standard number (rwx) is prepended with 4 for SUID, 2 for SGID, and 1 for the sticky bit.

    * To remove special permissions the *-* flag is used instead of the *+* flag.
     
1. Configure disk compression

    * The Virtual Data Optimiser (VDO) provides data reduction in the form of deduplication, compression, and thin provisioning.

    * To install vdo:
        ```shell
        dnf install vdo kmod-kvdo
        ```

    * To create the vdo:
        ```shell
        vdo create --name=vdo1 --device=/dev/sdb --vdoLogicalSize=30G --writePolicy=async
        ```

    * To create and mount the file system:
        ```shell
        mkfs.xfs /dev/mapper/vdo1
        mount /dev/mapper/vdo1 /mnt
        ```

1. Manage layered storage

    * Stratis is a storage management solution introduced in RHEL 8 that allows the configuration of advanced storage features such as pool-based management, thin provisioning, file system snapshots and monitoring.

    * To install stratis:
        ```shell
        dnf install stratisd stratis-cli
        systemctl start stratisd
        ```

    * To confirm there is no file system on the disk to be used:
        ```shell
        lsblk
        blkid -p /dev/sdb
        ```

    * If there is a file system remove it using:
        ```shell
        wipefs -a /dev/sdb
        ```

    * To create a stratis pool and confirm:
        ```shell
        stratis pool create strat1 /dev/sdb
        stratis pool list
        ```

    * To create a file system and confirm:
        ```shell
        stratis fs create strat1 fs1
        stratis fs list
        ```

    * To mount the file system and confirm:
        ```shell
        mount /stratis/strat1/fs1 /mnt
        df -h
        # add to /etc/fstab to make it persistent
        ```

    * To add a disk to the stratis pool and confirm:
        ```shell
        stratis pool add-data strat1 /dev/sdc
        stratis pool list
        ```

    * To create a snapshot and confirm:
        ```shell
        stratis fs snapshot strat1 fs1 snapshot1
        stratis filesystem list strat1
        ```

    * To mount a snapshot:
        ```shell
        unmount /stratis/strat1/fs1
        mount /stratis/strat1/snapshot1 /mnt
        ```

    * To destroy a snapshot and confirm:
        ```shell
        unmount /stratis/strat1/snapshot1
        stratis filesystem destroy strat1 snapshot1
        stratis filesystem list
        ```

    * To remove a stratis filesystem and pool and confirm:
        ```shell
        stratis filesystem destroy strat1 fs1
        stratis filesystem list
        stratis pool destroy strat1
        stratis pool list
        ```

1. Diagnose and correct file permission problems

    * File permissions can be modified using *chmod* and *setfacl*.
    
### Deploy, configure, and maintain systems

1. Schedule tasks using at and cron

    * Job scheduling and execution is handled by the *atd* and *crond* daemons. While *atd* manages jobs scheduled to run once in the future, *crond* is responsible for running jobs repetitively at pre-specified times. At start-up, *crond* reads schedules in files located in the `/var/spool/cron` and `/etc/cron.d` directories, and loads them in memory for later execution.

    * There are 4 files that control permissions for setting scheduled jobs. These are *at.allow*, *at.deny*, *cron.allow* and *cron.deny*. These files are in the `/etc` directory. The syntax of the files is identical, with each file taking 1 username per line. If no files exist, then no users are permitted. By default, the *deny* files exist and are empty, and the *allow* files do not exist. This opens up full access to using both tools for all users.

    * All activities involving *atd* and *crond* are logged to the `/var/log/cron` file.

    * The *at* command is used to schedule one-time execution of a program by the *atd* daemon. All submitted jobs are stored in the `/var/spool/at` directory.

    * To schedule a job using *at* the below syntax is used:
        ```shell
        at 11:30pm 6/30/15
        ```

    * The commands to execute are defined in the terminal, press *ctrl+d* when finished. The added job can be viewed with *at* and can be removed with the *-d* option.

    * A shell script can also be provided:
        ```shell
        at -f ~/script1.sh 11:30pm 6/30/15
        ```

    * The `/etc/crontab` file has the following columns:
        * 1: Minutes of hour (0-59), with multiple comma separated values, or * to represent every minute.
        * 2: Hours of day (0-23), with multiple comma separated values, or * to represent every hour.
        * 3: Days of month (1-31), with multiple comma separated values, or * to represent every day.
        * 4: Month of year (1-12, jan-dec), with multiple comma separated values, or * to represent every month.
        * 5: Day of week (0-6, sun-sat), with multiple comma separated values, or * to represent every day.
        * 6: Full path name of the command or script to be executed, along with any arguments.
        
    * Step values can be used with */2 meaning every 2nd minute.
    
    * The *crontab* command can be used to edit the file. Common options are *e* (edit), *l* (view), *r* (remove):
        ```shell
        crontab -e
        ```

1. Start and stop services and configure services to start automatically at boot

    * To check the status of a service:
        ```shell
        systemctl status <service>
        ```

    * To start a service:
        ```shell
        systemctl start <service>
        ```

    * To stop a service:
        ```shell
        systemctl stop <service>
        ```

    * To make a service reload its configuration:
        ```shell
        systemctl reload <service>
        ```

    * To make a service reload its configuration or restart if it can't reload:
        ```shell
        systemctl reload-or-restart <service>
        ```

    * To make a service start on boot:
        ```shell
        systemctl enable <service>
        ```

    * To stop a service starting on boot:
        ```shell
        systemctl disable <service>
        ```

    * To check if a service is enabled:
        ```shell
        systemctl is-enabled <service>
        ```

    * To check if a service has failed:
        ```shell
        systemctl is-failed <service>
        ```

    * To view the configuration file for a service:
        ```shell
        systemctl cat /usr/lib/sysdtemd/system/<service>
        ```

   * To view the dependencies for a service:
        ```shell
        systemctl list-dependencies <service>
        ```

   * To stop a service from being run by anyone but the system and from being started on boot:
        ```shell
        systemctl mask <service>
        ```

   * To remove a mask:
        ```shell
        systemctl unmask <service>
        ```

1. Configure systems to boot into a specific target automatically

   * To get the default target:
        ```shell
        systemctl get-default
        ```

   * To list available targets:
        ```shell
        systemctl list-units --type target --all
        ```

   * To change the default target:
        ```shell
        systemctl set-default <target>
        ```

    * The change will take affect after a reboot.

1. Configure time service clients

    * To print the date:
        ```shell
        date +%d%m%y-%H%M%S
        ```

    * To set the system clock as per the hardware clock:
        ```shell
        hwclock -s
        ```

    * To set the hardware clock as per the system clock:
        ```shell
        hwclock -w
        ```

    * The *timedatectl* command can also be used to view the date and time.

    * To change the date or time:
        ```shell
        timedatectl set-time 2020-03-18
        timedatectl set-time 22:43:00
        ```

    * To view a list of time zones:
        ```shell
        timedatectl list-timezones
        ```

    * To change the time zone:
        ```shell
        timedatectl set-timezone <timezone>
        ```

    * To enable NTP:
        ```shell
        timedatectl set-ntp yes
        ```

    * To start the *chronyd* service:
        ```shell
        systemctl start chronyd
        ```

1. Install and update software packages from Red Hat Network, a remote repository, or from the local file system

    * The .rpm extension is a format for files that are manipulated by the Redhat Package Manager (RPM) package management system. RHEL 8 provides tools for the installation and administration of RPM packages. A package is a group of files organised in a directory structure and metadata that makes up a software application.

    * An RPM package name follows the below format:
        ```shell
        openssl-1.0.1e-34.el7.x86_64.rpm
        # package name = openssl
        # package version = 1.0.1e
        # package release = 34
        # RHEL version = el7
        # processor architecture = x86_64
        # extension = .rpm
        ```

    * The *subscription-manager* command can be used to link a Red Hat subscription to a system.

    * The *dnf* command is the front-end to *rpm* and is the preferred tool for package management. The *yum* command has been superseded by *dnf* in RHEL 8. It requires that the system has access to a software repository. The primary benefit of *dnf* is that it automatically resolves dependencies by downloading and installing any additional required packages.

    * To list enabled and disabled repositories:
        ```shell
        dnf repolist all
        dnf repoinfo
        ```
    
    * To search for a package:
        ```shell
        dnf search <package>
        dnf list <package>
        ```
    
    * To view more information about a particular package:
        ```shell
        dnf info <package>
        ```

    * To install a package:
        ```shell
        dnf install <package>
        ```

    * To remove a package:
        ```shell
        dnf remove <package>
        ```

    * To find a package from a file:
        ```shell
        dnf provides <path>
        ```

    * To install a package locally:
        ```shell
        dnf localinstall <path>
        ```

    * To view available groups:
        ```shell
        dnf groups list
        ```

    * To install a group (e.g. System Tools):
        ```shell
        dnf group "System Tools"
        ```

    * To remove a group (e.g. System Tools):
        ```shell
        dnf group remove "System Tools"
        ```

    * To see the history of installations using *dnf*:
        ```shell
        dnf history list
        ```

    * To undo a particular installation (e.g. ID=22):
        ```shell
        dnf history undo 22
        ```

    * To redo a particular installation (e.g. ID=22):
        ```shell
        dnf history redo 22
        ```

    * To add a repository using the dnf config manager:
        ```shell
        dnf config-manager --add-repo <url>
        ```

    * To enable a repository using the dnf config manager:
        ```shell
        dnf config-manager --enablerepo <repository>
        ```

    * To disable a repository using the dnf config manager:
        ```shell
        dnf config-manager --disablerepo <repository>
        ```

    * To create a repository:
        ```shell
        dnf install createrepo
        mkdir <path>
        createrepo --<name> <path>
        yum-config-manager --add-repo file://<path>
        ```

1. Work with package module streams

    * RHEL 8 introduced the concept of Application Streams. Components made available as Application Streams can be packaged as modules or RPM packages and are delivered through the AppStream repository in RHEL 8. Module streams represent versions of the Application Stream components. Only one module stream can be active at a particular time, but it allows multiple different versions to be available in the same dnf repository.
    
    * To view modules:
        ```shell
        dnf module list
        ```

    * To get information about a module: 
        ```shell
        dnf module info --profile <module-name>
        ```

    * To install a module: 
        ```shell
        dnf module install <module-name>
        ```

    * To remove a module: 
        ```shell
        dnf module remove <module-name>
        ```

    * To reset a module after removing it: 
        ```shell
        dnf module reset <module-name>
        ```

    * To be specific about the module installation:
        ```shell
        dnf module install <module-name>:<version>/<profile>
        ```

    * To check the version of a module:
        ```shell
        <module-name> -v
        ```

1. Modify the system bootloader

    * The GRUB2 configuration can be edited directly on the boot screen. The configuration can also be edited using the command line.

    * To view the grub2 commands: 
        ```shell
        grub2
        ```

    * To make a change to the configuration: 
        ```shell
        vi /etc/default/grub
        # Change a value
        grub2-mkconfig -o /boot/grub2/grub.cfg
        # View changes
        vi /boot/grub2/grub.cfg
        ```

### Manage basic networking

1. Configure IPv4 and IPv6 addresses

    * The format of an IPv4 address is a set of 4 8-bit integers that gives a 32-bit IP address.  The format of an IPv6 is a set of 8 16-bit hexadecimal numbers that gives a 128-bit IP address.

    * The *nmcli* command is used to configure networking using the NetworkManager service. This command is used to create, display, edit, delete, activate, and deactivate network connections. Each network device corresponds to a Network Manager device.

    * Using nmcli with the connection option lists the available connection profiles in NetworkManager.

    * The *ip* command can also be used for network configuration. The main difference between ip and nmcli is that changes made with the ip command are not persistent.
    
    * To view system IP addresses:
        ```shell
        ip addr
        ```

    * To show the current connections:
        ```shell
        nmcli connection show
        ```

    * Using nmcli with the device option lists the available network devices in the system.

    * To view the current network device status and details:
        ```shell
        nmcli device status
        nmcli device show
        ```

    * To add an ethernet IPv4 connection:
        ```shell
        nmcli connection add con-name <name> ifname <name> type ethernet ip4 <address> gw4 <address>
        ```

    * To manually modify a connection:
        ```shell
        nmcli connection modify <name> ipv4.addresses <address>
        nmcli connection modify <name> ipv4.method manual
        ```

    * To delete a connection:
        ```shell
        nmcli connection delete <name>
        ```

    * To activate a connection:
        ```shell
        nmcli connection up <name>
        ```

    * To deactivate a connection:
        ```shell
        nmcli connection down <name>
        ```

    * To check the DNS servers that are being used:
        ```shell
        cat /etc/resolv.conf
        ```

    * To change the DNS server being used:
        ```shell
        nmcli con mod <name> ipv4.dns <dns>
        systemctl restart NetworkManager.service
        ```
   
1. Configure hostname resolution

    * To lookup the IP address based on a host name the *host* or *nslookup* commands can be used.

    * The `/etc/hosts` file is like a local DNS. The `/etc/nsswitch.conf` file controls the order that resources are checked for resolution. 

    * To lookup the hostname:
        ```shell
        hostname -s # short
        hostname -f # fully qualified domain name
        ```

    * The hostname file is in `/etc/hostname`. To refresh any changes run the *hostnamectl* command.

1. Configure network services to start automatically at boot

    * To install a service and make it start automatically at boot:
        ```shell
        dnf install httpd
        systemctl enable httpd
        ```
    
    * To set a connection to be enabled on boot:
        ```shell
        nmcli connection modify eth0 connection.autoconnect yes
        ```

1. Restrict network access using firewall-cmd/firewall

	* Netfilter is a framework provided by the Linux kernel that provides functions for packet filtering. In RHEL 7 and earlier iptables was the default way of configuring Netfilter. Disadvantages of ipables were that a separate version (ip6tables) was required for ipv6, and that the user interface is not very user friendly.

    * The default firewall system in RHEL 8 is *firewalld*. Firewalld is a zone-based firewall. Each zone can be associated with one or more network interfaces, and each zone can be configured to accept or deny services and ports. The *firewall-cmd* command is the command line client for firewalld.

    * To check firewall zones:
        ```shell
        firewall-cmd --get-zones
        ```

    * To list configuration for a zone:
        ```shell
        firewall-cmd --zone work --list-all
        ```

    * To create a new zone:
        ```shell
        firewall-cmd --new-zone servers --permanent
        ```

    * To reload firewall-cmd configuration:
        ```shell
        firewall-cmd --reload
        ```

    * To add a service to a zone:
        ```shell
        firewall-cmd --zone servers --add-service=ssh --permanent
        ```

    * To add an interface to a zone:
        ```shell
        firewall-cmd --change-interface=enp0s8 --zone=servers --permanent
        ```

    * To get active zones:
        ```shell
        firewall-cmd --get-active-zones
        ```

    * To set a default zone:
        ```shell
        firewall-cmd --set-default-zone=servers
        ```

    * To check the services allowed for a zone:
        ```shell
        firewall-cmd --get-services
        ```

    * To add a port to a zone:
        ```shell
        firewall-cmd --add-port 8080/tcp --permanent --zone servers
        ```

    * To remove a service from a zone:
        ```shell
        firewall-cmd --remove-service https --permanent --zone servers
        ```

    * To remove a port from a zone:
        ```shell
        firewall-cmd --remove-port 8080/tcp --permanent --zone servers
        ```

### Manage users and groups

1. Create, delete, and modify local user accounts

    * RHEL 8 supports three user account types: root, normal and service. The root user has full access to all services and administrative functions. A normal user can run applications and programs that they are authorised to execute. Service accounts are responsible for taking care of the installed services.

    * The `/etc/passwd` file contains vital user login data.

    * The `/etc/shadow` file is readable only by the root user and contains user authentication information. Each row in the file corresponds to one entry in the passwd file. The password expiry settings are defined in the `/etc/login.defs` file. The `/etc/defaults/useradd` file contains defaults for the *useradd* command.

    * The `/etc/group` file contains the group information. Each row in the file stores one group entry.

    * The `/etc/gshadow` file stores encrypted group passwords. Each row in the file corresponds to one entry in the group file.

    * Due to manual modification, inconsistencies may arise between the above four authentication files. The *pwck* command is used to check for inconsistencies.

    * The *vipw* and *vigr* commands are used to modify the *passwd* and *group* files, respectively. These commands disable write access to these files while the privileged user is making the modifications.

    * To create a user:
        ```shell
        useradd user1
        ```
    
    * To check that the user has been created:
        ```shell
        cat /etc/group | grep user1
        ```

    * To specify the UID and GID at user creation:
        ```shell
        useradd -u 1010 -g 1005 user1
        ```

    * To create a user and add them to a group:
        ```shell
        useradd -G IT user2
        ```

	* Note that *-G* is a secondary group, and *-g* is the primary group. The primary group is the group that the operating system assigns to files to which a user belongs. A secondary group is one or more other groups to which a user also belongs. 

    * To delete a user:
        ```shell
        userdel user1
        ```

    * To modify a user:
        ```shell 
        usermod -l user5 user1 # note that home directory will remain as user1
        ```

    * To add a user but not give access to the shell:
        ```shell 
        useradd -s /sbin/nologin user
        ```

1. Change passwords and adjust password aging for local user accounts

    * To change the password for a user:
        ```shell 
        passwd user1
        ```

    * To step through password aging information the *chage* command can be used without any options.

    * To view user password expiry information:
        ```shell 
        chage -l user1
        ```

    * To set the password expiry for a user 30 days from now:
        ```shell 
        chage -M 30 user1
        ```

    * To set the password expiry date:
        ```shell 
        chage -E 2021-01-01 user1
        ```

    * To set the password to never expire:
        ```shell 
        chage -E -1 user1
        ```

1. Create, delete, and modify local groups and group memberships

    * To create a group:
        ```shell 
        groupadd IT
        ```

    * To create a group with a specific GID:
        ```shell 
        groupadd -g 3032
        ```

    * To delete a group:
        ```shell 
        groupdel IT
        ```

    * To modify the name of a group:
        ```shell 
        groupmod -n IT-Support IT
        ```

    * To modify the GID of a group:
        ```shell 
        groupmod -g 3033 IT-Support
        ```

    * To add a user to a group:
        ```shell 
        groupmod -aG IT-Support user1
        ```

    * To view the members of a group:
        ```shell 
        groupmems -l -g IT-Support
        ```

    * To remove a user from a group:
        ```shell 
        gpasswd -d user1 IT-Support
        ```

1. Configure superuser access

    * To view the sudoers file:
        ```shell 
        visudo /etc/sudoers
        ```

    * Members of the wheel group can use sudo on all commands. To add a user to the wheel group:
        ```shell 
        sudo usermod -aG wheel user1
        ```

    * To allow an individual user sudo access to specific commands:
        ```shell
        visudo /etc/sudoers
        user2 ALL=(root) /bin/ls, /bin/df -h, /bin/date
        ```

### Manage security

1. Configure firewall settings using firewall-cmd/firewalld

    * Network settings such as masquerading and IP forwarding can also be configured in the firewall-config GUI application. To install this application:
        ```shell
        dnf install firewall-config
        ```

    * To set port forwarding in the kernel setting:
        ```shell
        vi /etc/sysctl.conf
        # add line
        net.ipv4.ip_forward=1
        # save file
        sysctl -p
        ```

1. Create and use file access control lists

    * To give a user read and write access to a file using an access control list:
        ```shell
        setfacl -m u:user1:rw- testFile
        getfacl testFile
        ```

    * To restrict a user from accessing a file using an access control list:
        ```shell
        setfacl -m u:user1:000 testFile
        getfacl testFile
        ```

    * To remove an access control list for a user:
        ```shell
        setfacl -x u:user1 testFile
        getfacl testFile
        ```

    * To give a group read and execute access to a directory recursively using an access control list:
        ```shell
        setfacl -R -m g:IT-Support:r-x testDirectory
        getfacl testFile
        ```

    * To remove an access control list for a group:
        ```shell
        setfacl -x g:IT-Support testDirectory
        getfacl testFile
        ```

1. Configure key-based authentication for SSH

    * To generate an id_rsa and id_rsa.pub files:
        ```shell
        ssh-keygen
        ```
    * To enable ssh for a user:
        ```shell
        touch authorized_keys
        echo "publicKey" > /home/new_user/.ssh/authorized_keys
        ```

    * To copy the public key from server1 to server2:
        ```shell
        ssh-copy-id -i ~/.ssh/id_rsa.pub server2
        cat ~/.ssh/known_hosts # validate from server1
        ```

1. Set enforcing and permissive modes for SELinux

    * Security Enhanced Linux (SELinux) is an implementation of Mandatory Access Control (MAC) architecture developed by the U.S National Security Agency (NSA). MAC provides an added layer of protection beyond the standard Linux Discretionary Access Control (DAC), which includes the traditional file and directory permissions, ACL settings, setuid/setgid bit settings, su/sudo privileges etc.

    * MAC controls are fine-grained; they protect other services in the event one of the services is negotiated. MAC uses a set of defined authorisation rules called policy to examine security attributes associated with subjects and objects when a subject tries to access an object and decides whether to permit this access attempt. SELinux decisions are stored in a special cache referred to as Access Vector Cache (AVC).

    * When an application or process makes a request to access an object, SELinux checks with the AVC, where permissions are cached for subjects and objects. If a decision is unable to be made, it sends the request to the security server. The security server checks for the security context of the app or process and the object. Security context is applied from the SELinux policy database. 

    * To check the SELinux status:
        ```shell
        getenforce
        sestatus
        ```

    * To put SELinux into permissive mode modify the `/etc/selinux/config` file as per the below and reboot:
        ```shell
        SELINUX=permissive
        ```

    * Messages logged from SELinux are available in `/var/log/messages`.

1. List and identify SELinux file and process context

    * To view the SELinux contexts for files:
        ```shell
        ls -Z
        ```

    * To view the contexts for a user:
        ```shell
        id -Z
        ```
    * The contexts shown follow the user:role:type:level syntax. The SELinux user is mapped to a Linux user using the SELinux policy. The role is an intermediary between domains and SELinux users. The type defines a domain for processes, and a type for files. The level is used for Multi-Category Security (MCS) and Multi-Level Security (MLS).

    * To view the processes for a user:
        ```shell
        ps -Z # ps -Zaux to see additional information
        ```

1. Restore default file contexts

    * To view the SELinux contexts for files:
        ```shell
        chcon unconfined:u:object_r:tmp_t:s0
        ```

    * To restore the SELinux contexts for a file:
        ```shell
        restorecon file.txt
        ```

    * To restore the SELinux contexts recursively for a directory:
        ```shell
        restorecon -R directory
        ```

1. Use Boolean settings to modify system SELinux settings

    * SELinux has many contexts and policies already defined. Booleans within SELinux allow common rules to be turned on and off.

    * To check a SELinux Boolean setting:  
        ```shell
        getsebool -a | grep virtualbox
        ```

    * To set a SELinux Boolean setting permanently:  
        ```shell
       setsebool -P use_virtualbox on
        ```

1. Diagnose and address routine SELinux policy violations

    * The SELinux Administration tool is a graphical tool that enables many configuration and management operations to be performed. To install and run the tool:
       ```shell
       yum install setools-gui
       yum install policycoreutils-gui
       system-config-selinux
       ```

    * SELinux alerts are written to `/var/log/audit/audit.log` if the *auditd* daemon is running, or to the `/var/log/messages` file via the *rsyslog* daemon in the absence of *auditd*.

    * A GUI called the SELinux Troubleshooter can be accessed using the *sealert* command. This allows SELinux denial messages to be analysed and provides recommendations on how to fix issues.

### Manage containers

1. Find and retrieve container images from a remote registry

	* A container is used for running multiple isolated applications on the same hardware. Unlike a virtual machine, containers share the host systems operating system. This is more lightweight but a little less flexible.

	* Podman is a container engine developed by Redhat. Podman is an alternative to the well-known container engine Docker. It is used to directly manage pods and container images. The Podman Command Line Interface (CLI) uses the same commands as the Docker CLI. Docker is not officially supported in RHEL 8.
	
	* To search for an image in a remote repository and download it:
        ```shell
        dnf install podman -y
        podman search httpd # note that docker.io/library/httpd has 3000+ stars
        podman pull docker.io/library/httpd
        ```

1. Inspect container images

	* To view images after they have been downloaded:
	    ```shell
        podman images
        ```

	* To inspect an image using Podman:
        ```shell
        podman inspect -l # -l gets the latest container
        ```

	* To inspect an image in a remote registry using Skopeo:
        ```shell
        dnf install skopeo -y
		skopeo inspect docker://registry.fedoraproject.org/fedora:latest
        ```

1. Perform container management using commands such as podman and skopeo

	* The man page for Podman and bash-completion can be used to provide more details on the usage of Podman.

	* To view the logs for a container:
        ```shell
        podman logs -l
        ```

	* To view the pids for a container:
        ```shell
        podman top -l
        ```

1. Perform basic container management such as running, starting, stopping, and listing running containers

	* To start, stop and remove a container:
        ```shell
		podman run -dt -p 8080:80/tcp docker.io/library/httpd # redirect requests on 8080 host port to 80 container port
	    podman ps -a # view container details, use -a to see all
	    # check using 127.0.0.1:8080 on a browser
	    podman stop af1fc4ca0253 # container ID from podman ps -a
	    podman rm af1fc4ca0253
        ```

1. Run a service inside a container

	* A Dockerfile can be used to create a custom container:
        ```shell
        sudo setsebool -P container_manage_cgroup on
		vi Dockerfile
		# contents of Dockerfile
        #####
        #FROM registry.access.redhat.com/ubi8/ubi-init
		#RUN yum -y install httpd; yum clean all; systemctl enable httpd;
		#RUN echo "Successful Web Server Test" > /var/www/html/index.html
		#RUN mkdir /etc/systemd/system/httpd.service.d/; echo -e '[Service]\nRestart=always' > /etc/systemd/system/httpd.service.d/httpd.conf
		#EXPOSE 80
        #####
		podman build -t mysysd .
		podman run -d --name=mysysd_run -p 80:80 mysysd
		podman ps # confirm that container is running
        ```

	* Note that the SELinux Boolean referred to above can be found using:
	    ```shell
		getsebool -a | grep "container"
        ```

	* Note that the registry above is the Podman Universal Base Image (UBI) for RHEL 8.

1. Configure a container to start automatically as a systemd service

	* Podman was not originally designed to bring up an entire Linux system or manage services for such things as start-up order, dependency, checking, and failed service recovery. That is the job of an initialisation system like systemd.

	* By setting up a systemd unit file on your host computer, you can have the host automatically start, stop, check the status, and otherwise manage a container as a systemd service. Many Linux services are already packaged for RHEL to run as systemd services.

	* To configure a container to run as a systemd service:
        ```shell
		sudo setsebool -P container_manage_cgroup on
        podman run -d --name httpd-server -p 8080:80 # -d for detached, -p for port forwarding
		podman ps # confirm the container is running
		vi /etc/systemd/system/httpd-container.service
        # contents of httpd-container.service
        #####
        #[Unit]
        #Description=httpd Container Service
		#Wants=syslog.service
		#
		#[Service]
		#Restart=always
		#ExecStart=/usr/bin/podman start -a httpd-server
		#ExecStop=/usr/bin/podman stop -t 2 httpd-server
		#
		#[Install]
		#WantedBy=multi-user.target
        #####
		systemctl start httpd-container.service
		systemctl status httpd-container.service # confirm running
		systemctl enable httpd-container.service # will not run as part multi-user.target
        ```

	* Note that other systemd services can be viewed in `/etc/systemd/system` and used as examples.

1. Attach persistent storage to a container

	* To attach persistent storage to a container:
        ```shell
		ls /dev/sda1 # using this disk
		mkdir -p /home/containers/disk1
		podman run --privileged -it -v /home/containers/disk1:/mnt docker.io/library/httpd /bin/bash #  --privileged to allow with SELinux, -it for interactive terminal, -v to mount, and /bin/bash to provide a terminal
        ```

### Exercises

1. Recovery and Practise Tasks

    * Recover the system and fix repositories:
        ```shell
        # press e at grub menu
        rd.break # add to line starting with "linux16"
        # Replace line containing "BAD" with "x86_64"
        mount -o remount, rw /sysroot
        chroot /sysroot
        passwd
        touch /.autorelabel
        # reboot
        # reboot - will occur automaticaly after relabel (you can now login)
        grub2-mkconfig -o /boot/grub2/grub.cfg # fix grub config
        yum repolist all
        # change files in /etc/yum.repos.d to enable repository
        yum update -y
        # reboot
        ```

    * Add 3 new users alice, bob and charles. Create a marketing group and add these users to the group. Create a directory `/marketing` and change the owner to alice and group to marketing. Set permissions so that members of the marketing group can share documents in the directory but nobody else can see them. Give charles read-only permission. Create an empty file in the directory: 
        ```shell
        useradd alice
        useradd bob
        useradd charles
        groupadd marketing
        mkdir /marketing
        usermod -aG marketing alice
        usermod -aG marketing bob
        usermod -aG marketing charles
        chgrp marketing marketing # may require restart to take effect
        chmod 770 marketing
        setfacl -m u:charles:r marketing
        setfacl -m g:marketing:-wx marketing
        touch file
        ```

    * Set the system time zone and configure the system to use NTP:
        ```shell
        yum install chrony
        systemctl enable chronyd.service
        systemctl start chronyd.service
        timedatectl set-timezone Australia/Sydney
        timedatectl set-ntp true
        ```

    * Install and enable the GNOME desktop:
        ```shell
        yum grouplist
        yum groupinstall "GNOME Desktop" -y
        systemtctl set-default graphical.target
        reboot
        ```

    * Configure the system to be an NFS client:
        ```shell
        yum install nfs-utils
        ```

    * Configure password aging for charles so his password expires in 60 days:
        ```shell
        chage -M 60 charles
        chage -l charles # to confirm result
        ```

    * Lock bobs account:
        ```shell
        passwd -l bob
        passwd --status bob # to confirm result
        ```

    * Find all setuid files on the system and save the list to `/testresults/setuid.list`:
        ```shell
        find / -perm /4000 > setuid.list
        ```

    * Set the system FQDN to *centos.local* and alias to *centos*:
        ```shell
        hostnamectl set-hostname centos --pretty
        hostnamectl set-hostname centos.local
        hostname -s # to confirm result
        hostname # to confirm result
        ```

    * As charles, create a once-off job that creates a file called `/testresults/bob` containing the text "Hello World. This is Charles." in 2 days later:
        ```shell
        vi hello.sh
        # contents of hello.sh
        #####
        #!/bin/bash
        # echo "Hello World. This is Charles." > bob
        #####
        chmod 755 hello.sh
        usermod charles -U -e -- "" # for some reason the account was locked
        at now + 2 days -f /testresults/bob/hello.sh
        cd /var/spool/at # can check directory as root to confirm
        atq # check queued job as charles
        # atrm 1 # can remove the job using this command
        ```

    * As alice, create a periodic job that appends the current date to the file `/testresults/alice` every 5 minutes every Sunday and Wednesday between the hours of 3am and 4am. Remove the ability of bob to create cron jobs:
        ```shell
        echo "bob" >> /etc/at.deny
        sudo -i -u alice
        vi addDate.sh
        # contents of hello.sh
        #####
        ##!/bin/bash
        #date >> alice
        #####
        /testresults/alice/addDate.sh
        crontab -e
        # */5 03,04 * * sun,wed /testresults/alice/addDate.sh
        crontab -l # view crontab
        # crontab -r can remove the job using this command
        ```

    * Set the system SELinux mode to permissive:
        ```shell
        setstatus # confirm current mode is not permissive
        vi /etc/selinux/config # Update to permissive
        reboot
        setstatus # confirm current mode is permissive
        ```

    * Create a firewall rule to drop all traffic from 10.10.10.*:
        ```shell
        firewall-cmd --zone=drop --add-source 10.10.10.0/24
        firewall-cmd --list-all --zone=drop # confirm rule is added
        firewall-cmd --permanent --add-source 10.10.10.0/24
        reboot
        firewall-cmd --list-all --zone=drop # confirm rule remains
        ```

1. Linux Academy - Using SSH, Redirection, and Permissions in Linux

    * Enable SSH to connect without a password from the dev user on server1 to the dev user on server2:
        ```shell
        ssh dev@3.85.167.210
        ssh-keygen # created in /home/dev/.ssh
        ssh-copy-id 34.204.14.34
        ```    

    * Copy all tar files from `/home/dev/` on server1 to `/home/dev/` on server2, and extract them making sure the output is redirected to `/home/dev/tar-output.log`:
        ```shell
        scp *.tar* dev@34.204.14.34:/home/dev
        tar xfz deploy_script.tar.gz > tar-output.log
        tar xfz deploy_content.tar.gz >> tar-output.log
        ```
    
    * Set the umask so that new files are only readable and writeable by the owner:
        ```shell
        umask 0066 # default is 0666, subtract 0066 to get 0600
        ```

    * Verify the `/home/dev/deploy.sh` script is executable and run it:
        ```shell
        chmod 711 deploy.sh
        ./deploy.sh
        ```

1. Linux Academy - Storage Management

    * Create a 2GB GPT Partition:
        ```shell
        lsblk # observe nvme1n1 disk
        sudo gdisk /dev/nvme1n1
        # enter n for new partition
        # accept default partition number
        # accept default starting sector
        # for the ending sector, enter +2G to create a 2GB partition
        # accept default partition type
        # enter w to write the partition information
        # enter y to proceed
        lsblk # observe nvme1n1 now has partition
        partprobe # inform OS of partition change
        ```

    * Create a 2GB MBR Partition:
        ```shell
        lsblk # observe nvme2n1 disk
        sudo fdisk /dev/nvme2n1
        # enter n for new partition
        # accept default partition type
        # accept default partition number
        # accept default first sector
        # for the ending sector, enter +2G to create a 2GB partition
        # enter w to write the partition information
        ```

    * Format the GPT Partition with XFS and mount the device persistently:
        ```shell
        sudo mkfs.xfs /dev/nvme1n1p1
        sudo blkid # observe nvme1n1p1 UUID
        vi /etc/fstab
        # add a line with the new UUID and specify /mnt/gptxfs
        mkdir /mnt/gptxfs
        sudo mount -a
        mount # confirm that it's mounted
        ```

    * Format the MBR Partition with ext4 and mount the device persistently:
        ```shell
        sudo mkfs.ext4 /dev/nvme2n1p1
        mkdir /mnt/mbrext4
        mount /dev/nvme2n1p1 /mnt/mbrext4
        mount # confirm that it's mounted
        ```

1. Linux Academy - Working with LVM Storage

    * Create Physical Devices:
        ```shell
        lsblk # observe disks xvdf and xvdg
        pvcreate /dev/xvdf /dev/xvdg
        ```

    * Create Volume Group:
        ```shell
        vgcreate RHCSA /dev/xvdf /dev/xvdg
        vgdisplay # view details
        ```

    * Create a Logical Volume:
        ```shell
        lvcreate -n pinehead -L 3G RHCSA
        lvdisplay # or lvs, to view details
        ```

    * Format the LV as XFS and mount it persistently at `/mnt/lvol`:
        ```shell
        fdisk -l # get path for lv
        mkfs.xfs /dev/mapper/RHCSA-pinehead
        mkdir /mnt/lvol
        blkid # copy UUID for /dev/mapper/RHCSA-pinehead
        echo "UUID=76747796-dc33-4a99-8f33-58a4db9a2b59" >> /etc/fstab
        # add the path /mnt/vol and copy the other columns
        mount -a
        mount # confirm that it's mounted
        ```

    * Grow the mount point by 200MB:
        ```shell
        lvextend -L +200M /dev/RHCSA/pinehead
        ```

1. Linux Academy - Network File Systems

    * Set up a SAMBA share:
        ```shell
        # on the server
        yum install samba -y
        vi /etc/samba/smb.conf
        # add the below block
        #####
        #[share]
        #    browsable = yes
        #    path = /smb
        #    writeable = yes
        #####
        useradd shareuser
        smbpasswd -a shareuser # enter password
        mkdir /smb
        systemctl start smb
        chmod 777 /smb
        
        # on the client
        mkdir /mnt/smb
        yum install cifs-utils -y
        # on the server hostname -I shows private IP
        mount -t cifs //10.0.1.100/share /mnt/smb -o username=shareuser,password= # private ip used
        ```

    * Set up the NFS share:
        ```shell
        # on the server
        yum install nfs-utils -y
        mkdir /nfs
        echo "/nfs *(rw)" >> /etc/exports
        chmod 777 /nfs
        exportfs -a
        systemctl start {rpcbind,nfs-server,rpc-statd,nfs-idmapd}

        # on the client
        yum install nfs-utils -y
        mkdir /mnt/nfs
        showmount -e 10.0.1.101 # private ip used
        systemctl start rpcbind
        mount -t nfs 10.0.1.101:/nfs /mnt/nfs
        ```

1. Linux Academy - Maintaining Linux Systems

    * Schedule a job to update the server midnight tonight:
        ```shell
        echo "dnf update -y" > update.sh
        chmod +x update.sh
        at midnight -f update.sh
        atq # to verify that job is scheduled
        ```

    * Modify the NTP pools:
        ```shell
        vi /etc/chrony.conf
        # modify the pool directive at the top of the file
        ```

    * Modify GRUB to boot a different kernel:
        ```shell
        grubby --info=ALL # list installed kernels
        grubby --set-default-index=1
        grubby --default-index # verify it worked
        ```

1. Linux Academy - Managing Users in Linux

    * Create the superhero group:
        ```shell
        groupadd superhero
        ```

    * Add user accounts for Tony Stark, Diana Prince, and Carol Danvers and add them to the superhero group:
        ```shell
        useradd tstark -G superhero
        useradd cdanvers -G superhero
        useradd dprince -G superhero
        ```

    * Replace the primary group of Tony Stark with the wheel group:
        ```shell
        usermod tstark -ag wheel
        grep wheel /etc/group # to verify
        ```

    * Lock the account of Diana Prince:
        ```shell
        usermod -L dprince 
        chage dprince -E 0
        ```

1. Linux Academy - SELinux Learning Activity

    * Fix the SELinux permission on `/opt/website`:
        ```shell
        cd /var/www # the default root directory for a web server
        ls -Z # observe permission on html folder
        semanage fcontext -a -t httpd_sys_content_t '/opt/website(/.*)'
        restorecon /opt/website
        ```

    * Deploy the website and test:
        ```shell
        mv /root/index.html /opt/website
        curl localhost/index.html # receive connection refused response
        systemctl start httpd # need to start the service
        setenforce 0 # set to permissive to allow for now
        ```

    * Resolve the error when attempting to access `/opt/website`:
        ```shell
        ll -Z # notice website has admin_home_t
        restorecon /opt/website/index.html
        ```

1. Linux Academy - Setting up VDO

    * Install VDO and ensure the service is running:
        ```shell
		dnf install vdo -y
		systemctl start vdo && systemctl enable vdo
        ```

    * Setup a 100G VM storage volume:
        ```shell
		vdo create --name=ContainerStorage --device=/dev/nvme1n1 --vdoLogicalSize=100G --sparseIndex=disabled
		# spareIndex set to meet requirement of dense index deduplication
		mkfs.xfs -K /dev/mapper/ContainerStorage
		mkdir /mnt/containers
		mount /dev/mapper/ContainerStorage /mnt/containers
		vi /etc/fstab # add line /dev/mapper/ContainerStorage /mnt/containers xfs defaults,_netdev,x-systemd.device-timeout=0,x-systemd.requires=vdo.service 0 0
        ```

    * Setup a 60G website storage volume:
        ```shell
		vdo create --name=WebsiteStorage --device=/dev/nvme2n1 --vdoLogicalSize=60G --deduplication=disabled
		# deduplication set to meet requirement of no deduplication
		mkfs.xfs -K /dev/mapper/WebsiteStorage
		mkdir /mnt/website
		mount /dev/mapper/WebsiteFiles /mnt/website
		vi /etc/fstab # add line for /dev/mapper/WebsiteStorage /mnt/website xfs defaults,_netdev,x-systemd.device-timeout=0,x-systemd.requires=vdo.service 0 0
        ```

1. Linux Academy - Final Practise Exam

    * Start the guest VM:
        ```shell
		# use a VNC viewer connect to IP:5901
		virsh list --all
		virsh start --centos7.0
		# we already have the VM installed, we just needed to start it (so we don't need virt-install)
		dnf install virt-viewer -y
		virt-viewer centos7.0 # virt-manager can also be used
		# now we are connected to the virtual machine
		# send key Ctrl+Alt+Del when prompted for password, as we don't know it
		# press e on GRUB screen
		# add rd.break on the linux16 line
		# now at the emergency console
		mount -o remount, rw /sysroot
		chroot /sysroot
		passwd
		touch /.autorelabel
		reboot -f # needs -f to work for some reason
		# it will restart when it completes relabelling
        ```

    * Create three users (Derek, Tom, and Kenny) that belong to the instructors group. Prevent Tom's user from accessing a shell, and make his account expire 10 day from now:
        ```shell
		groupadd instructors
		useradd derek -G instructors
		useradd tom -s /sbin/nologin -G instructors
		useradd kenny -G instructors
		chage tom -E 2020-10-14
		chage -l tom # to check
		cat /etc/group | grep instructors # to check
        ```

    * Download and configure apache to serve index.html from `/var/web` and access it from the host machine:
        ```shell
		# there is some setup first to establish connectivity/repo
		nmcli device # eth0 shown as disconnected
		nmcli connection up eth0
		vi /etc/yum.repos.d/centos7.repo
        # contents of centos.repo
        #####
        #[centos7]
        #name = centos
        #baseurl = http://mirror.centos.org/centos/7/os/x86_64/
		#enabled = 1
		#gpgcheck = 1
        #gpgkey = file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
        #####
		yum repolist # confirm
		yum install httpd -y
		systemctl start httpd.service
		mkdir /var/web
		vi /etc/httpd/conf/httpd.conf
		# change DocumentRoot to "/var/web"
		# change Directory tag to "/var/web"
		# change Directory tag to "/var/web/html"
		echo "Hello world" > /var/web/index.html
		systemctl start httpd.service
		ip a s # note the first inet address for eth0 # from the guest VM
		curl http://192.168.122.213/ # from the host 
		# note that no route to host returned
		firewall-cmd --list-services # notice no http service
		firewall-cmd --add-service=http --permanent
		firewall-cmd --reload
		firewall-cmd --list-services # confirm http service
		curl http://192.168.122.255/ # from the host 
		# note that 403 error is returned
		# ll -Z comparision between /var/web and /var/www shows that the SELinux type of index.html should be httpd_sys_context_t and not var_t
		yum provides \*/semanage # suggests policycoreutils-python
		yum install policycoreutils-python -y
		semanage fcontext -a -t httpd_sys_content_t "/var/web(/.*)?"
		restorecon -R -v /var/web
		curl http://192.168.122.255/ # from the host - success!
        ```

    * Configure umask to ensure all files created by any user cannot be accessed by the "other" users:
        ```shell
		umask 0026 # also reflect change in /etc/profile and /etc/bashrc
		# default for files is 0666 so will be 0640 after mask
        ```

    * Find all files in `/etc` (not including subdirectories) that are older than 720 days, and output a list to `/root/oldfiles`:
        ```shell
		find /etc -maxdepth 1 -mtime +720 > /root/oldfiles 
        ```

    * Find all log messages in `/var/log/messages` that contain "ACPI", and export them to a file called `/root/logs`. Then archive all of `/var/log` and save it to `/tmp/log_archive.tgz`:
        ```shell
		grep "ACPI" /var/log/messages > /root/logs
		tar -czf /tmp/log_archive.tgz /var/log/ # note f flag must be last!
        ```

    * Modify the GRUB timeout and make it 1 second instead of 5 seconds:
        ```shell
		find / -iname grub.cfgreboot
		# /etc/grub.d, /etc/default/grub and grub2-mkconfig referred to in /boot/grub2/grub.cfg
		vi /etc/default/grub # change GRUB_TIMEOUT to 1
		grub2-mkconfig -o /boot/grub2/grub.cfg
		reboot # confirm timeout now 1 second
        ```

    * Create a daily cron job at 4:27PM for the Derek user that runs `cat /etc/redhat-release` and redirects the output to `/home/derek/release`:
        ```shell
		cd /home/derek
		vi script.sh
		# contents of script.sh
        #####
        ##!/bin/sh
		#cat /etc/redhat-release > /home/derek/release
        #####
		chmod +x script.sh
		crontab -u derek -e
		# contents of crontab
        #####
        #27 16 * * * /home/derek/script.sh
        #####
		crontab -u derek -l # confirm
        ```

    * Configure `time.nist.gov` as the only NTP Server:
        ```shell
		vi /etc/chrony.conf
		# replace lines at the top with server time.nist.gov
        ```

    * Create an 800M swap partition on the `vdb` disk and use the UUID to ensure that it is persistent:
        ```shell
		fdisk -l # note that we have one MBR partitions
		fdisk /dev/vdb
		# select n
		# select p
		# select default
		# select default
		# enter +800M
		# select w
		partprobe
		lsblk # confirm creation
		mkswap /dev/vdb1
		vi /etc/fstab
		# add line containing UUID and swap for the next 2 columns
		swapon -a
		swap # confirm swap is available
        ```

    * Create a new logical volume (LV-A) with a size of 30 extents that belongs to the volume group VG-A (with a PE size of 32M). After creating the volume, configure the server to mount it persistently on `/mnt`:
        ```shell
		# observe through fdisk -l and df -h that /dev/vdc is available with no file system
		yum provides pvcreate # lvm2 identified
		yum install lvm2 -y
		pvcreate /dev/vdc
		vgcreate VG-A /dev/vdc -s 32M
		lvcreate -n LV-A -l 30 VG-A
		mkfs.xfs /dev/VG-A/LV-A
		# note in directory /dev/mapper the name is VG--A-LV--A
		# add an entry to /etc/fstab at /dev/mapper/VG--A-LV--A and /mnt (note that you can mount without the UUID here)
		mount -a
		df -h # verify that LV-A is mounted
        ```

    * On the host, not the guest VM, utilise ldap.linuxacademy.com for SSO, and configure AutoFS to mount user's home directories on login. Make sure to use Kerberos:
        ```shell
		# this objective is no longer required in RHCSA 8
        ```

    * Change the hostname of the guest to "RHCSA":
        ```shell
		hostnamectl set-hostname rhcsa
        ```

1. Asghar Ghori - Exercise 3-1: Create Compressed Archives

	* Create tar files compressed with gzip and bzip2 and extract them:
	    ```shell
		# gzip
		tar -czf home.tar.gz /home
		tar -tf /home.tar.gz # list files
		tar -xf home.tar.gz

		# bzip
		tar -cjf home.tar.bz2 /home
		tar -xf home.tar.bz2 -C /tmp
        ```

1. Asghar Ghori - Exercise 3-2: Create and Manage Hard Links

	* Create an empty file *hard1* under */tmp* and display its attributes. Create hard links *hard2* and *hard3*. Edit *hard2* and observe the attributes. Remove *hard1* and *hard3* and list the attributes again:
	    ```shell
		touch hard1
		ln hard1 hard2
		ln hard1 hard3
		ll -i
		# observe link count is 3 and same inode number
		echo "hi" > hard2
		# observe file size increased to the same value for all files
		rm hard1
		rm hard3
		# observe link count is 1
        ```

1. Asghar Ghori - Exercise 3-3: Create and Manage Soft Links

	* Create an empty file *soft1* under `/root` pointing to `/tmp/hard2`. Edit *soft1* and list the attributes after editing. Remove *hard2* and then list *soft1*:
	    ```shell
		ln -s /tmp/hard2 soft1
		ll -i
		# observe soft1 and hard2 have the same inode number
		echo "hi" >> soft1
		# observe file size increased
		cd /root
		ll -i 
		# observe the soft link is now broken
        ```

1. Asghar Ghori - Exercise 4-1: Modify Permission Bits Using Symbolic Form

	* Create a file *permfile1* with read permissions for owner, group and other. Add an execute bit for the owner and a write bit for group and public. Revoke the write bit from public and assign read, write, and execute bits to the three user categories at the same time. Revoke write from the owning group and write, and execute bits from public:
	    ```shell
		touch permfile1
		chmod 444 permfile1
		chmod -v u+x,g+w,o+w permfile1
		chmod -v o-w,a=rwx permfile1
		chmod -v g-w,o-wx permfile1
        ```

1. Asghar Ghori - Exercise 4-2: Modify Permission Bits Using Octal Form

	* Create a file *permfile2* with read permissions for owner, group and other. Add an execute bit for the owner and a write bit for group and public. Revoke the write bit from public and assign read, write, and execute permissions to the three user categories at the same time:
	    ```shell
		touch permfile2
		chmod 444 permfile2
		chmod -v 566 permfile2
		chmod -v 564 permfile2
		chmod -v 777 permfile2
        ```

1. Asghar Ghori - Exercise 4-3: Test the Effect of setuid Bit on Executable Files

	* As root, remove the setuid bit from `/usr/bin/su`. Observe the behaviour for another user attempting to switch into root, and then add the setuid bit back:
	    ```shell
		chmod -v u-s /usr/bin/su
		# users now receive authentication failure when attempting to switch
		chmod -v u+s /usr/bin/su
        ```

1. Asghar Ghori - Exercise 4-4: Test the Effect of setgid Bit on Executable Files

	* As root, remove the setgid bit from `/usr/bin/write`. Observe the behaviour when another user attempts to run this command, and then add the setgid bit back:
	    ```shell
		chmod -v g-s /usr/bin/write
		# Other users can no longer write to root
		chmod -v g+s /usr/bin/write
        ```

1. Asghar Ghori - Exercise 4-5: Set up Shared Directory for Group Collaboration

	* Create users *user100* and *user200*. Create a group *sgrp* with GID 9999 and add *user100* and *user200* to this group. Create a directory `/sdir` with ownership and owning groups belong to *root* and *sgrp*, and set the setgid bit on */sdir* and test:
	    ```shell
		groupadd sgrp -g 9999
		useradd user100 -G sgrp 
		useradd user200 -G sgrp 
		mkdir /sdir
		chown root:sgrp sdir
		chmod g+s,g+w sdir
		# as user100
		cd /sdir
		touch file
		# owning group is sgrp and not user100 due to setgid bit
		# as user200
		vi file
		# user200 can also read and write
        ```

1. Asghar Ghori - Exercise 4-6: Test the Effect of Sticky Bit

	* Create a file under `/tmp` as *user100* and try to delete it as *user200*. Unset the sticky bit on `/tmp` and try to erase the file again. Restore the sticky bit on `/tmp`:
	    ```shell
		# as user100
		touch /tmp/myfile
		# as user200
		rm /tmp/myfile
		# cannot remove file: Operation not permitted
		# as root
		chmod -v o-t tmp
		# as user200
		rm /tmp/myfile
		# file can now be removed
		# as root
		chmod -v o+t tmp
        ```

1. Asghar Ghori - Exercise 4-7: Identify, Apply, and Erase Access ACLs

	* Create a file *acluser* as *user100* in `/tmp` and check if there are any ACL settings on the file. Apply access ACLs on the file for *user100* for read and write access. Add *user200* to the file for full permissions. Remove all access ACLs from the file:
	    ```shell
		# as user100
		touch /tmp/acluser
		cd /tmp
		getfacl acluser
		# no ACLs on the file
		setfacl -m u:user100:rw,u:user200:rwx acluser
		getfacl acluser
		# ACLs have been added
		setfacl -x user100,user200 acluser
		getfacl acluser
		# ACLs have been removed
        ```

1. Asghar Ghori - Exercise 4-8: Apply, Identify, and Erase Default ACLs

	* Create a directory *projects* as *user100* under `/tmp`. Set the default ACLs on the directory for *user100* and *user200* to give them full permissions. Create a subdirectory *prjdir1* and a file *prjfile1* under *projects* and observe the effects of default ACLs on them. Delete the default entries:
	    ```shell
		# as user100
		cd /tmp
		mkdir projects
		getfacl projects
		# No default ACLs for user100 and user200
		setfacl -dm u:user100:rwx,u:user200:rwx projects
		getfacl projects
		# Default ACLs added for user100 and user200
		mkdir projects/prjdir1
		getfacl prjdir1
		# Default ACLs inherited
		touch prjdir1/prjfile1
		getfacl prjfile1
		# Default ACLs inherited
		setfacl -k projects
        ```

1. Asghar Ghori - Exercise 5-1: Create a User Account with Default Attributes

	* Create *user300* with the default attributes in the *useradd* and *login.defs* files. Assign this user a password and show the line entries from all 4 authentication files:
	    ```shell
		useradd user300
		passwd user300
		grep user300 /etc/passwd /etc/shadow /etc/group /etc/gshadow
        ```


1. Asghar Ghori - Exercise 5-2: Create a User Account with Custom Values

	* Create *user300* with the default attributes in the *useradd* and *login.defs* files. Assign this user a password and show the line entries from all 4 authentication files:
	    ```shell
		useradd user300
		passwd user300
		grep user300 /etc/passwd /etc/shadow /etc/group /etc/gshadow
        ```

1. Asghar Ghori - Exercise 5-3: Modify and Delete a User Account

	* For *user200* change the login name to *user200new*, UID to 2000, home directory to `/home/user200new`, and login shell to `/sbin/nologin`. Display the line entry for *user2new* from the *passwd* for validation. Remove this user and confirm the deletion:
	    ```shell
		usermod -l user200new -m -d /home/user200new -s /sbin/nologin -u 2000 user200
		grep user200new /etc/passwd # confirm updated values
		userdel -r user200new
		grep user200new /etc/passwd # confirm user200new deleted
        ```

1. Asghar Ghori - Exercise 5-4: Create a User Account with No-Login Access

	* Create an account *user400* with default attributes but with a non-interactive shell. Assign this user the nologin shell to prevent them from signing in. Display the new line entry frmo the *passwd* file and test the account:
	    ```shell
		useradd user400 -s /sbin/nologin
		passwd user400 # change password
		grep user400 /etc/passwd
		sudo -i -u user400 # This account is currently not available
        ```

1. Asghar Ghori - Exercise 6-1: Set and Confirm Password Aging with chage

	* Configure password ageing for user100 using the *chage* command. Set the mindays to 7, maxdays to 28, and warndays to 5. Verify the new settings. Rerun the command and set account expiry to January 31, 2020:
	    ```shell
		chage -m 7 -M 28 -W 5 user100
		chage -l user100
		chage -E 2021-01-31 user100
		chage -l
        ```

1. Asghar Ghori - Exercise 6-2: Set and Confirm Password Aging with passwd

	* Configure password aging for *user100* using the *passwd* command. Set the mindays to 10, maxdays to 90, and warndays to 14, and verify the new settings. Set the number of inactivity days to 5 and ensure that the user is forced to change their password upon next login:
	    ```shell
		passwd -n 10 -x 90 -w 14 user100
		passwd -S user100 # view status
		passwd -i 5 user100
		passwd -e user100
		passwd -S user100
        ```

1. Asghar Ghori - Exercise 6-3: Lock and Unlock a User Account with usermod and passwd

	* Disable the ability of user100 to log in using the *usermod* and *passwd* commands. Verify the change and then reverse it:
	    ```shell
		grep user100 /etc/shadow # confirm account not locked by absence of "!" in password
		passwd -l user100 # usermod -L also works
		grep user100 /etc/shadow
		passwd -u user100 # usermod -U also works
        ```

1. Asghar Ghori - Exercise 6-4: Create a Group and Add Members

	* Create a group called *linuxadm* with GID 5000 and another group called *dba* sharing the GID 5000. Add *user100* as a secondary member to group *linxadm*:
	    ```shell
		groupadd -g 5000 linuxadm
		groupadd -o -g 5000 dba # note need -o to share GID
		usermod -G linuxadm user100
		grep user100 /etc/group # confirm user added to group
        ```

1. Asghar Ghori - Exercise 6-5: Modify and Delete a Group Account

	* Change the *linuxadm* group name to *sysadm* and the GID to 6000. Modify the primary group for user100 to *sysadm*. Remove the *sysadm* group and confirm:
	    ```shell
		groupmod -n sysadm -g 6000 linuxadm
		usermod -g sysadm user100
		groupdel sysadm # can't remove while user100 has as primary group
        ```

1. Asghar Ghori - Exercise 6-6: Modify File Owner and Owning Group

	* Create a file *file10* and a directory *dir10* as *user200* under `/tmp`, and then change the ownership for *file10* to *user100* and the owning group to *dba* in 2 separate transactions. Apply ownership on *file10* to *user200* and owning group to *user100* at the same time. Change the 2 attributes on the directory to *user200:dba* recursively:
	    ```shell
		# as user200
		mkdir /tmp/dir10
		touch /tmp/file10
		sudo chown user100 /tmp/file10 		
		sudo chgrp dba /tmp/file10
		sudo chown user200:user100 /tmp/file10
		sudo chown -R user200:user100 /tmp/dir10
        ```

1. Asghar Ghori - Exercise 7-1: Modify Primary Command Prompt

	* Customise the primary shell prompt to display the information enclosed within the quotes "\<username on hostname in pwd\>:" using variable and command substitution. Edit the `~/.profile`file for *user100* and define the new value in there for permanence:
	    ```shell
		export PS1="< $LOGNAME on $(hostname) in \$PWD>"
		# add to ~/.profile for user100
        ```

1. Asghar Ghori - Exercise 8-1: Submit, View, List, and Remove an at Job

	* Submit a job as *user100* to run the *date* command at 11:30pm on March 31, 2021, and have the output and any error messages generated redirected to `/tmp/date.out`. List the submitted job and then remove it:
	    ```shell
		# as user100
		at 11:30pm 03/31/2021
		# enter "date &> /tmp/date.out"
		atq # view job in queue
		at -c 1 # view job details
		atrm 1 # remove job
        ```

1. Asghar Ghori - Exercise 8-2: Add, List, and Remove a Cron Job

	* Assume all users are currently denied access to cron. Submit a cron job as *user100* to echo "Hello, this is a cron test.". Schedule this command to execute at every fifth minute past the hour between 10:00 am and 11:00 am on the fifth and twentieth of every month. Have the output redirected to `/tmp/hello.out`. List the cron entry and then remove it:
	    ```shell
		# as root
		echo "user100" > /etc/cron.allow
		# ensure cron.deny is empty
		# as user100
		crontab
		# */5 10,11 5,20 * * echo "Hello, this is a cron test." >> /tmp/hello.out
		crontab -e # list
		crontab -l # remove
        ```

1. Asghar Ghori - Exercise 9-1: Perform Package Management Tasks Using rpm

	* Verify the integrity and authenticity of a package called *dcraw* located in the `/mnt/AppStream/Packages` directory on the installation image and then install it. Display basic information about the package, show files it contains, list documentation files, verify the package attributes and remove the package: 
	    ```shell
		ls -l /mnt/AppStream/Packages/dcraw*
		rpmkeys -K /mnt/AppStream/Packages/dcraw-9.27.0-9.e18.x86_64.rpm # check integrity
		sudo rpm -ivh /mnt/AppStream/Packages/dcraw-9.27.0-9.e18.x86_64.rpm # -i is install, -v is verbose and -h is hash
		rpm -qi dcraw # -q is query and -i is install
		rpm -qd dcraw # -q is query and -d is docfiles
		rpm -Vv dcraw # -V is verify and -v is verbose
		sudo rpm -ve # -v is verbose and -e is erase
        ```

1. Asghar Ghori - Exercise 10-1: Configure Access to Pre-Built ISO Repositories

	* Access the repositories that are available on the RHEL 8 image. Create a definition file for the repositories and confirm:
	    ```shell
		df -h # after mounting optical drive in VirtualBox
		vi /etc/yum.repos.d/centos.local
		# contents of centos.local
        #####
        #[BaseOS]
		#name=BaseOS
		#baseurl=file:///run/media/$name/BaseOS
		#gpgcheck=0
		#
        #[AppStream]
		#name=AppStream
		#baseurl=file:///run/media/$name/AppStream
		#gpgcheck=0
        #####
		dnf repolist # confirm new repos are added
        ```

1. Asghar Ghori - Exercise 10-2: Manipulate Individual Packages

	* Determine if the *cifs-utils* package is installed and if it is available for installation. Display its information before installing it. Install the package and display its information again. Remove the package along with its dependencies and confirm the removal:
	    ```shell
		dnf config-manager --disable AppStream
		dnf config-manager --disable BaseOS
		dnf list installed | greps cifs-utils # confirm not installed
		dnf info cifs-utils # display information
		dnf install cifs-utils -y
		dnf info cifs-utils # Repository now says @System
		dnf remove cifs-utils -y
        ```

1. Asghar Ghori - Exercise 10-3: Manipulate Package Groups

	* Perform management operations on a package group called *system tools*. Determine if this group is already installed and if it is available for installation. List the packages it contains and install it. Remove the group along with its dependencies and confirm the removal:
	    ```shell
		dnf group list # shows System Tools as an available group
		dnf group info "System Tools"
		dnf group install "System Tools" -y
		dnf group list "System Tools" # shows installed
		dnf group remove "System Tools" -y
        ```

1. Asghar Ghori - Exercise 10-4: Manipulate Modules

	* Perform management operations on a module called *postgresql*. Determine if this module is already installed and if it is available for installation. Show its information and install the default profile for stream 10. Remove the module profile along with any dependencies and confirm its removal:
	    ```shell
		dnf module list "postgresql" # no [i] tag shown so not installed
		dnf module info postgresql:10 # note there are multiple streams
		sudo dnf module install --profile postgresql:10 -y
		dnf module list "postgresql" # [i] tag shown so it's installed
		sudo dnf module remove postgresql:10 -y
        ```

1. Asghar Ghori - Exercise 10-5: Install a Module from an Alternative Stream

	* Downgrade a module to a lower version. Remove the stream *perl* 5.26 and confirm its removal. Manually enable the stream *perl* 5.24 and confirm its new status. Install the new version of the module and display its information:
	    ```shell
		dnf module list perl # 5.26 shown as installed
		dnf module remove perl -y
		dnf module reset perl # make no version enabled
		dnf module install perl:5.26/minimal --allowerasing
		dnf module list perl # confirm module installed
        ```

1. Asghar Ghori - Exercise 11-1: Reset the root User Password

	* Terminate the boot process at an early stage to access a debug shell to reset the root password:
	    ```shell
		# add rd.break affter "rhgb quiet" to reboot into debug shell
		mount -o remount, rw /sysroot
		chroot /sysroot
		passwd # change password
		touch /.autorelabel
        ```

1. Asghar Ghori - Exercise 11-2: Download and Install a New Kernel

	* Download the latest available kernel packages from the Red Hat Customer Portal and install them:
	    ```shell
		uname -r # view kernel version
		rpm -qa | grep "kernel"
		# find versions on access.redhat website, download and move to /tmp
		sudo dnf install /tmp/kernel* -y
        ```

1. Asghar Ghori - Exercise 12-1: Manage Tuning Profiles

	* Install the *tuned* service, start it and enable it for auto-restart upon reboot. Display all available profiles and the current active profile. Switch to one of the available profiles and confirm. Determine the recommended profile for the system and switch to it. Deactive tuning and reactivate it:
	    ```shell
		sudo systemctl status tuned-adm # already installed and enabled
		sudo tuned-adm profile # active profile is virtual-guest
		sudo tuned-adm profile desktop # switch to desktop profile
		sudo tuned-adm profile recommend # virtual-guest is recommended
		sudo tuned-adm off # turn off profile
        ```

1. Asghar Ghori - Exercise 13-1: Add Required Storage to server2

	* Add 4x250MB, 1x4GB, and 2x1GB disks:
	    ```shell
		# in virtual box add a VDI disk to the SATA controller
		lsblk # added disks shown as sdb, sdc, sdd
        ```

1. Asghar Ghori - Exercise 13-2: Create an MBR Partition

	* Assign partition type "msdos" to `/dev/sdb` for using it as an MBR disk. Create and confirm a 100MB primary partition on the disk:
	    ```shell
		parted /dev/sdb print # first line shows unrecognised disk label
		parted /dev/sdb mklabel msdos
		parted /dev/sdb mkpart primary 1m 101m
		parted /dev/sdb print # confirm added partition
        ```

1. Asghar Ghori - Exercise 13-3: Delete an MBR Partition

	* Delete the *sdb1* partition that was created in Exercise 13-2 above:
	    ```shell
		parted /dev/sdb rm 1
		parted /dev/sdb print # confirm deletion
        ```

1. Asghar Ghori - Exercise 13-4: Create a GPT Partition

	* Assign partition type "gpt" to `/dev/sdc` for using it as a GPT disk. Create and confirm a 200MB partition on the disk:
	    ```shell
		gdisk /dev/sdc
		# enter n for new
		# enter default partition number
		# enter default first sector
		# enter +200MB for last sector
		# enter default file system type
		# enter default hex code
		# enter w to write
		lsblk # can see sdc1 partition with 200M
        ```

1. Asghar Ghori - Exercise 13-5: Delete a GPT Partition

	* Delete the *sdc1* partition that was created in Exercise 13-4 above:
	    ```shell
		gdisk /dev/sdc
		# enter d for delete
		# enter w to write
		lsblk # can see no partitions under sdc
        ```

1. Asghar Ghori - Exercise 13-6: Install Software and Activate VDO

	* Install the VDO software packages, start the VDO services, and mark it for autostart on subsequent reboots:
	
	    ```shell
		dnf install vdo kmod-kvdo -y
		systemctl start vdo.service & systemctl enable vdo.service
            ```

1. Asghar Ghori - Exercise 13-7: Create a VDO Volume

	* Create a volume called *vdo-vol1* of logical size 16GB on the `/dev/sdc` disk (the actual size of `/dev/sdc` is 4GB). List the volume and display its status information. Show the activation status of the compression and de-duplication features:
	
	    ```shell
		wipefs -a /dev/sdc # couldn't create without doing this first
		vdo create --name vdo-vol1 --device /dev/sdc --vdoLogicalSize 16G --vdoSlabSize 128
		# VDO instance 0 volume is ready at /dev/mapper/vdo-vol1
		lsblk # confirm vdo-vol1 added below sdc
		vdo list # returns vdo-vol1
		vdo status --name vdo-vol1 # shows status
		vdo status --name vdo-vol1 | grep -i "compression" # enabled
		vdo status --name vdo-vol1 | grep -i "deduplication" # enabled
        ```

1. Asghar Ghori - Exercise 13-8: Delete a VDO Volume

	* Delete the *vdo-vol1* volume that was created in Exercise 13-7 above and confirm the removal:
	    ```shell
		vdo remove --name vdo-vol1
		vdo list # confirm removal
        ```

1. Asghar Ghori - Exercise 14-1: Create a Physical Volume and Volume Group

	* Initialise one partition *sdd1* (90MB) and one disk *sdb* (250MB) for use in LVM. Create a volume group called *vgbook* and add both physical volumes to it. Use the PE size of 16MB and list and display the volume group and the physical volumes:
	    ```shell
		parted /dev/sdd mklabel msdos
		parted /dev/sdd mkpart primary 1m 91m
		parted /dev/sdd set 1 lvm on
		pvcreate /dev/sdd1 /dev/sdb
		vgcreate -vs 16 vgbook /dev/sdd1 /dev/sdb
		vgs vgbook # list information about vgbook
		vgdisplay -v vbook # list detailed information about vgbook
		pvs # list information about pvs
        ```

1. Asghar Ghori - Exercise 14-2: Create Logical Volumes

	* Create two logical volumes, *lvol0* and *lvbook1*, in the *vgbook* volume group. Use 120MB for *lvol0* and 192MB for *lvbook1*. Display the details of the volume group and the logical volumes:
	    ```shell
		lvcreate -vL 120M vgbook
		lvcreate -vL 192M -n lvbook1 vgbook
		lvs # display information
		vgdisplay -v vgbook # display detailed information about volume group
        ```

1. Asghar Ghori - Exercise 14-3: Extend a Volume Group and a Logical Volume

	* Add another partition *sdd2* of size 158MB to *vgbook* to increase the pool of allocatable space. Initialise the new partition prior to adding it to the volume group. Increase the size of *lvbook1* to 336MB. Display the basic information for the physical volumes, volume group, and logical volume:
	    ```shell
		parted mkpart /dev/sdd primary 90 250
		parted /dev/sdd set 2 lvm on
		parted /dev/sdd print # confirm new partition added
		vgextend vgbook /dev/sdd2
		pvs # display information
		vgs # display information
		lvextend vgbook/lvbook1 -L +144M
		lvs # display information
        ```

1. Asghar Ghori - Exercise 14-4: Rename, Reduce, Extend, and Remove Logical Volumes

	* Rename *lvol0* to *lvbook2*. Decrease the size of *lvbook2* to 50MB using the *lvreduce* command and then add 32MB with the *lvresize* command. Remove both logical volumes. Display the summary for the volume groups, logical volumes, and physical volumes:
	    ```shell
		lvrename vgbook/lvol0 vgbook/lvbook2
		lvreduce vgbook/lvbook2 -L 50M
		lvextend vgbook/lvbook2 -L +32M
		lvremove vgbook/lvbook1
		lvremove vgbook/lvbook2
		pvs # display information
		vgs # display information
		lvs # display information
        ```

1. Asghar Ghori - Exercise 14-5: Reduce and Remove a Volume Group

	* Reduce *vgbook* by removing the *sdd1* and *sdd2* physical volumes from it, then remove the volume group. Confirm the deletion of the volume group and the logical volumes at the end:
	    ```shell
		vgreduce vgbook /dev/sdd1 /dev/sdd2
		vgremove vgbook
		vgs # confirm removals
		pvs # can be used to show output of vgreduce
        ```

1. Asghar Ghori - Exercise 14-5: Reduce and Remove a Volume Group

	* Reduce *vgbook* by removing the *sdd1* and *sdd2* physical volumes from it, then remove the volume group. Confirm the deletion of the volume group and the logical volumes at the end:
	    ```shell
		vgreduce vgbook /dev/sdd1 /dev/sdd2
		vgremove vgbook
		vgs # confirm removals
		pvs # can be used to show output of vgreduce
        ```

1. Asghar Ghori - Exercise 14-6: Uninitialise Physical Volumes

	* Uninitialise all three physical volumes - *sdd1*, *sdd2*, and *sdb* - by deleting the LVM structural information from them. Use the *pvs* command for confirmation. Remove the partitions from the *sdd* disk and verify that all disks are now in their original raw state:
	    ```shell
		pvremove /dev/sdd1 /dev/sdd2 /dev/sdb
		pvs
		parted /dev/sdd
		# enter print to view partitions
		# enter rm 1
		# enter rm 2
        ```

1. Asghar Ghori - Exercise 14-7: Install Software and Activate Stratis

	* Install the Stratis software packages, start the Stratis service, and mark it for autostart on subsequent system reboots:
	    ```shell
		dnf install stratis-cli -y
		systemctl start stratisd.service & systemctl enable stratisd.service
        ```

1. Asghar Ghori - Exercise 14-8: Create and Confirm a Pool and File System

	* Create a Stratis pool and a file system in it. Display information about the pool, file system, and device used:
	    ```shell
		stratis pool create mypool /dev/sdd
		stratis pool list # confirm stratis pool created
		stratis filesystem create mypool myfs
		stratis filesystem list # confirm filesystem created, get device path
		mkdir /myfs1
		mount /stratis/mypool/myfs /myfs1
        ```

1. Asghar Ghori - Exercise 14-9: Expand and Rename a Pool and File System

	* Expand the Stratis pool *mypool* using the *sdd* disk. Rename the pool and the file system it contains:
	    ```shell
		stratis pool add-data mypool /dev/sdd
		stratis pool rename mypool mynewpool
		stratis pool list # confirm changes
        ```

1. Asghar Ghori - Exercise 14-10: Destroy a File System and Pool

	* Destroy the Stratis file system and the pool that was created, expanded, and renamed in the above exercises. Verify the deletion with appropriate commands:
	    ```shell
		umount /bookfs1
		stratis filesystem destroy mynewpool myfs
		stratis filesystem list # confirm deletion
		stratis pool destroy mynewpool
		stratis pool list # confirm deletion
        ```

1. Asghar Ghori - Exercise 15-1: Create and Mount Ext4, VFAT, and XFS File Systems in Partitions

	* Create 2x100MB partitions on the `/dev/sdb` disk, initialise them separately with the Ext4 and VFAT file system types, define them for persistence using their UUIDs, create mount points called `/ext4fs` and `/vfatfs1`, attach them to the directory structure, and verify their availability and usage. Use the disk `/dev/sdc` and repeat the above procedure to establish an XFS file system in it and mount it on `/xfsfs1`:
	    ```shell
		parted /dev/sdb
		# enter mklabel 
		# enter msdos 
		# enter mkpart 
		# enter primary
		# enter ext4
		# enter start as 0
		# enter end as 100MB
		# enter print to verify
		parted /dev/sdb mkpart primary 101MB 201MB
		# file system entered during partition created is different
		lsblk # verify partitions
		mkfs.ext4 /dev/sdb1
		mkfs.vfat /dev/sdb2
		parted /dev/sdc
		# enter mklabel 
		# enter msdos 
		# enter mkpart
		# enter primary
		# enter xfs
		# enter start as 0
		# enter end as 100MB
		mkfs.xfs /dev/sdc1
		mkdir /ext4fs /vfatfs1 /xfsfs1
		lsblk -f # get UUID for each file system
		vi /etc/fstab
		# add entries using UUIDs with defaults and file system name
		df -hT # view file systems and mount points
        ```

1. Asghar Ghori - Exercise 15-2: Create and Mount XFS File System in VDO Volume

	* Create a VDO volume called *vdo1* of logical size 16GB on the *sdc* disk (actual size 4GB). Initialise the volume with the XFS file system type, define it for persistence using its device files, create a mount point called `/xfsvdo1`, attach it to the directory structure, and verify its availability and usage:
	    ```shell
		wipefs -a /dev/sdc
		vdo create --device /dev/sdc --vdoLogicalSize 16G --name vdo1 --vdoSlabSize 128
		vdo list # list the vdo
		lsblk /dev/sdc # show information about disk
		mkdir /xfsvdo1
		vdo status # get vdo path
		mkfs.xfs /dev/mapper/vdo1
		vi /etc/fstab
		# copy example from man vdo create
		mount -a
		df -hT # view file systems and mount points
        ```

1. Asghar Ghori - Exercise 15-3: Create and Mount Ext4 and XFS File Systems in LVM Logical Volumes

	* Create a volume group called *vgfs* comprised of a 160MB physical volume created in a partition on the `/dev/sdd` disk. The PE size for the volume group should be set at 16MB. Create 2 logical volumes called *ext4vol* and *xfsvol* of sizes 80MB each and initialise them with the Ext4 and XFS file system types. Ensure that both file systems are persistently defined using their logical volume device filenames. Create mount points */ext4fs2* and */xfsfs2*, mount the file systems, and verify their availability and usage:
	    ```shell
		vgcreate vgfs /dev/sdd --physicalextentsize 16MB
		lvcreate vgfs --name ext4vol -L 80MB
		lvcreate vgfs --name xfsvol -L 80MB
		mkfs.ext4 /dev/vgfs/ext4vol
		mkfs.xfs /dev/vgfs/xfsvol
		blkid # copy UUID for /dev/mapper/vgfs-ext4vol and /dev/mapper/vgfs-xfsvol
		vi /etc/fstab
		# add lines with copied UUID
		mount -a
		df -hT # confirm added
        ```

1. Asghar Ghori - Exercise 15-4: Resize Ext4 and XFS File Systems in LVM Logical Volumes

	* Grow the size of the *vgfs* volume group that was created above by adding the whole *sdc* disk to it. Extend the *ext4vol* logical volume along with the file system it contains by 40MB using 2 separate commands. Extend the *xfsvol* logical volume along with the file system it contains by 40MB using a single command:
	    ```shell
		vdo remove --name vdo1 # need to use this disk
		vgextend vgfs /dev/sdc
		lvextend -L +80 /dev/vgfs/ext4vol
		fsadm resize /dev/vgfs/ext4vol
		lvextend -L +80 /dev/vgfs/xfsvol
		fsadm resize /dev/vgfs/xfsvol
		lvresize -r -L +40 /dev/vgfs/xfsvol # -r resizes file system
		lvs # confirm resizing
        ```

1. Asghar Ghori - Exercise 15-5: Create, Mount, and Expand XFS File System in Stratis Volume

	* Create a Stratis pool called *strpool* and a file system *strfs2* by reusing the 1GB *sdc* disk. Display information about the pool, file system, and device used. Expand the pool to include another 1GB disk *sdh* and confirm:
	    ```shell
		stratis pool create strpool /dev/sdc
		stratis filesystem create strpool strfs2
		stratis pool list # view created stratis pool
		stratis filesystem list # view created filesystem
		stratis pool add-data strpool /dev/sdd
		stratis blockdev list strpool # list block devices in pool
		mkdir /strfs2
		lsblk /stratis/strpool/strfs2 -o UUID
		vi /etc/fstab
		# add line
		# UUID=2913810d-baed-4544-aced-a6a2c21191fe /strfs2 xfs x-systemd.requires=stratisd.service 0 0
        ```


1. Asghar Ghori - Exercise 15-6: Create and Activate Swap in Partition and Logical Volume

	* Create 1 swap area in a new 40MB partition called *sdc3* using the *mkswap* command. Create another swap area in a 140MB logical volume called *swapvol* in *vgfs*. Add their entries to the `/etc/fstab` file for persistence. Use the UUID and priority 1 for the partition swap and the device file and priority 2 for the logical volume swap. Activate them and use appropriate tools to validate the activation:
	    ```shell
		parted /dev/sdc
		# enter mklabel msdos
		# enter mkpart primary 0 40
		parted /dev/sdd
		# enter mklabel msdos
		# enter mkpart primary 0 140
		mkswap -L sdc3 /dev/sdc 40
		vgcreate vgfs /dev/sdd1
		lvcreate vgfs --name swapvol -L 132
		mkswap swapvol /dev/sdd1
		mkswap /dev/vgfs/swapvol
		lsblk -f # get UUID
		vi /etc/fstab
		# add 2 lines, e.g. first line
		# UUID=WzDb5Y-QMtj-fYeo-iW0f-sj8I-ShRu-EWRIcp swap swap pri=2 0 0
		mount -a
        ```

1. Asghar Ghori - Exercise 16-1: Export Share on NFS Server

	* Create a directory called `/common` and export it to *server1* in read/write mode. Ensure that NFS traffic is allowed through the firewall. Confirm the export:
	    ```shell
		dnf install nfs-utils -y
		mkdir /common
		firewall-cmd --permanent --add-service=nfs
		firewall-cmd --reload
		systemctl start nfs-server.service & systemctl enable nfs-server.service
		echo "/nfs *(rw)" >> /etc/exports
		exportfs -av
        ```

1. Asghar Ghori - Exercise 16-2: Mount Share on NFS Client

	* Mount the `/common` share exported above. Create a mount point called `/local`, mount the remote share manually, and confirm the mount. Add the remote share to the file system table for persistence. Remount the share and confirm the mount. Create a test file in the mount point and confirm the file creation on the NFS server:
	    ```shell
		dnf install cifs-utils -y
		mkdir /local
		chmod 755 local
		mount 10.0.2.15:/common /local
		vi /etc/fstab
		# add line
		# 10.0.2.15:/common /local nfs _netdev 0 0
		mount -a
		touch /local/test # confirm that it appears on server in common
        ```

1. Asghar Ghori - Exercise 16-3: Access NFS Share Using Direct Map

	* Configure a direct map to automount the NFS share `/common` that is available from *server2*. Install the relevant software, create a local mount point `/autodir`, and set up AutoFS maps to support the automatic mounting. Note that `/common` is already mounted on the `/local` mount point on *server1* via *fstab*. Ensure there is no conflict in configuration or functionality between the 2:
	    ```shell
		dnf install autofs -y
		mkdir /autodir
		vi /etc/auto.master
		# add line
		#/- /etc/auto.master.d/auto.dir
		vi /etc/auto.master.d/auto.dir
		# add line
		#/autodir 172.25.1.4:/common
		systemctl restart autofs
        ```

1. Asghar Ghori - Exercise 16-4: Access NFS Share Using Indirect Map

	* Configure an indirect map to automount the NFS share `/common` that is available from *server2*. Install the relevant software and set up AutoFS maps to support the automatic mounting. Observe that the specified mount point "autoindir" is created automatically under `/misc`. Note that `/common` is already mounted on the `/local` mount point on *server1* via *fstab*. Ensure there is no conflict in configuration or functionality between the 2:
	    ```shell
		dnf install autofs -y
		grep /misc /etc/auto.master # confirm entry is there
		vi /etc/auto.misc
		# add line
		#autoindir 172.25.1.4:/common
		systemctl restart autofs
        ```

1. Asghar Ghori - Exercise 16-5: Automount User Home Directories Using Indirect Map

	* On *server1* (NFS server), create a user account called *user30* with UID 3000. Add the `/home` directory to the list of NFS shares so that it becomes available for remote mount. On *server2* (NFS client), create a user account called *user30* with UID 3000, base directory `/nfshome`, and no user home directory. Create an umbrella mount point called `/nfshome` for mounting the user home directory from the NFS server. Install the relevent software and establish an indirect map to automount the remote home directory of *user30* under `/nfshome`. Observe that the home directory of *user30* is automounted under `/nfshome` when you sign in as *user30*:
	    ```shell
		# on server 1 (NFS server)
		useradd -u 3000 user30
		echo password1 | passwd --stdin user30
		vi /etc/exports
		# add line
		#/home *(rw)
		exportfs -avr

		# on server 2 (NFS client)
		dnf install autofs -y		
		useradd user30 -u 3000 -Mb /nfshome
		echo password1 | passwd --stdin user30
		mkdir /nfshome
		vi /etc/auto.master
		# add line
		#/nfshome /etc/auto.master.d/auto.home
		vi /etc/auto.master.d/auto.home
		# add line
		#* -rw &:/home&
		systemctl enable autofs.service & systemctl start autofs.service
		sudo su - user30
		# confirm home directory is mounted
        ```

1. Asghar Ghori - Exercise 17.1: Change System Hostname

	* Change the hostnames of *server1* to *server10.example.com* and *server2* to *server20.example.com* by editing a file and restarting the corresponding service daemon and using a command respectively:
	    ```shell
		# on server 1
		vi /etc/hostname
		# change line to server10.example.com
		systemctl restart systemd-hostnamed
		
		# on server 2
		hostnamectl set-hostname server20.example.com
        ```

1. Asghar Ghori - Exercise 17.2: Add Network Devices to server10 and server20

	* Add one network interface to *server10* and one to *server20* using VirtualBox:
	    ```shell
		# A NAT Network has already been created and attached to both servers in VirtualBox to allow them to have seperate IP addresses (note that the MAC addressed had to be changed)
		# Add a second Internal Network adapter named intnet to each server
		nmcli conn show # observe enp0s8 added as a connection
        ```

1. Asghar Ghori - Exercise 17.3: Configure New Network Connection Manually

	* Create a connection profile for the new network interface on *server10* using a text editing tool. Assign the IP 172.10.10.110/24 with gateway 172.10.10.1 and set it to autoactivate at system reboots. Deactivate and reactive this interface at the command prompt:
	    ```shell
		vi /etc/sysconfig/network-scripts/ifcfg-enp0s8
		# add contents of file
		#TYPE=Ethernet
		#BOOTPROTO=static
		#IPV4_FAILURE_FATAL=no
		#IPV6INIT=no
		#NAME=enp0s8
		#DEVICE=enp0s8
		#ONBOOT=yes
		#IPADDR=172.10.10.110
		#PREFIX=24
		#GATEWAY=172.10.10.1
		ifdown enp0s8
		ifup enp0s8
		ip a # verify activation
        ```

1. Asghar Ghori - Exercise 17.4: Configure New Network Connection Using nmcli

	* Create a connection profile using the *nmcli* command for the new network interface enp0s8 that was added to *server20*. Assign the IP 172.10.10.120/24 with gateway 172.10.10.1, and set it to autoactivate at system reboot. Deactivate and reactivate this interface at the command prompt:
	    ```shell
		nmcli dev status # show devices with enp0s8 disconnected
		nmcli con add type Ethernet ifname enp0s8 con-name enp0s8 ip4 172.10.10.120/24 gw4 172.10.10.1
		nmcli conn show # verify connection added
		nmcli con down enp0s8
		nmcli con up enp0s8
		ip a # confirm ip address is as specified
        ```

1. Asghar Ghori - Exercise 17.5: Update Hosts Table and Test Connectivity

	* Update the `/etc/hosts` file on both *server10* and *server20*. Add the IP addresses assigned to both connections and map them to hostnames *server10*, *server10s8*, *server20*, and *server20s8* appropriately. Test connectivity from *server10* to *server20* to and from *server10s8* to *server20s8* using their IP addresses and then their hostnames:
	    ```shell
		## on server20
		vi /etc/hosts
		# add lines
		#172.10.10.120 server20.example.com server20
		#172.10.10.120 server20s8.example.com server20s8
		#192.168.0.110 server10.example.com server10
		#192.168.0.110 server10s8.example.com server10s8

		## on server10
		vi /etc/hosts
		# add lines
		#172.10.10.120 server20.example.com server20
		#172.10.10.120 server20s8.example.com server20s8
		#192.168.0.110 server10.example.com server10
		#192.168.0.110 server10s8.example.com server10s8
		ping server10 # confirm host name resolves
        ```

1. Asghar Ghori - Exercise 18.1: Configure NTP Client

	* Install the Chrony software package and activate the service without making any changes to the default configuration. Validate the binding and operation:
	    ```shell
		dnf install chrony -y
		vi /etc/chrony.conf # view default configuration
		systemctl start chronyd.service & systemctl enable chronyd.service
		chronyc sources # view time sources
		chronyc tracking # view clock performance
        ```

1. Asghar Ghori - Exercise 19.1: Access RHEL System from Another RHEL System

	* Issue the *ssh* command as *user1* on *server10* to log in to *server20*. Run appropriate commands on *server20* for validation. Log off and return to the originating system:
	    ```shell
		# on server 10
		ssh user1@server20
		whoami
		pwd
		hostname # check some basic information
		# ctrl + D to logout
        ```

1. Asghar Ghori - Exercise 19.2: Access RHEL System from Windows

	* Use a program called PuTTY to access *server20* using its IP address and as *user1*. Run appropriate commands on *server20* for validation. Log off to terminate the session:
	    ```shell
		# as above but using the server20 IP address in PuTTy
        ```

1. Asghar Ghori - Exercise 19.3: Generate, Distribute, and Use SSH Keys

	* Generate a password-less ssh key pair using RSA for *user1* on *server10*. Display the private and public file contents. Distribute the public key to *server20* and attempt to log on to *server20* from *server10*. Show the log file message for the login attempt:
	    ```shell
		# on server10
		ssh-keygen
		# press enter to select default file names and no password
		ssh-copy-id server20
		ssh server20 # confirm you can login

		# on server20
		vi /var/log/secure # view login event
        ```

1. Asghar Ghori - Exercise 20.1: Add Services and Ports, and Manage Zones

	* Determine the current active zone. Add and activate a permanent rule to allow HTTP traffic on port 80, and then add a runtime rule for traffic intended for TCP port 443. Add a permanent rule to the *internal* zone for TCP port range 5901 to 5910. Confirm the changes and display the contents of the affected zone files. Switch the default zone to the *internal* zone and activate it:
	    ```shell
		# on server10
		firewall-cmd --get-active-zones # returns public with enp0s8 interface
		firewall-cmd --add-service=http --permanent
		firewall-cmd --add-service=https
		firewall-cmd --add-port=80/tcp --permanent
		firewall-cmd --add-port=443/tcp
		firewall-cmd --zone=internal --add-port=5901-5910/tcp --permanent
		firewall-cmd --reload
		firewall-cmd --list-services # confirm result
		firewall-cmd --list-ports # confirm result
		vi /etc/firewalld/zones/public.xml # view configuration
		vi /etc/firewalld/zones/internal.xml # view configuration
		firewall-cmd --set-default-zone=internal
		firewall-cmd --reload
		firewall-cmd --get-active-zones # returns internal with enp0s8 interface
        ```

1. Asghar Ghori - Exercise 20.2: Remove Services and Ports, and Manage Zones

	* Remove the 2 permanent rules added above. Switch back to the *public* zone as the default zone, and confirm the changes:
	    ```shell
		firewall-cmd --set-default-zone=public
		firewall-cmd --remove-service=http --permanent
		firewall-cmd --remove-port=80/tcp --permanent
		firewall-cmd --reload
		firewall-cmd --list-services # confirm result
		firewall-cmd --list-ports # confirm result
        ```

1. Asghar Ghori - Exercise 20.3: Test the Effect of Firewall Rule

	* Remove the *sshd* service rule from the runtime configuration on *server10*, and try to access the server from *server20* using the *ssh* command:
	    ```shell
		# on server10
		firewall-cmd --remove-service=ssh --permanent
		firewall-cmd --reload
		
		# on server20
		ssh user1@server10
		# no route to host message displayed

		# on server10
		firewall-cmd --add-service=ssh --permanent
		firewall-cmd --reload
		
		# on server20
		ssh user1@server10
		# success
        ```

1. Asghar Ghori - Exercise 21.1: Modify SELinux File Context

	* Create a directory *sedir1* under `/tmp` and a file *sefile1* under *sedir1*. Check the context on the directory and file. Change the SELinux user and type to user_u and public_content_t on both and verify:
	    ```shell
		mkdir /tmp/sedir1
		touch /tmp/sedir1/sefile1
		cd /tmp/sedir1
		ll -Z # unconfined_u:object_r:user_tmp_t:s0 shown
		chcon -u user_u -R sedir1
		chcon -t public_content_t -R sedir1
        ```

1. Asghar Ghori - Exercise 21.2: Add and Apply File Context

	* Add the current context on *sedir1* to the SELinux policy database to ensure a relabeling will not reset it to its previous value. Next, you will change the context on the directory to some random values. Restore the default context from the policy database back to the directory recursively:
	    ```shell
		semanage fcontext -a -t public_content_t -s user_u '/tmp/sedir1(/.*)?'
		cat /etc/selinux/targeted/contexts/files/file_contexts.local # view recently added policies
		restorecon -Rv sedir1 # any chcon changes are reverted with this
        ```

1. Asghar Ghori - Exercise 21.3: Add and Delete Network Ports

	* Add a non-standard port 8010 to the SELinux policy database for the *httpd* service and confirm the addition. Remove the port from the policy and verify the deletion:
	    ```shell
		semanage port -a -t http_port_t -p tcp 8010
		semanage port -l | grep http # list all port settings
		semanage port -d -t http_port_t -p tcp 8010
		semanage port -l | grep http
        ```

1. Asghar Ghori - Exercise 21.4: Copy Files with and without Context

	* Create a file called *sefile2* under `/tmp` and display its context. Copy this file to the `/etc/default` directory, and observe the change in the context. Remove *sefile2* from `/etc/default`, and copy it again to the same destination, ensuring that the target file receives the source file's context:
	    ```shell
		cd /tmp
		touch sefile2
		ll -Zrt # sefile2 context is unconfined_u:object_r:user_tmp_t:s0
		cp sefile2 /etc/default
		cd /etc/default
		ll -Zrt # sefile2 context is unconfined_u:object_r:etc_t:s0
		rm /etc/default/sefile2
		cp /tmp/sefile2 /etc/default/sefile2 --preserve=context
		ll -Zrt # sefile2 context is unconfined_u:object_r:user_tmp_t:s0
        ```

1. Asghar Ghori - Exercise 21.5: View and Toggle SELinux Boolean Values

	* Display the current state of the Boolean nfs_export_all_rw. Toggle its value temporarily, and reboot the system. Flip its value persistently after the system has been back up:
	    ```shell
		getsebool nfs_export_all_rw # nfs_export_all_rw --> on
		sestatus -b | grep nfs_export_all_rw # also works
		setsebool nfs_export_all_rw_off
		reboot
		setsebool nfs_export_all_rw_off -P
        ```

1. Prince Bajaj - Managing Containers

	* Download the Apache web server container image (httpd 2.4) and inspect the container image. Check the exposed ports in the container image configuration:
	    ```shell
		# as root
		usermod user1 -aG wheel
		cat /etc/groups | grep wheel # confirm
		
		# as user1
		podman search httpd # get connection refused
		# this was because your VM was setup as an Internal Network and not a NAT network so it couldn't access the internet
		# see result registry.access.redhat.com/rhscl/httpd-24-rhel7
		skopeo inspect --creds name:password docker://registry.access.redhat.com/rhscl/httpd-24-rhel7
		podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7
		podman inspect registry.access.redhat.com/rhscl/httpd-24-rhel7
		# exposed ports shown as 8080 and 8443
        ```

	* Run the httpd container in the background. Assign the name *myweb* to the container, verify that the container is running, stop the container and verify that it has stopped, and delete the container and the container image:
	    ```shell
		podman run --name myweb -d registry.access.redhat.com/rhscl/httpd-24-rhel7
		podman ps # view running containers
		podman stop myweb
		podman ps # view running containers
		podman rm myweb
		podman rmi registry.access.redhat.com/rhscl/httpd-24-rhel7
        ```

	* Pull the Apache web server container image (httpd 2.4) and run the container with the name *webserver*. Configure *webserver* to display content "Welcome to container-based web server". Use port 3333 on the host machine to receive http requests. Start a bash shell in the container to verify the configuration:
	    ```shell
		# as root
		dnf install httpd -y
		vi /var/www/html/index.html
		# add row "Welcome to container-based web server"

		# as user1
		podman search httpd
		podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7
		podman inspect registry.access.redhat.com/rhscl/httpd-24-rhel7 # shows 8080 in exposedPorts, and /opt/rh/httpd24/root/var/www is shown as HTTPD_DATA_ORIG_PATH 
		podman run -d=true -p 3333:8080 --name=webserver -v /var/www/html:/opt/rh/httpd24/root/var/www/html registry.access.redhat.com/rhscl/httpd-24-rhel7
		curl http://localhost:3333 # success!
				
		# to go into the container and (for e.g.) check the SELinux context
		podman exec -it webserver /bin/bash
		cd /opt/rh/httpd24/root/var/www/html
		ls -ldZ

		# you can also just go to /var/www/html/index.html in the container and change it there
        ```

	* Configure the system to start the *webserver* container at boot as a systemd service. Start/enable the systemd service to make sure the container will start at book, and reboot the system to verify if the container is running as expected:
	    ```shell
		# as root
		podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7
		vi /var/www/html/index
		# add row "Welcome to container-based web server"
		podman run -d=true -p 3333:8080/tcp --name=webserver -v /var/www/html:/opt/rh/httpd24/root/var/www/html registry.access.redhat.com/rhscl/httpd-24-rhel7
		cd /etc/systemd/system
		podman generate systemd webserver >> httpd-container.service
		systemctl daemon-reload
		systemctl enable httpd-container.service --now
		reboot
		systemctl status httpd-container.service
		curl http://localhost:3333 # success

		# this can also be done as a non-root user
		podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7
		sudo vi /var/www/html/index.html
		# add row "Welcome to container-based web server"
		sudo setsebool -P container_manage_cgroup true
		podman run -d=true -p 3333:8080/tcp --name=webserver -v /var/www/html:/opt/rh/httpd24/root/var/www/html registry.access.redhat.com/rhscl/httpd-24-rhel7
		podman generate systemd webserver > /home/jr/.config/systemd/user/httpd-container.service
		cd /home/jr/.config/systemd/user
		sudo semanage fcontext -a -t systemd_unit_file_t httpd-container.service
		sudo restorecon httpd-container.service
		systemctl enable --user httpd-container.service --now
        ```

	* Pull the *mariadb* image to your system and run it publishing the exposed port. Set the root password for the mariadb service as *mysql*. Verify if you can login as root from local host:
	    ```shell
		# as user1
		sudo dnf install mysql -y
		podman search mariadb
		podman pull docker.io/library/mariadb
		podman inspect docker.io/library/mariadb # ExposedPorts 3306 
		podman run --name mariadb -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=mysql docker.io/library/mariadb
		podman inspect mariadb # IPAddress is 10.88.0.22
		mysql -h 10.88.0.22 -u root -p
        ```

1. Linux Hint - Bash Script Examples

	* Create a hello world script:
	    ```shell
		!#/bin/bash
		echo "Hello World!"
		exit
        ```

	* Create a script that uses a while loop to count to 5:
	    ```shell
		!#/bin/bash
		count=0
		while [ $count -le 5 ]
		do
			echo "$count"
			count = $(($count + 1))
		done
		exit
        ```

	* Note the formatting requirements. For example, there can be no space between the equals and the variable names, there must be a space between the "]" and the condition, and there must be 2 sets of round brackets in the variable incrementation.

	* Create a script that uses a for loop to count to 5:
	    ```shell
		!#/bin/bash
		count=5
		for ((i=1; i<=$count; i++))
		do
			echo "$i"
		done
		exit
        ```

	* Create a script that uses a for loop to count to 5 printing whether the number is even or odd:
	    ```shell
		!#/bin/bash
		count=5
		for ((i=1; i<=$count; i++))
		do
			if [ $(($i%2)) -eq 0 ]
			then
				echo "$i is even"
			else
				echo "$i is odd"
			fi
		done
		exit
        ```

	* Create a script that uses a for loop to count to a user defined number printing whether the number is even or odd:
	    ```shell
		!#/bin/bash
		echo "Enter a number: "
		read count
		for ((i=1; i<=$count; i++))
		do
			if [ $(($i%2)) -eq 0 ]
			then
				echo "$i is even"
			else
				echo "$i is odd"
			fi
		done
		exit
        ```

	* Create a script that uses a function to multiply 2 numbers together:
	    ```shell
		!#/bin/bash
		Rectangle_Area() {
			area=$(($1 * $2))
			echo "Area is: $area"
		}
		
		Rectangle_Area 10 20
		exit
        ```

	* Create a script that uses the output of another command to make a decision:
	    ```shell
		!#/bin/bash
		ping -c 1 $1 > /dev/null 2>&1
		if [ $? -eq 0 ]
		then
			echo "Connectivity to $1 established"
		else
			echo "Connectivity to $1 unavailable"
		fi
		exit
        ```

1. Asghar Ghori - Sample RHCSA Exam 1

	* Setup a virtual machine RHEL 8 Server for GUI. Add a 10GB disk for the OS and use the default storage partitioning. Add 2 300MB disks. Add a network interface, but do not configure the hostname and network connection.

	* Assuming the root user password is lost, reboot the system and reset the root user password to root1234:
	    ```shell
		# ctrl + e after reboot
		# add rd.break after Linux line
		# ctrl + d
		mount -o remount, rw /sysroot
		chroot /sysroot
		passwd
		# change password to root12345
		touch /.autorelabel
		exit
		reboot
        ```

	* Using a manual method (i.e. create/modify files by hand), configure a network connection on the primary network device with IP address 192.168.0.241/24, gateway 192.168.0.1, and nameserver 192.168.0.1:
	    ```shell
		vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
		systemctl restart NetworkManager.service
		# add line IPADDR=192.168.0.241
		# add line GATEWAY=192.168.0.1
		# add line DNS=192.168.0.1
		# add line PREFIX=24
		# change BOOTPROTO from dhcp to none
		ifup enp0s3
		nmcli con show # validate
        ```

	* Using a manual method (modify file by hand), set the system hostname to rhcsa1.example.com and alias rhcsa1. Make sure the new hostname is reflected in the command prompt:
	    ```shell
		vi /etc/hostname
		# replace line with rhcsa1.example.com
		vi /etc/hosts
		# add rhcsa1.example.com and rhcsa1 to first line
		systemctl restart NetworkManager.service
		vi ~/.bashrc
		# add line export PS1 = <($hostname)>
        ```

	* Set the default boot target to multi-user:
	    ```shell
		systemctl set-default multi-user.target
        ```

	* Set SELinux to permissive mode:
	    ```shell
		setenforce permissive
		sestatus # confirm
		vi /etc/selinux/config
		# change line SELINUX=permissive for permanence
        ```

	* Perform a case-insensitive search for all lines in the `/usr/share/dict/linux.words` file that begin with the pattern "essential". Redirect the output to `/tmp/pattern.txt`. Make sure that empty lines are omitted:
	    ```shell
		grep '^essential' /usr/share/dict/linux.words > /tmp/pattern.txt
        ```

	* Change the primary command prompt for the root user to display the hostname, username, and current working directory information in that order. Update the per-user initialisation file for permanence:
	    ```shell
		vi /root/.bashrc
		# add line export PS1 = '<$(whoami) on $(hostname) in $(pwd)>'$
        ```

	* Create user accounts called user10, user20, and user30. Set their passwords to Temp1234. Make accounts for user10 and user30 to expire on December 31, 2021:
	    ```shell
		useradd user10
		useradd user20
		useradd user30
		passwd user10 # enter password
		passwd user20 # enter password
		passwd user30 # enter password
		chage -E 2021-12-31 user10
		chage -E 2021-12-31 user30
		chage -l user10 # confirm
        ```

	* Create a group called group10 and add users user20 and user30 as secondary members:
	    ```shell
		groupadd group10
		usermod -aG group10 user20
		usermod -aG group10 user30
		cat /etc/group | grep "group10" # confirm
        ```

	* Create a user account called user40 with UID 2929. Set the password to user1234:
	    ```shell
		useradd -u 2929 user40
		passwd user40 # enter password
        ```

	* Create a directory called dir1 under `/tmp` with ownership and owning groups set to root. Configure default ACLs on the directory and give user user10 read, write, and execute permissions:
	    ```shell
		mkdir /tmp/dir1
		cd /tmp
		# tmp already has ownership with root
		setfacl -m u:user10:rwx dir1
        ```

	* Attach the RHEL 8 ISO image to the VM and mount it persistently to `/mnt/cdrom`. Define access to both repositories and confirm:
	    ```shell
		# add ISO to the virtualbox optical drive
		mkdir /mnt/cdrom
		mount /dev/sr0 /mnt/cdrom
		vi /etc/yum.repos.d/image.repo
		blkid /dev/sr0 >> /etc/fstab
		vi /etc/fstab
		# format line with UUID /mnt/cdrom iso9660 defaults 0 0
		# contents of image.repo
		#####
        #[BaseOS]
		#name=BaseOS
		#baseurl=file:///mnt/cdrom/BaseOS
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
		#
        #[AppStream]
		#name=AppStream
		#baseurl=file:///mnt/cdrom/AppStream
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
        #####
		yum repolist # confirm
        ```

	* Create a logical volume called lvol1 of size 300MB in vgtest volume group. Mount the Ext4 file system persistently to `/mnt/mnt1`:
	    ```shell
		mkdir /mnt/mnt1
		# /dev/sdb is already 300MB so don't need to worry about partitioning
		vgcreate vgtest /dev/sdb
		lvcreate --name lvol1 -L 296MB vgtest
		lsblk # confirm
		mkfs.ext4 /dev/mapper/vgtest-lvol1
		vi /etc/fstab
		# add line
		# /dev/mapper/vgtest-lvol1 /mnt/mnt1 ext4 defaults 0 0
		mount -a
		lsblk # confirm
        ```

	* Change group membership on `/mnt/mnt1` to group10. Set read/write/execute permissions on `/mnt/mnt1` for group members, and revoke all permissions for public:
	    ```shell
		chgrp group10 /mnt/mnt1
		chmod 770 /mnt/mnt1
        ```

	* Create a logical volume called lvswap of size 300MB in the vgtest volume group. Initialise the logical volume for swap use. Use the UUID and place an entry for persistence:
	    ```shell
		# /dev/sdc is already 300MB so don't need to worry about partitioning
		vgcreate vgswap /dev/sdc
		lvcreate --name lvswap -L 296MB vgswap /dev/sdc
		mkswap /dev/mapper-vgswap-lvswap # UUID returned
		blkid /dev/sdc >> /etc/fstab
		# organise new line so that it has UUID= swp swap defaults 0 0
		swapon -a
		lsblk # confirm
        ```

	* Use tar and bzip2 to create a compressed archive of the `/etc/sysconfig` directory. Store the archive under `/tmp` as etc.tar.bz2:
	    ```shell
		tar -cvzf /tmp/etc.tar.bz2 /etc/sysconfig
        ```

	* Create a directory hierarchy `/dir1/dir2/dir3/dir4`, and apply SELinux contexts for `/etc` on it recursively:
	    ```shell
		mkdir -p /dir1/dir2/dir3/dir4
		ll -Z 
		# etc shown as system_u:object_r:etc_t:s0
		# dir1 shown as unconfined_u:object_r:default_t:s0
		semanage fcontext -a -t etc_t "/dir1(/.*)?"
		restorecon -R -v /dir1
		ll -Z # confirm
        ```

	* Enable access to the atd service for user20 and deny for user30:
	    ```shell
		echo "user30" >> /etc/at.deny
		# just don't create at.allow
        ```

	* Add a custom message "This is the RHCSA sample exam on $(date) by $LOGNAME" to the `/var/log/messages` file as the root user. Use regular expression to confirm the message entry to the log file:
	    ```shell
		logger "This is the RHCSA sample exam on $(date) by $LOGNAME"
		grep "This is the" /var/log/messages
        ```

	* Allow user20 to use sudo without being prompted for their password:
	    ```shell
		usermod -aG wheel user20
		# still prompts for password, could change the wheel group behaviour or add new line to sudoers
		visudo
		# add line at end user20 ALL=(ALL) NOPASSWD: ALL
        ```

1. Asghar Ghori - Sample RHCSA Exam 2

	* Setup a virtual machine RHEL 8 Server for GUI. Add a 10GB disk for the OS and use the default storage partitioning. Add 1 400MB disk. Add a network interface, but do not configure the hostname and network connection.

	* Using the nmcli command, configure a network connection on the primary network device with IP address 192.168.0.242/24, gateway 192.168.0.1, and nameserver 192.168.0.1:
	    ```shell
		nmcli con add ifname enp0s3 con-name mycon type ethernet ip4 192.168.0.242/24 gw4 192.168.0.1 ipv4.dns "192.168.0.1"
		# man nmcli-examples can be referred to if you forget format
		nmcli con show mycon | grep ipv4 # confirm
        ```
	
	* Using the hostnamectl command, set the system hostname to rhcsa2.example.com and alias rhcsa2. Make sure that the new hostname is reflected in the command prompt:
	    ```shell
		hostnamectl set-hostname rhcsa2.example.com
		hostnamectl set-hostname --static rhcsa2 # not necessary due to format of FQDN
		# the hostname already appears in the command prompt
        ```

	* Create a user account called user70 with UID 7000 and comments "I am user70". Set the maximum allowable inactivity for this user to 30 days:
	    ```shell
		useradd -u 7000 -c "I am user70" user70
		chage -I 30 user70
        ```

	* Create a user account called user50 with a non-interactive shell:
	    ```shell
		useradd user50 -s /sbin/nologin
        ```

	* Create a file called testfile1 under `/tmp` with ownership and owning group set to root. Configure access ACLs on the file and give user10 read and write access. Test access by logging in as user10 and editing the file:
	    ```shell
		useradd user10
		passwd user10 # set password
		touch /tmp/testfile1
		cd /tmp
		setfacl -m u:user10:rw testfile1
		sudo su user10
		vi /tmp/testfile1 # can edit the file
        ```

	* Attach the RHEL 8 ISO image to the VM and mount it persistently to `/mnt/dvdrom`. Define access to both repositories and confirm:
	    ```shell
		mkdir /mnt/dvdrom
		lsblk # rom is at /dev/sr0
		mount /dev/sr0 /mnt/dvdrom
		blkid /dev/sr0 >> /etc/fstab
		vi /etc/fstab
		# format line with UUID /mnt/dvdrom iso9660 defaults 0 0
		vi /etc/yum.repos.d/image.repo
		# contents of image.repo
		#####
        #[BaseOS]
		#name=BaseOS
		#baseurl=file:///mnt/dvdrom/BaseOS
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
		#
        #[AppStream]
		#name=AppStream
		#baseurl=file:///mnt/dvdrom/AppStream
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
        #####
		yum repolist # confirm
        ```

	* Create a logical volume called lv1 of size equal to 10 LEs in vg1 volume group (create vg1 with PE size 8MB in a partition on the 400MB disk). Initialise the logical volume with XFS file system type and mount it on `/mnt/lvfs1`. Create a file called lv1file1 in the mount point. Set the file system to automatically mount at each system reboot:
	    ```shell
		parted /dev/sdb
		mklabel msdos
		mkpart
		# enter primary
		# enter xfs
		# enter 0
		# enter 100MB
		vgcreate vg1 -s 8MB /dev/sdb1
		lvcreate --name lv1 -l 10 vg1 /dev/sdb1
		mkfs.xfs /dev/mapper/vg1-lv1
		mkdir /mnt/lvfs1
		vi /etc/fstab
		# add line for /dev/mapper/vg1-lv1 /mnt/lvfs1 xfs defaults 0 0
		mount -a
		df -h  # confirm
		touch /mnt/lvfs1/hi
        ```

	* Add a group called group20 and change group membership on `/mnt/lvfs1` to group20. Set read/write/execute permissions on `/mnt/lvfs1` for the owner and group members, and no permissions for others:
	    ```shell
		groupadd group20
		chgrp group20 -R /mnt/lvfs1
		chmod 770 -R /mnt/lvfs1
        ```

	* Extend the file system in the logical volume lv1 by 64MB without unmounting it and without losing any data:
	    ```shell
		lvextend -L +64MB vg1/lv1 /dev/sdb1
		# realised that the partition of 100MB isn't enough
		parted /dev/sdb
		resizepart
		# expand partition 1 to 200MB
		pvresize /dev/sdb1
		lvextend -L +64MB vg1/lv1 /dev/sdb1
        ```

	* Create a swap partition of size 85MB on the 400MB disk. Use its UUID and ensure it is activated after every system reboot:
	    ```shell
		parted /dev/sdb
		mkpart
		# enter primary
		# enter linux-swap
		# enter 200MB
		# enter 285MB
		mkswap /dev/sdb2
		vi /etc/fstab
		# add line for UUID swap swap defaults 0 0
		swapon -a
        ```

	* Create a disk partition of size 100MB on the 400MB disk and format it with Ext4 file system structures. Assign label stdlabel to the file system. Mount the file system on `/mnt/stdfs1` persistently using the label. Create file stdfile1 in the mount point:
	    ```shell
		parted /dev/sdb
		mkpart
		# enter primary
		# enter ext4
		# enter 290MB
		# enter 390MB
		mkfs.ext4 -L stdlabel /dev/sdb3
		mkdir /mnt/stdfs1
		vi /etc/fstab
		# add line for UUID /mnt/stdfs1 ext4 defaults 0 0
		touch /mnt/stdfs1/hi
        ```

	* Use tar and gzip to create a compressed archive of the `/usr/local` directory. Store the archive under `/tmp` using a filename of your choice:
	    ```shell
		tar -czvf /tmp/local.tar.gz /usr/local
        ```

	* Create a directory `/direct01` and apply SELinux contexts for `/root`:
	    ```shell
		mkdir /direct01
		ll -Z
		# direct01 has unconfined_u:object_r:default_t:s0
		# root has system_u:object_r:admin_home_t:s0
		semanage fcontext -a -t admin_home_t -s system_u "/direct01(/.*)?" 
		restorecon -R -v /direct01
		ll -Zrt # confirm
        ```

	* Set up a cron job for user70 to search for core files in the `/var` directory and copy them to the directory `/tmp/coredir1`. This job should run every Monday at 1:20 a.m:
	    ```shell
		mkdir /tmp/coredir1
		crontab -u user70 -e
		20 1 * * Mon find /var -name core -type f exec cp '{}' /tmp/coredir1 \;
		crontab -u user70 -l # confirm
        ```

	* Search for all files in the entire directory structure that have been modified in the past 30 days and save the file listing in the `/var/tmp/modfiles.txt` file:
	    ```shell
		find / -mtime -30 >> /var/tmp/modfiles.txt
        ```

	* Modify the bootloader program and set the default autoboot timer value to 2 seconds:
	    ```shell
		vi /etc/default/grub
		# set GRUB_TIMEOUT=2
		grub2-mkconfig -o /boot/grub2/grub.cfg
        ```

	* Determine the recommended tuning profile for the system and apply it:
	    ```shell
		tuned-adm recommend
		# virtual-guest is returned
		tuned-adm active
		# virtual-guest is returned
		# no change required
        ```

	* Configure Chrony to synchronise system time with the hardware clock:
	    ```shell
		systemctl status chronyd.service
		vi /etc/chrony.conf
		# everything looks alright
        ```

	* Install package group called "Development Tools", and capture its information in `/tmp/systemtools.out` file:
	    ```shell
		yum grouplist # view available groups
		yum groupinstall "Development Tools" -y >> /tmp/systemtools.out
        ```

	* Lock user account user70. Use regular expressions to capture the line that shows the lock and store the output in file `/tmp/user70.lock`:
	    ```shell
		usermod -L user70
		grep user70 /etc/shadow >> /tmp/user70.lock # observe !
        ```

1. Asghar Ghori - Sample RHCSA Exam 3

	* Build 2 virtual machines with RHEL 8 Server for GUI. Add a 10GB disk for the OS and use the default storage partitioning. Add 1 4GB disk to VM1 and 2 1GB disks to VM2. Assign a network interface, but do not configure the hostname and network connection.

	* The VirtualBox Network CIDR for the NAT network is 192.168.0.0/24.

	* On VM1, set the system hostname to rhcsa3.example.com and alias rhcsa3 using the hostnamectl command. Make sure that the new hostname is reflected in the command prompt:
	    ```shell
		hostnamectl set-hostname rhcsa3.example.com
        ```

	* On rhcsa3, configure a network connection on the primary network device with IP address 192.168.0.243/24, gateway 192.168.0.1, and nameserver 192.168.0.1 using the nmcli command:
	    ```shell
		nmcli con add type ethernet ifname enp0s3 con-name mycon ip4 192.168.0.243/24 gw4 192.168.0.1 ipv4.dns 192.168.0.1
        ```

	* On VM2, set the system hostname to rhcsa4.example.com and alias rhcsa4 using a manual method (modify file by hand). Make sure that the new hostname is reflected in the command prompt:
	    ```shell
		vi /etc/hostname
		# change to rhcsa4.example.com
        ```

	* On rhcsa4, configure a network connection on the primary network device with IP address 192.168.0.244/24, gateway 192.168.0.1, and nameserver 192.168.0.1 using a manual method (create/modify files by hand):
	    ```shell
		vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
		#TYPE=Ethernet
		#BOOTPROTO=static
		#DEFROUTE=yes
		#IPV4_FAILURE_FATAL=no
		#IPV4INIT=no
		#NAME=mycon
		#DEVICE=enp0s3
		#ONBOOT=yes
		#IPADDR=192.168.0.243
		#PREFIX=24
		#GATEWAY=192.168.0.1
		#DNS1=192.168.0.1
		ifup enp0s3
		nmcli con edit enp0s3 # play around with print ipv4 etc. to confirm settings
        ```

	* Run "ping -c2 rhcsa4" on rhcsa3. Run "ping -c2 rhcsa3" on rhcsa4. You should see 0% loss in both outputs:
	    ```shell
		# on rhcsa3
		vi /etc/hosts
		# add line 192.168.0.244 rhcsa4
		ping rhcsa3 # confirm
		
		# on rhcsa4
		vi /etc/hosts
		# add line 192.168.0.243 rhcsa3
		ping rhcsa4 # confirm
        ```

	* On rhcsa3 and rhcsa4, attach the RHEL 8 ISO image to the VM and mount it persistently to `/mnt/cdrom`. Define access to both repositories and confirm:
	    ```shell
		# attach disks in VirtualBox
		# on rhcsa3 and rhcsa4
		mkdir /mnt/cdrom
		mount /dev/sr0 /mnt/cdrom
		blkid # get UUID
		vi /etc/fstab
		# add line with UUID /mnt/cdrom iso9660 defaults 0 0
		mount -a # confirm
		vi /etc/yum.repos.d/image.repo
		#####
        #[BaseOS]
		#name=BaseOS
		#baseurl=file:///mnt/cdrom/BaseOS
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
		#
        #[AppStream]
		#name=AppStream
		#baseurl=file:///mnt/cdrom/AppStream
		#enabled=1
		#gpgenabled=1
		#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release
        #####
		yum repolist # confirm
        ```

	* On rhcsa3, add HTTP port 8300/tcp to the SELinux policy database:
	    ```shell
		semange port -l | grep http # 8300 not in list for http_port_t
		semanage port -a -t http_port_t -p tcp 8300
        ```

	* On rhcsa3, create VDO volume vdo1 on the 4GB disk with logical size 16GB and mounted with Ext4 structures on `/mnt/vdo1`:
	    ```shell
		TBC
        ```

	* Configure NFS service on rhcsa3 and share `/rh_share3` with rhcsa4. Configure AutoFS direct map on rhcsa4 to mount `/rh_share3` on `/mnt/rh_share4`. User user80 (create on both systems) should be able to create files under the share on the NFS server and under the mount point on the NFS client:
	    ```shell
		# on rhcsa3
		mkdir /rh_share3
		chmod 777 rh_share3
		useradd user80
		passwd user80
		# enter Temp1234
		dnf install cifs-utils -y
		systemctl enable nfs-server.service --now
		firewall-cmd --add-service=nfs --permanent
		firewall-cmd --reload
		vi /etc/exports
		# add line rh_share3 rhcsa4(rw)
		exportfs -av
		
		# on rhcsa4
		useradd user80
		passwd user80
		# enter Temp1234
		mkdir /mnt/rh_share4
		chmod 777 rh_share4
		# mount rhcsa3:/rh_share3 /mnt/nfs
		# mount | grep nfs # get details for /etc/fstab
		# vi /etc/fstab
		# add line rhcsa3:/rh_share3 /mnt/rh_share4 nfs4 _netdev 0 0
		# above not required with AutoFS
		dnf install autofs -y
		vi /etc/auto.master
		# add line /mnt/rh_rhcsa3 /etc/auto.master.d/auto.home
		vi /etc/auto.master.d/auto.home
		# add line * -rw rhcsa3:/rh_share3
        ```

	* Configure NFS service on rhcsa4 and share the home directory for user user60 (create on both systems) with rhcsa3. Configure AutoFS indirect map on rhcsa3 to automatically mount the home directory under `/nfsdir` when user60 logs on to rhcsa3:
	    ```shell
		# on rhcsa3
		useradd user60
		passwd user60
		# enter Temp1234
		dnf install autofs -y
		mkdir /nfsdir
		vi /etc/auto.master
		# add line for /nfsdir /etc/auto.master.d/auto.home
		vi /etc/auto.master.d/auto.home
		# add line for * -rw rhcsa4:/home/user60
		systemctl enable autofs.service --now

		# on rhcsa4
		useradd user60
		passwd user60
		# enter Temp1234
		vi /etc/exports
		# add line for /home rhcsa3(rw)
		exportfs -va	
        ```

	* On rhcsa4, create Stratis pool pool1 and volume str1 on a 1GB disk, and mount it to `/mnt/str1`:
	    ```shell
		dnf provides stratis
		dnf install stratis-cli -y
		systemctl enable stratisd.service --now
		stratis pool create pool1 /dev/sdc
		stratis filesystem create pool1 vol1
		mkdir /mnt/str1
		mount /stratis/pool1/vol1 /mnt/str1
		blkid # get information for /etc/fstab
		vi /etc/fstab
		# add line for UUID /mnt/str1 xfs defaults 0 0	
        ```

	* On rhcsa4, expand Stratis pool pool1 using the other 1GB disk. Confirm that `/mnt/str1` sees the storage expansion:
	    ```shell
		stratis pool add-data pool1 /dev/sdb
		stratis blockdev # extra disk visible
        ```

	* On rhcsa3, create a group called group30 with GID 3000, and add user60 and user80 to this group. Create a directory called `/sdata`, enable setgid bit on it, and add write permission bit for the group. Set ownership and owning group to root and group30. Create a file called file1 under `/sdata` as user user60 and modify the file as user80 successfully:
	    ```shell
		TBC
        ```

	* On rhcsa3, create directory `/dir1` with full permissions for everyone. Disallow non-owners to remove files. Test by creating file `/tmp/dir1/stkfile1` as user60 and removing it as user80:
	    ```shell
		TBC
        ```

	* On rhcsa3, search for all manual pages for the description containing the keyword "password" and redirect the output to file `/tmp/man.out`:
	    ```shell
		man -k password >> /tmp.man.out
		# or potentially man -wK "password" if relying on the description is not enough
        ```

	* On rhcsa3, create file lnfile1 under `/tmp` and create one hard link `/tmp/lnfile2` and one soft link `/boot/file1`. Edit lnfile1 using the links and confirm:
	    ```shell
		cd /tmp
		touch lnfile1
		ln lnfile1 lnfile2
		ln -s /boot/file1 lnfile1
        ```

	* On rhcsa3, install module postgresql version 9.6:
	    ```shell
		dnf module list postgresql # stream 10 shown as default
		dnf module install postgresql:9.6
		dnf module list # stream 9.6 shown as installed
        ```

	* On rhcsa3, add the http service to the "external" firewalld zone persistently:
	    ```shell
		firewall-cmd --zone=external --add-service=http --permanent
        ```

	* On rhcsa3, set SELinux type shadow_t on a new file testfile1 in `/usr` and ensure that the context is not affected by a SELinux relabelling:
	    ```shell
		cd /usr
		touch /usr/testfile1
		ll -Zrt # type shown as unconfined_u:object_r:usr_t:s0
		semange fcontext -a -t /usr/testfile1
		restorecon -R -v /usr/testfile1
        ```

	* Configure password-less ssh access for user60 from rhcsa3 to rhcsa4:
	    ```shell
		sudo su - user60
		ssh-keygen # do not provide a password
		ssh-copy-id rhcsa4 # enter user60 pasword on rhcsa4
        ```

1. RHCSA 8 Practise Exam

	* Interrupt the boot process and reset the root password:
	    ```shell
		# interrupt boot process and add rd.break at end of linux line
		mount -o remount, rw /sysroot
		chroot /sysroot
		passwd 
		# enter new passwd
		touch /.autorelabel
		# you could also add enforcing=0 to the end of the Linux line to avoid having to do this
		# ctrl + D
		reboot
        ```

	* Repos are available from the repo server at http://repo.eight.example.com/BaseOS and http://repo.eight.example.com/AppStream for you to use during the exam. Setup these repos:
	    ```shell
		vi /etc/yum.repos.d/localrepo.repo
		#[BaseOS]
		#name=BaseOS
		#baseurl=http://repo.eight.example.com/BaseOS
		#enabled=1
		#
		#[AppStream]
		#name=AppStream
		#baseurl=http://repo.eight.example.com/AppStream
		#enabled=1
		dnf repolist # confirm
		# you could also use dnf config-manager --add-repo
        ```

	* The system time should be set to your (or nearest to you) timezone and ensure NTP sync is configured:
	    ```shell
		timedatectl set-timezone Australia/Sydney
		timedatectl set-ntp true
		timedatectl status # confirm status
        ```

	* Add the following secondary IP addresses statically to your current running interface. Do this in a way that doesn’t compromise your existing settings:
	    ```shell
		# IPV4 - 10.0.0.5/24
		# IPV6 - fd01::100/64
		nmcli con edit System\ eth0
		goto ipv4.addresses 
		add 10.0.0.5/24
		goto ipv6.addresses 
		add fd01::100/64
		back
		save
		nmcli con edit System\ eth1
		goto ipv4.addresses 
		add 10.0.0.5/24
		goto ipv6.addresses 
		add fd01::100/64
		back
		save
		nmcli con reload
		# enter yes when asked if you want to set to manual
        ```

	* Enable packet forwarding on system1. This should persist after reboot:
	    ```shell
		vi /etc/sysctl.conf
		# add line for net.ipv4.port_forward=1
        ```

	* System1 should boot into the multiuser target by default and boot messages should be present (not silenced):
	    ```shell
		systemctl set-default multi-user.target
		vi /etc/default/grub
		# remove rhgb quiet from GRUB_CMDLINE_LINUX
		grub2-mkconfig -o /boot/grub2/grub.cfg
		reboot
        ```

	* Create a new 2GB volume group named “vgprac”:
	    ```shell
		lsblk
		# /dev/sdb is available with 8GB
		# the file system already has ~36MB in use and is mounted to /extradisk1
		umount /dev/sdb
		parted /dev/sdb
		mklabel
		# enter msdos
		mkpart
		# enter primary
		# enter xfs
		# enter 0
		# enter 2.1GB
		set
		# enter 1
		# enter lvm
		# enter on
		vgcreate vgprac /dev/sdb1
		# enter y to wipe	
        ```

	* Create a 500MB logical volume named “lvprac” inside the “vgprac” volume group:
	    ```shell
		lvcreate --name lvprac -L 500MB vgprac
        ```

	* The “lvprac” logical volume should be formatted with the xfs filesystem and mount persistently on the `/mnt/lvprac` directory:
	    ```shell
		mkdir /mnt/lvprac
		mkfs.xfs /dev/mapper/vgprac-lvprac
		vi /etc/fstab
		# comment out line for old /dev/sdb
		# add line for /dev/mapper/vgprac-lvprac
		mount -a
		df -h # confirm mounted
        ```

	* Extend the xfs filesystem on “lvprac” by 500MB:
	    ```shell
		lvextend -r -L +500MB /dev/vgprac/lvprac
        ```

	* Use the appropriate utility to create a 5TiB thin provisioned volume:
	    ```shell
		lsblk
		# /dev/sdc is available with 8GB
		dnf install vdo kmod-vdo -y
		umount /extradisk2
		vdo create --name=myvolume --device=/dev/sdc --vdoLogicalSize=5T --force
		vi /etc/fstab
		# comment out line for old /dev/sdc
        ```

	* Configure a basic web server that displays “Welcome to the web server” once connected to it. Ensure the firewall allows the http/https services:
	    ```shell
		vi /var/www/html/index.html
		# add line "Welcome to the web server"
		systemctl restart httpd.service
		curl http://localhost
		# success
		# from server1
		curl http://server2.eight.example.com
		# no route to host shown
		# on server2
		firewall-cmd --add-port=80/tcp --permanent
		firewall-cmd --reload
		# from server1
		curl http://server2.eight.example.com
		# success
        ```

	* Find all files that are larger than 5MB in the /etc directory and copy them to /find/largefiles:
	    ```shell
		mkdir -p /find/largefiles
		find /etc/ -size +5M -exec cp {} /find/largefiles \;
		# the {} is substituted by the output of find, and the ; is mandatory for an exec but must be escaped
        ```

	* Write a script named awesome.sh in the root directory on system1. If “me” is given as an argument, then the script should output “Yes, I’m awesome.” If “them” is given as an argument, then the script should output “Okay, they are awesome.” If the argument is empty or anything else is given, the script should output “Usage ./awesome.sh me|them”:
	    ```shell
		vi /awesome.sh
		chmod +x /awesome.sh
		# contents of awesome.sh
		##!/bin/bash
		#if [ $1 = "me" ]; then
		#	echo "Yes, I'm awesome."
		#elif [ $1  = "them"]; then
		#	echo "Okay, they are awesome."
		#else
		#	echo "Usage /.awesome.sh me|them"
		#fi
		#note that = had to be used and not -eq
        ```

	* Create users phil, laura, stewart, and kevin. All new users should have a file named “Welcome” in their home folder after account creation. All user passwords should expire after 60 days and be at least 8 characters in length. Phil and laura should be part of the “accounting” group. If the group doesn’t already exist, create it. Stewart and kevin should be part of the “marketing” group. If the group doesn’t already exist, create it:
	    ```shell
		groupadd accounting
		groupadd marketing
		vi /etc/security/pwquality.conf
		# uncomment out the line that already had minlen = 8
		mkdir /etc/skel/Welcome
		useradd phil -G accounting
		useradd laura -G accounting
		useradd stewart -G marketing
		useradd kevin -G marketing
		chage -M 60 phil
		chage -M 60 laura
		chage -M 60 stewart
		chage -M 60 kevin
		chage -l phil # confirm
		# can also change in /etc/login.defs
        ```

	* Only members of the accounting group should have access to the `/accounting` directory. Make laura the owner of this directory. Make the accounting group the group owner of the `/accounting` directory:
	    ```shell
		mkdir /accounting
		chmod 770 /accounting
		chown laura:accounting /accounting
        ```

	* Only members of the marketing group should have access to the `/marketing` directory. Make stewart the owner of this directory. Make the marketing group the group owner of the `/marketing` directory:
	    ```shell
		mkdir /marketing
		chmod 770 /marketing
		chown stewart:marketing /marketing
        ```

	* New files should be owned by the group owner and only the file creator should have the permissions to delete their own files:
	    ```shell
		chmod +ts /marketing
		chmod +ts /accounting
        ```

	* Create a cron job that writes “This practice exam was easy and I’m ready to ace my RHCSA” to `/var/log/messages` at 12pm only on weekdays:
	    ```shell
		crontab -e
		#* 12 * * 1-5 echo "This practise exam was easy and I'm ready to ace my RHCSA" >> /var/log/messagees
		# you can look at info crontab if you forget the syntax
        ```
