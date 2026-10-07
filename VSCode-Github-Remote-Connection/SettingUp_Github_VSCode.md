# Use VSCode to publish your project in GitHub

In VS Code, we will use Command Palette extensively as it allows us to quickly type commands and execute procedures. To trigger the command palette, press **F1** or **Ctrl+shift+p** on Windows PC or **Cmd+shift+p** on Mac. We will implement the procedures in five steps.

## 1. Install git.

**Check if already installed** In MacOS, git is pre-installed.

To check, launch RStudio \> Click on Terminal tab \> type git version. (Alternatively, in Mac, Launchpad \> terminal \> open terminal \> type git version)

> git version 2.39.3 (Apple Git-146)
>
> git version 2.37.2.windows.2

If git version is printed as above, move on to the next step.

**If not, install Git** by visiting here: <https://git-scm.com/downloads>

Verify the installation by using Terminal. Type "git version" in Terminal.

## 2. Create a GitHub account.

Visit <https://github.com/> and click Sign Up. Then follow the on-screen instructions and sign in to your account.

## 3. Create a quarto project in VSCode
In VSCode, create a new project.
Trigger VS Code command-palette and type:
```json
Quarto: Create Project
``` 
Then, select:
```json
Default Project
``` 
If you are interested in developing a website, you could select the *Website Project* option. When prompted to choose a directory, select an appropriate location and enter a title for the project. 

> [!TIP]
> If you are unsure about the procedure, create a test project folder for now and experiment with it.

## 4. Now, connect to GitHub

Trigger command palette and type:
```json
Publish to GitHub
```

If you are not already signed in, a pop-up window will appear asking you to grant permission. Click *Allow* and enter your credentials to authorise the connection between GitHub and VS Code.

From your browser, a new VSCode tab opens with a window asking you to select an option (if you are already signed in, you do not need to leave VSCode for this step). Select the appropriate option from the two repository types:
```json
Publish to GitHub private repository accountname/projectname
Publish to GitHub public repository accountname/projectname
```
In this exercise, we will choose the first option, *a private repository*.
Once the option is selected, GitHub authenticates with VS Code and starts creating the repository.

## 5. Upload(Commit and push) your project in VSCode to Github:

Create or update your README file. To reflect the changes in your GitHub repository, you need to complete three stages: *Staged Changes*, *Commit* and *Push*.

First, navigate to the **Git** tab in VSCode.

You will see modified files (in this example, your README file) marked with `M`.

Hover over the modified files to display a menu of symbols, including + symbol. Click the + symbol to select files under **Changes** to move to **Staged Changes** area.

If you select all the changed files, you will notice that no files remain under the Changes area.

In the Commit message window, add a brief description of your changes before clicking Commit. Once you click Commit, the Commit button will be updated to  Sync Changes. Click **Sync Changes** immediately after pressing the **Commit** button (The corresponding procedure for *Sync changes* is called *Push* in RStudio).

To verify that your changes have been uploaded to your GitHub repository, refresh the page in your browser.

Voila! You have just shared your project online by remotely connecting VSCode to Github! Well-done!

> [!TIP]
> If prompted for a username, and password for '<https://github.com/>', enter them as appropriate*

# Troubleshooting

## Deal with DS_Store
During the process of committing changes (and push) in VSCode to github, you'll notice that DS_Store file is created and you wish to remove it. One can address this issue in three steps as shown below.

### 1) First, add this in the .gitignore file

```r
# Ignore .DS_Store files
.DS_Store
```
An example .gitignore file is provided [here](/.gitignore).

### 2)  in Terminal, type:

```zsh
git rm --cached .DS_Store
```

For example, for a project, *2026-10-07_Test*, you'll expect to see this output in Terminal:
```zsh
(base) yourname@Mac 2026-10-07_Test % git rm --cached .DS_Store
rm '.DS_Store'
(base) yourname@Mac 2026-10-07_Test % 
```
This removes the *.DS_Store file* from your most recent commit.

### 3) Then, commit changes
Follow the instructions in step 5, which illustrate how to stage, commit and sync changes.

This ensures that **.DS_Store** files are no longer tracked and are removed from the repository. 

## Unresponsiveness
-   An unstable internet connection may cause errors when you push the changes. Try again once the connection is stable.

# EXTRA
You can also remove unnecessary files, including the *yml* file, as they are intended for a website. The QMD file can be treated as an MD file or simply be removed. These changes can be reflected in your repository (see step 5). 

Depending on your aims, you may also include files created in RStudio to the *.gitignore* file. For instance:
```
.Rproj.user
.Rhistory
.Ruserdata
```
 
# Exercise
Create several private repositories and experiment with Github and VSCode (You can skip steps 1-2 here). When you feel confident, share your project as a public repository! 

# Resources 
https://stackoverflow.com/questions/46877667/how-to-add-a-new-project-to-github-using-vs-code

https://stackoverflow.com/questions/69005605/ds-store-is-showing-up-as-a-pending-change-in-my-git-repo-despite-being-untrack

https://www.slingacademy.com/article/git-what-is-ds_store-and-should-you-ignore-it/