
Cloning a Github repository using Terminal

# Preliminary step:
In a repository, click the green Code button and select HTTPS. 
Then, copy the repository URL:
https://github.com/sook-tusk/SRMS-Workshop.git

# Cloning a Github repository
1. Launch RStudio (or VS Code)
2. Then, locate the **Terminal** tab
3. Navigate to the folder where the project folder will be placed.
4. Next, in the Terminal, **type the repository URL** you copied earlier:
git clone https://github.com/username/repository.git

## Example 1 (Terminal in RStudio):   
To copy and save the repository in a sub-folder, `2_Practical`:

```zsh
W:\path\01_DCVR> cd 2_Practical
W:\path\01_DCVR\2_Practical > git clone https://github.com/sook-tusk/SRMS-Workshop.git
```

## Example 2 (Git Bash Terminal in VS Code): 
To copy and save the repository in `W drive`:

```zsh
S@DESKTOP-H3PQDN5 MINGW64 /w/path/24_R_Tutorial
$ cd W:
S@DESKTOP-H3PQDN5 MINGW64 /w
$ git clone https://github.com/sook-tusk/SRMS-Workshop.git
```

> [!TIP] 
> Please note that `cd` stands for "change directory".

