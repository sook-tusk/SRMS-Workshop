# 1
============= R ===========
1. System updates 
sudo apt update
sudo apt -y upgrade

2. Add CRAN repository 

sudo tee /etc/apt/sources.list.d/cran.list 
deb http://cloud.r-project.org/bin/linux/debian bookworm-cran40/


3a. Install R
sudo apt update (Add this before proceeding?)
sudo apt install r-base
sudo apt -y install r-base (Try this??)

If this fails and throws an error:
The following packages have unmet dependencies: r-base : Depends: r-base-core (>= 4.0.3-1~bustercran.0) but it is not going to be installed Depends: r-recommended (= 4.0.3-1~bustercran.0) but it is not going to be installed Recommends: r-base-html but it is not going to be installed E: Unable to correct problems, you have held broken packages.

UPDATE SOURCE LIST


SOLUTION:
3b. explicitly say the repository before r-base (so that other competing repository is not accessed instead!!)

sudo apt update
sudo apt install -t bookworm-cran40 r-base-core
sudo apt install -t bookworm-cran40 r-base

This setup allows you to install r-base-core from bookworm-cran40 (r-base-html will be installed as dependency).

============= RSTUDIO ===========
4. Download an appropriate RStudio deb file from website in Terminal

sudo apt -y install wget
wget https://download1.rstudio.org/electron/focal/amd64/rstudio-2023.06.2-561-amd64.deb

5. Install now using the dpkg (Debian pkg) (package manager)

sudo dpkg -i rstudio-2023.06.2-561-amd64.deb

## References
https://idroot.us/install-r-and-rstudio-debian-12/
https://computingforgeeks.com/how-to-install-r-and-rstudio-on-debian/

# 2
====================Sources list =========

/etc/apt/sources.list
Manages installations and dependencies

Archive Type: One can use two types of archive types, either “deb” for binaries of the repository or “deb-src” for source file format packages.

TO CONFIGURE
Step 1: Open the Root Terminal

In Terminal,

sudo su
root@user: /home/vboxuser#

(Takes you to root@user: /home/vboxuser# )

Step 2: Create a Backup (starting with cp /sth)
root@user: /home/vboxuser# cp /etc/apt/sources.list /etc/apt/sources.list.bak

Step 3: Open the sources.list File using nano(nano is a command line editor,which is hardwork! Try with caret!! Or gedit?)
root@user: /home/vboxuser# nano /etc/apt/sources.list

root@user: /home/vboxuser# caret /etc/apt/sources.list

Step 4: Edit the File (can I do it using text editor??)

## additionally
deb https://cran.rstudio.com/bin/linux/debian bookworm-cran35

## Debian Main Repositories
deb http://deb.debian.org/debian/ bookworm main contrib non-free
deb-src http://deb.debian.org/debian/ bookworm main contrib non-free
 
## Debian Security Updates
deb http://security.debian.org/debian-security bookworm-security main contrib non-free
deb-src http://security.debian.org/debian-security bookworm-security main contrib non-free
 
## Debian Updates
deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free
deb-src http://deb.debian.org/debian/ bookworm-updates main contrib non-free

OR...(NEED FIRMWARE ENDING)
deb https://deb.debian.org/debian bookworm main non-free-firmware
deb-src https://deb.debian.org/debian bookworm main non-free-firmware
deb https://security.debian.org/debian-security bookworm-security main non-free-firmware
deb-src https://security.debian.org/debian-security bookworm-security main non-free-firmware
deb https://deb.debian.org/debian bookworm-updates main non-free-firmware
deb-src https://deb.debian.org/debian bookworm-updates main non-free-firmware
Step 5: Update the Packages
root@user: /home/vboxuser# apt update

Step 6: Upgrade the Packages
root@user: /home/vboxuser# apt upgrade -y

Step 7: Verify the Changes (use cat)
root@user: /home/vboxuser# cat /etc/apt/sources.list

Step 8: Exit the Root Terminal
root@user: /home/vboxuser# exit


## Reference
https://itslinuxfoss.com/configure-sources-list-debian-12/

Firmware ending here:
https://www.veeble.com/kb/debian-repo-urls-for-sources-list-file/

# 3 
============ Editor ========
Caret

We can install Caret by visiting Chrome Web Store,

https://chromewebstore.google.com/detail/caret/fljalecfjciodhpcledpamjachpmelml?hl=en

Gedit:
sudo apt install gedit


## Ref
https://medium.com/@dihuta/code-editor-for-chromeos-9ac46a1734d9


====== Troubleshooting =============

see which version is available

sudo apt search r-base | grep ^r-base

We’re going to configure an additional Debian package repository on our Linux system as that has a newer version of R available in it.

Install gnupg2 and then use it to import the key for the repo:

sudo apt install -y gnupg2
sudo apt-key adv --keyserver keys.gnupg.net --recv-key 'E19F5F87128899B192B1A2C2AD5F960A256A04AF'

Now add the repository to the system configuration: open the file.

sudo vi /etc/apt/sources.list

Add this
deb https://cran.rstudio.com/bin/linux/debian bookworm-cran35


Source list changes to be updated and recorded
sudo apt update
sudo apt upgrade

Then, install R
sudo apt install -y r-base r-base-dev

## Ref
https://blog.sellorm.com/2018/12/20/installing-r-and-rstudio-on-a-chromebook/





