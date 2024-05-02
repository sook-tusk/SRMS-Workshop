May 2024

# Setup github and RStudio to deposit your code

# Steps
## 1. Install git.
In MacOS, git is pre-installed.

**Check if already installed**
Mac Launchpad > terminal > open terminal > type git version
git version 2.39.3 (Apple Git-146)

**If not, install Git**
Visit here to install git.
https://git-scm.com/downloads

Alternatively, install GitHub Desktop
https://desktop.github.com/


> Once the download completes, double-click the file to install and launch the app immediately.
>
> After authentication, "Let's get started" window appears. Stop there.
>
> See tutorial here:
> https://www.macobserver.com/tips/how-to/set-up-install-git-mac/


## 2. Create a github account.
Visit https://github.com/ and click Sign Up.
Then follow the on-screen instructions. 

## 3. Connect RStudio to Git
Essentially, you are establishing remote connection.

First, launch RStudio.
In menu, go to *Tools  > Global Options > Git/SVN*

a. Tick the box for **Enable version control interface for RStudio projects**

b. Set the git path settings in RStudio:
- Set Git executable (Windows):
  C:/Program Files/Git/bin/git.exe
- Set Git executable (Mac):
  /usr/bin/git

c. SSH key:
Need it for encryption purposes.
It allows you to connect to GitHub without having to provide your username and password each time you push to GitHub.
https://frbcesab.github.io/rsetup/chapters/github-ssh.html

Click on Create SSH Key, select ED25519 and then click on Create (you can omit the passphrase). This new SSH keys pair has been stored in ~/.ssh/.
Click on **View public key** and copy it.

## 4. We need to paste this SSH key to github page.
Go to the page https://github.com/settings/keys and click on New SSH key Choose a name for your key (e.g. your laptop name, 2024-sk-mac) and paste your public key. Finally click on Add SSH key

Apply and Click OK. Ensure to restart RStudio.

(OPTIONAL) Test the SSH connection with GitHub.
Open a terminal in RStudio and run:
ssh -T git@github.com

*The authenticity of host '[92.168.45.3]:22' can't be established.
ED25519 key fingerprint is ...
Are you sure you want to continue connecting (yes/no/[fingerprint])?*


If this is printed, it's correctly done.  Type yes and press Enter.


## 5. Log in to github, then create a repository.
Give a name and a short description.
As a test, I created a Private repository.
Then, click create repository.

In the repository, click Code (in green) drop-down menu.
Instead of HTML URL, we need SSH URL to connect this repo with RStudio. We just check SSH URL for now.

## 6. Clone github repo to a RStudio project
At the top-right corner, click on Project upside-down arrow > New Project... > Version Control > Git >
 Clone Git Repository >

 In Repository URL:
 paste the SSH URL from github repository
   e.g. *git@github.com:srms1/test.git*

Click Code (in green) drop-down menu.
Instead of using HTML URL, ensure to use SSH URL.

Customise the subdirectory as appropriate.

Then, click Create Project.

## 7. Upload(push) your project in RStudio to github:
Update your files in RStudio. When complete, do the following.
Navigate to the **Git** tab in RStudio, which is located next to the *Environment* tab.

*Tick* the box to select files to share > **Commit**. 

In Commit message window, type a brief description.
Then, Press **Commit** > Close the window >
Press the **Push** arrow button (in green)

To verify in github repo online, press refresh button.

*Note: If asked for Username, and password for 'https://github.com/', type as appropriate*

Voila! You have just shared your project online by remotely connecting RStudio to github!

# Resources (check screenshots)
https://frbcesab.github.io/rsetup/chapters/github-ssh.html

https://erikaduan.github.io/posts/2021-05-30-syncing-to-github/

https://medium.com/singapore-rails-learning-group/how-to-push-your-code-to-github-and-publish-your-first-page-8b0e1f4caf2a

# Exercise
Create several private repositories and experiment with github and RStudio. When you feel confident, share your project as a public repository!