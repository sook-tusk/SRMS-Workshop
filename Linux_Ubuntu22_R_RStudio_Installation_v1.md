
# Installing R and RStudio for Linux users

## How to enter password
Type your password when you are prompted to enter. It won't print anything as you type but it works.

Then press enter.

## To download R 4.4

1. Before starting, it’s a good idea to update your system packages to their latest versions.

Press *Ctrl+Alt+T* to open **Terminal** (or access via Applications).
In Terminal, type these one at a time.

```
sudo apt update
sudo apt upgrade
```

(takes a while)

2. To ensure you get the latest version of R, we need to paste Ubuntu server.
In Terminal, type the following.
```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
```

3. (in Terminal) Add the CRAN repository

```
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
```

Press **Enter** to continue. Then, ubuntu will add the CRAN repository to its list of repositories.

4. (in Terminal) Now install R by typing:
```
sudo apt install r-base
```

You'll be prompted with a question below:
```
do you want to continue? y/n 
```
Type Y

Then, installation will begin. Check the R version to verify whether R is installed successfully.
```
R --version 
```

## To download RStudio
1. Check your Ubutun version by accessing *Settings > About*.
(mine is Ubuntu 22)

2. Launch a browser of your choice and type *download RStudio* in the search bar.

3. Go to the Posit page and download *ubutu .deb* file which is appropriate for your OS.

4. (in Terminal), we will go to the Downloads folder and indicate the downloaded .deb file to install by typing:
```
cd Downloads
sudo dpkg -i rstudio-2024.12.0-467-amd64.deb
```

Ensure to modify the filename as appropriate.

If you are getting an error message, type below to fix it:
```
sudo apt -f install
```

This will complete the installation process.

## Example entry in Terminal
```
yourname@yourname-Lenovo-ideapad-710S-13IKB:~$ cd Downloads
yourname@yourname-Lenovo-ideapad-710S-13IKB:~/Downloads$ sudo dpkg -i rstudio-2024.12.0-467-amd64.deb
```

## Launch RStudio
Once installation was successful, locate RStudio in Applications by typing *RStudio*.

Alternatively, in terminal, typing *rstudio*
will launch it. 

## Reference
https://gcore.com/learning/how-to-install-r-on-ubuntu/
