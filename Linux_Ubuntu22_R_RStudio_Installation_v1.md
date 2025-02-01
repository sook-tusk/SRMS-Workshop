
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
do you want to continue? Y/n 
```
Type Y

Then, installation will begin. Check the R version to verify whether R is installed successfully.
```
R --version 
```

## To download RStudio
1. Check your Ubuntu version by accessing *Settings > About*.
(mine is Ubuntu 22)

2. Launch a browser of your choice and type *download RStudio* in the search bar.

3. Go to the Posit page and download *ubutu .deb* file which is appropriate for your OS.

4. (in Terminal), we will go to the *Downloads* folder and indicate the downloaded *.deb* file to install by typing:
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

## Install tidyverse in Terminal
RStudio may not install the `tidyverse` package properly as dependencies cannot not installed somehow. In such case, you can use Terminal instead. 

1. In terminal, run the following before installing `tidyverse`.
```
sudo apt install libssl-dev libcurl4-openssl-dev unixodbc-dev libxml2-dev libmariadb-dev libfontconfig1-dev libharfbuzz-dev libfribidi-dev libfreetype6-dev libpng-dev libtiff5-dev libjpeg-dev
```
Note this will take a while. 

2. Then, proceed with the `xml2` installation.

```
sudo R -e 'install.packages("xml2", dependencies = T, INSTALL_opts = c("--no-lock"))'
```
3. Now, you are ready to install `tidyverse`.
```
sudo R -e 'install.packages("tidyverse")'
```
4. When installation is complete, launch RStudio and load `tidyverse`. Then, test if it works as intended. Here's an example:
```r
library(tidyverse)
a <- mtcars %>% select(mpg)
a
```


## Reference
https://gcore.com/learning/how-to-install-r-on-ubuntu/

https://medium.com/@jamie84mclaughlin/installing-r-and-the-tidyverse-on-ubuntu-20-04-60170020649b
