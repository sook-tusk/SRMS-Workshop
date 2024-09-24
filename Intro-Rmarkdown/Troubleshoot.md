
# Rmarkdown fails to produce a PDF file
Try running this in the console.
```{r}
install.packages("tinytex")
tinytex::install_tinytex()
```
If this does not work, uninstall tinytex first.
```{r}
uninstall_packages("tinytex")
```

# Incrementally test
Incrementally test options.
First, try with a very simple file, then add options such as fancyhdr.
The tinytex in your system will download
additional LaTeX packages. Once these work okay, experiment with the code involving the stargazer package.

# Stargazer LaTeX output wouldn't work?
See above.

As stargazer package may rely on other LaTeX packages, try with other LaTeX options first to minimise errors.

# fancyhdr installation log
In some instances, file conversions may take a while as RStudio will install missing LaTeX packages.

```
tlmgr.pl: package repository https://anorien.csc.warwick.ac.uk/mirrors/CTAN/systems/texlive/tlnet (not verified: pubkey missing)
tlmgr.pl install: package already present: pdftex
[1/1, ??:??/??:??] install: fancyhdr [6k]
running mktexlsr ...
done running mktexlsr.
tlmgr.pl: package log updated: C:/Users/yourname/AppData/Roaming/TinyTeX/texmf-var/web2c/tlmgr.log
tlmgr.pl: command log updated: C:/Users/yourname/AppData/Roaming/TinyTeX/texmf-var/web2c/tlmgr-commands.log
```

# General tips
If at all possible, using tinytex available in RStudio would be ideal. Fixing errors relating to LaTeX can be challenging for first time users.
