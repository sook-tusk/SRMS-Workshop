
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

# object 'partition_yaml_front_matter' not found
Close all file tabs open in the Source pane (all Rmd files). 
Restart RStudio and convert an Rmd file again.
See the full discussion here:
<https://github.com/rstudio/rstudio/issues/11552>

# Compile errpr
It is important to place the output argument at the end of YAML if this is the **first time** you are attempting to test a particular font for a resulting PDF file.

```         
output: 
  pdf_document: 
    latex_engine: xelatex
```

By doing so, *tinytex* in RStudio will attempt to install any additional LaTeX packages needed for a particular Rmarkdown file before compiling as a PDF document.

Once this is successful, you may move the `output:` arguments before the `header-includes:` arguments. This is to make the resulting document immediately apparent.

# Font not printed as intended

Check the YAML settings for any mistakes or typo. Due to the typo, the following will not work, and set the font as default.
```
  - \setmainfont: {Calibri Light}
```

# Using fontspec package
If a custom font is not printed, specify fontspec package and use the format as shown below.

```
header-includes:
  - \usepackage{fontspec}
  - \setmainfont{Times New Roman}
output: 
  pdf_document: 
    latex_engine: xelatex
```

**Tested fonts**
Times New Roman, Calibri Light, Tahoma,
Palatino Linotype, Source Sans Pro (does not work with SourceSansPro and sourcesanspro),  Open Sans, Lato


# Another approach using fontenc
This involves more complexity; if you test with other fonts, you'll notice that it seems not so straightforward! Hence, using the fontspec package is recommended.

```         
header-includes:
   - \usepackage[default]{sourcesanspro}
   - \usepackage[T1]{fontenc}
mainfont: sourcesanspro
output: pdf_document
```
Note that with fontenc package, there is no need to set a *latex_engine*, as the RStudio's (Sweave) default, *pdfLaTeX* is used.

See details here [Cecina Babich Morrow's page] <https://babichmorrowc.github.io/post/changing-fonts-in-rmarkdown-pdfs/>

For a discussion on `fontenc` and the usage of pdfLaTex, see [A discussion on fontenc],\
    <https://tex.stackexchange.com/questions/664/why-should-i-use-usepackaget1fontenc>


# Other errors  
Remove emoticons or special characters not allowed in particular options.

# General tips
If at all possible, using tinytex available in RStudio would be ideal. Fixing errors relating to LaTeX can be challenging for first time users.
