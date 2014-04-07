R
===


Get R and Rstudio
-----

### Windows:

1. [Download R (64 bit) here](http://cran.csiro.au/bin/windows/base/R-3.0.3-win.exe)
2. Install above .exe. Make sure you install the 64 bit exe. Try installing it
   to the default path. If you can't, note the path to the installation (sticking it
   in My Documents should work).
3. [Get Rstudio](http://download1.rstudio.org/RStudio-0.98.501.exe)
4. Install the above exe.
5. Go into Rstudio, and select an R installation. If step 2 worked, you should see
   the 64-bit installation appear magically in the list. If not, select the path to
   your installation.
6. [Install basic packages](#get-packages)

### Linux:

    sudo aptitude install r-base
    wget http://download1.rstudio.org/rstudio-0.98.501-amd64.deb
    sudo dpkg -i rstudio-0.98.501-amd64.deb

### OS X:

Ask Pete


Get Packages
------------

Go into Rstudio, and make a new script (Ctrl + Shift + N, or this button:
![new](https://raw.githubusercontent.com/rstudio/rstudio/08c762a7a3953a8ee8228c7bcc4e3c94fae5724b/src/gwt/src/org/rstudio/studio/client/common/icons/stock_new.png)).
Paste the below into it:

    install.packages("ggplot2")
    install.packages("reshape2")
    install.packages("plyr")
