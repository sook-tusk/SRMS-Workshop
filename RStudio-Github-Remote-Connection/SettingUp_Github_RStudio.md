
Oct 2024

# Connect github and RStudio to publish your project

# Steps

## 1. Install git.

**Check if already installed**
In MacOS, git is pre-installed.

To check, launch RStudio \> Click on Terminal tab \> type git version.
(Alternatively, in Mac, Launchpad \> terminal \> open terminal \> type git version)

> git version 2.39.3 (Apple Git-146)
>
> git version 2.37.2.windows.2

If git version is printed as above, move on to the next step.

**If not, install Git** by visiting here: <https://git-scm.com/downloads>

Verify the installation by using Terminal tab in RStudio. Type "git version" in Terminal.

Alternatively, install GitHub Desktop <https://desktop.github.com/>

> Once the download completes, double-click the file to install and
> launch the app immediately.
>
> After authentication, "Let's get started" window appears. Stop
> there.
>
> See tutorial here:
> <https://www.macobserver.com/tips/how-to/set-up-install-git-mac/>

## 2. Create a github account.

Visit <https://github.com/> and click Sign Up. Then follow the
on-screen instructions.

## 3. Connect RStudio to Git

Essentially, you are establishing remote connection.

First, launch RStudio. In menu, go to *Tools \> Global Options \>
Git/SVN*

a.  Tick the box for **Enable version control interface for RStudio
    projects**

b.  Set the git path settings in RStudio:

-   Set Git executable (Windows): C:/Program Files/Git/bin/git.exe
-   Set Git executable (Mac): /usr/bin/git

c.  SSH key: Need it for encryption purposes. It allows you to
    connect to GitHub without having to provide your username and
    password each time you push to GitHub.
    <https://frbcesab.github.io/rsetup/chapters/github-ssh.html>

Click on Create SSH Key, select ED25519 and then click on Create
(you can omit the passphrase). This new SSH keys pair has been
stored in \~/.ssh/. Click on **View public key** and copy it.

## 4. We need to paste this SSH key to github page.

Go to the page <https://github.com/settings/keys> and click on New
SSH key Choose a name for your key (e.g. your laptop name,
2024-sk-mac) and paste your public key. Finally click on Add SSH key

Apply and Click OK. Ensure to restart RStudio.

(OPTIONAL) Test the SSH connection with GitHub. Open a terminal in RStudio and run:

> ssh -T git\@github.com

*Hi yourusername! You've successfully authenticated, but GitHub does not provide shell access.*

If this is printed, it's correctly configured.

## 5. Log in to github, then create a repository.

Give a name and a short description. As a test, I created a *Private*
repository. Ensure to create a readme file by ticking the box, *Add a README file*. Then, click Create repository.

In the repository, click Code (in green) drop-down menu. Instead of
HTML URL, we need SSH URL to connect this repo with RStudio. We just
check SSH URL for now.

## 6. Clone github repo to an RStudio project
Relaunch RStudio.
At the top-right corner, click on Project upside-down arrow \> New
Project... \> Version Control \> Git \> Clone Git Repository \>

In Repository URL: paste the SSH URL from github repository e.g.

> **git@github.com:srms1/test.git**

*Recall that to locate the URL in github repository, click Code (in green) drop-down menu. Instead of using HTML URL,
ensure to use SSH URL.*

Now, back in RStudio, customise the subdirectory as appropriate.

Then, click Create Project.

## 7. Upload(push) your project in RStudio to github:

Update your README file or create a new R script file in RStudio. To reflect the changes, we need to execute in two stages: *Commit* and *Push*.

First, navigate to the **Git** tab in RStudio, which is typically located next to the *Environment* tab.
(If  **Git** tab is not shown, go to *Tools > Global Options > Pane Layout*. Then, tick the box for **VCS** > Click Apply > OK).

You will see modified files (in this example, your README file) are indicated by `M`.

Now, *Tick* the box to select *modified* files \> Click **Commit**.

In the Commit message window, type a brief description. Then, Press
**Commit** \> Close the window.

Finally, press the **Push** arrow button
(in green).

At this stage, you can close two remaining Commit/Push windows.

To verify in github repo online, press refresh button in your browser.

*Note: If asked for Username, and password for
'<https://github.com/>', type as appropriate*

Voila! You have just shared your project online by remotely
connecting RStudio to github!

# Resources (check screenshots)

<https://frbcesab.github.io/rsetup/chapters/github-ssh.html>

<https://erikaduan.github.io/posts/2021-05-30-syncing-to-github/>

<https://medium.com/singapore-rails-learning-group/how-to-push-your-code-to-github-and-publish-your-first-page-8b0e1f4caf2a>

# Troubleshoot
- Unstable Internet connection could cause errors when you push the changes. Try again when the connection becomes stable.

- Is the Terminal tab not visible in RStudio? Press *Ctrl+Shift+P* to bring up Command Palette > Type **Show Terminal** > Press Enter.
*Note the option changes from Off to On with Enter key.*
Restart RStudio and you'll see the Terminal tab.

# Exercise
Create or modify other files and push the changes as shown in Step 7. Then, create several private repositories and experiment with github and RStudio (You can skip steps 1-4 and follow the steps 5-7 now with additional repositories).  When you feel confident, share your project as a public repository!

