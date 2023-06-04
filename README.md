# RHCSA...
the collection of practice questions and lab environment for ex200 from all around github...
![image](repo-img/redhat.png)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT "MIT License")

<p align="center">
  <h1 align="center">Red Hat - EX200 (RHCSA)</h1>
  <p align="center">The skills tested in this exam are the foundation for system administration across all Red Hat® products.</p>
  <br />
</p>

---
TIP#1

- First thing in exam -> read all questions and pick all related to partitions and logical volumes first. If you make a mistake at beginning you will be able to revert your changes and start exam from scratch. If you make a mistake with partitions in middle-end of exam there will be no time to redo all tasks.

TIP#2

- At the beginning of exam count number of tasks and divide to time you have (2.5h = 150 min.) it will give you average time on one task. If you are spending on some task too much time (double of average time ) drop it, proceed with next question. Is important to finish all “easy tasks” as they will give “easy score points”. You can always return to the hard question at the end of exam if time is left.

TIP#3

- Set up ssh pub key authentification at the beginning of an exam. It will take extra time out of your exam but it will pay off, as you need to reboot your machine regularly to ensure your config is persistent.

TIP#4

- Learn man command , there is no internet on exam host so your best friend will be mandb && man -K topic and catman && man -Kw key_term.

TIP#5

- Set up ssh pub key authentification at the beginning of an exam. It will take extra time out of your exam but it will pay off, as you need to reboot your machine regularly to ensure your config is persistent.

TIP#6

- Develop a habit of checking every step / change you made. For example: add user -> chek /etc/passwd file, made changes to fstab -> reboot machine, ensure partition is mounted.

---
## [**Vagrant Lab Setup**](VagrantPlayground/README.md) - RHCSA/RHCE Lab Environment

```
192.168.56.254    bastion        bastion.lab.example.com

192.168.56.9      workstation    workstation.lab.example.com
192.168.56.10     servera        servera.lab.example.com
192.168.56.11     serverb        serverb.lab.example.com

192.168.56.222     ·······        use this ip for LAN access 
```
**NOTE**: VM's are empty inside... it's just playground enviroment to train...

---

## [**Red Hat Certified System Administrator (RHCSA)** exam objectives](https://www.redhat.com/en/services/training/ex200-red-hat-certified-system-administrator-rhcsa-exam?section=objectives)


**Study points for the exam**

RHCSA exam candidates should be able to accomplish the tasks below without assistance. These have been grouped into several categories.


**Understand and use essential tools**
- Access a shell prompt and issue commands with correct syntax
- Use input-output redirection (>, >>, |, 2>, etc.)
- Use grep and regular expressions to analyze text
- Access remote systems using SSH
- Log in and switch users in multiuser targets
- Archive, compress, unpack, and uncompress files using tar, star, gzip, and bzip2
- Create and edit text files
- Create, delete, copy, and move files and directories
- Create hard and soft links
- List, set, and change standard ugo/rwx permissions
- Locate, read, and use system documentation including man, info, and files in /usr/share/doc

**Create simple shell scripts**
- Conditionally execute code (use of: if, test, [], etc.)
- Use Looping constructs (for, etc.) to process file, command line input
- Process script inputs ($1, $2, etc.)
- Processing output of shell commands within a script

**Operate running systems**
- Boot, reboot, and shut down a system normally
- Boot systems into different targets manually
- Interrupt the boot process in order to gain access to a system
- Identify CPU/memory intensive processes and kill processes
- Adjust process scheduling
- Manage tuning profiles
- Locate and interpret system log files and journals
- Preserve system journals
- Start, stop, and check the status of network services
- Securely transfer files between systems

**Configure local storage**
- List, create, delete partitions on MBR and GPT disks
- Create and remove physical volumes
- Assign physical volumes to volume groups
- Create and delete logical volumes
- Configure systems to mount file systems at boot by universally unique ID (UUID) or label
- Add new partitions and logical volumes, and swap to a system non-destructively

**Create and configure file systems**
- Create, mount, unmount, and use vfat, ext4, and xfs file systems
- Mount and unmount network file systems using NFS
- Configure autofs
- Extend existing logical volumes
- Create and configure set-GID directories for collaboration
- Diagnose and correct file permission problems

**Deploy, configure, and maintain systems**
- Schedule tasks using at and cron
- Start and stop services and configure services to start automatically at boot
- Configure systems to boot into a specific target automatically
- Configure time service clients
- Install and update software packages from Red Hat Network, a remote repository, or from the local file system
- Modify the system bootloader

**Manage basic networking**
- Configure IPv4 and IPv6 addresses
- Configure hostname resolution
- Configure network services to start automatically at boot
- Restrict network access using firewall-cmd/firewall

**Manage users and groups**
- Create, delete, and modify local user accounts
- Change passwords and adjust password aging for local user accounts
- Create, delete, and modify local groups and group memberships
- Configure superuser access

**Manage security**
- Configure firewall settings using firewall-cmd/firewalld
- Manage default file permissions
- Configure key-based authentication for SSH
- Set enforcing and permissive modes for SELinux
- List and identify SELinux file and process context
- Restore default file contexts
- Manage SELinux port labels
- Use boolean settings to modify system SELinux settings
- Diagnose and address routine SELinux policy violations

**Manage containers**
- Find and retrieve container images from a remote registry
- Inspect container images
- Perform container management using commands such as podman and skopeo
- Build a container from a Containerfile
- Perform basic container management such as running, starting, stopping, and listing running containers
- Run a service inside a container
- Configure a container to start automatically as a systemd service
- Attach persistent storage to a container
- As with all Red Hat performance-based exams, configurations must persist after reboot without intervention.

### Sources for original repositories:

---
- [Abdulhamid97Mousa](https://github.com/Abdulhamid97Mousa) - https://github.com/Abdulhamid97Mousa/RHCSA-EX200
- [chlebik](https://github.com/chlebik) - https://github.com/chlebik/rhcsa-practice-questions
- [manoj7shekhawat](https://github.com/manoj7shekhawat) - https://github.com/manoj7shekhawat/rhcsa
- [Mircea Niscoveanu](https://github.com/niscoveanumircea) - https://github.com/niscoveanumircea/RHEL8_exam_documentations
- [omarhd66](https://github.com/omarhd66) - https://github.com/omarhd66/RHCSA-EX200-RESUME
- [SHrEE-7](https://git.codeproxy.net/SHrEE-7) - https://github.com/SHrEE-7/RHCSA_RHEL-8_With-Practice-Questions
- [SpringEp](https://github.com/SpringEp) - https://github.com/SpringEp/RHCSA8-labs-exams-scripts
- [touhidece](https://github.com/touhidece) - https://github.com/touhidece/rhcsa_ex200_rhel8_dumps

### MIT License
---
```
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
THE USE OR OTHER DEALINGS IN THE SOFTWARE. 

Copyright (c) 2023
```
