
---
title: "Commit and push changes using Terminal"
---

# Follow the steps below:
1. Launch RStudio (or VS Code)
2. Then, open the project and edit files
3. Locate the **Terminal** tab or pane
4. Next, in the Terminal, run commands to *stage files*, 
*commit changes*, and *push* the changes. 

Execute the following:

## 4.1 To add all changed (**staging**) files, run `git add .`
```zsh
W:\path\SRMS-Workshop>**git add .**
```
## 4.2 Now, to verify which modified files are to be selected, run `git status`
```zsh
W:\path\SRMS-Workshop>**git status**
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
modified:   2_Commit_Push_Changes_Using_Terminal.md  
```
## 4.3 Proceed with running `git commit -m "Your brief message"`
```zsh
W:\path\SRMS-Workshop>**git commit -m "typo fixed"**
```

## 4.4 Finally, to push changes, run `git push`
```zsh
W:\path\SRMS-Workshop>**git push**
```

> [!TIP] 
> If your Terminal is unresponsive, open a new terminal to execute the commands.

# Reference {-}
<https://user-guidance.analytical-platform.service.justice.gov.uk/github/command-line-git.html#make-a-copy-of-a-github-project-39-cloning-39>
