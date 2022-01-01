# R-Scripts

The repo name `r-scripts` was still available when I started experimenting with R on a Raspberry Pi Zero. If think that you can make better use of it feel free to open an issue.

Here is a pointer to a write-up on configuring a [Raspberry Pi Zero W as a remote R LPC node](https://gist.github.com/TG9541/4b776abd1238c9c226f7f6261e4f29b1) (Low Performance Compting). My set-up uses Nvim-R, NeoVIM and X11-Forwarding. Data is kept on the Pi. In a non-desktop (command line) configuration 512MB RAM is more than sufficient for learning R including packages like `rjags` or `tidyverse` elements. Installing source packages works fine - if slowly -  but the Raspbian packet repositories are well stocked.

![image](https://user-images.githubusercontent.com/5466977/147492958-6c1d3a91-50f2-4e3a-8762-5016e287324d.png)

## Scripts

Some things take some to figure out - scripts in the repo are just a record of things that worked for me.
