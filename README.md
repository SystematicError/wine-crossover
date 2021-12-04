## Wine Crossover

This project aims to provide easy way to install Codeweavers' fork of wine with more ease. If you are not already aware, Codeweavers maintains an enterprise version of [Wine](https://winehq.org) called [Crossover](https://codeweavers.com). Crossover is a slightly tweaked version of Wine including some quality of life features such as a GUI. Whilst Crossover is paid, however, all their code except the GUI is open source and hosted on their [FTP server](https://media.codeweavers.com/pub/crossover/source).

**Note:** Even if you can get some of Crossover's feature through this project, I highly recommend paying for Crossover anyways, as most of the code contributed to the Wine project is from Codeweavers themselves so buying Crossover helps contribute to Wine itself. Furthermore you can get a much more polished experience and technical support from Codeweavers themselves.

### Installation
The pre-built binaries are generated by Github Actions, here are the downloads:

**Version 21.0.0** ([source](https://media.codeweavers.com/pub/crossover/source/crossover-sources-21.0.0.tar.gz)) ([workflow](https://github.com/SystematicError/wine-crossover/actions/runs/1525887091)) ([download](https://github.com/SystematicError/wine-crossover/suites/4519465687/artifacts/120885607))

**Version 20.0.4** ([source](https://media.codeweavers.com/pub/crossover/source/crossover-sources-20.0.4.tar.gz)) ([workflow](https://github.com/SystematicError/wine-crossover/actions/runs/1538751974)) ([download](https://github.com/SystematicError/wine-crossover/suites/4553029014/artifacts/122269335))

### Bonus: GUI Interface!
![bottles app image](https://raw.githubusercontent.com/bottlesdevs/Bottles/master/screenshot.png)
Thanks to the [Bottles App](https://github.com/bottlesdevs/Bottles), you can easily manage different wine prefixes (called bottles) and multiple wine versions (called runners). Once you install wine-crossover, you can add it as a runner by creating a new folder at `~/.local/share/bottles/runners/wine-crossover` and extracting your installed contents there.

### Credit
I myself would not have managed to pull this off all by myself, I would like to offer a huge thanks to:

[@GabLeRoux](https://github.com/GabLeRoux/macos-crossover-wine-cloud-builder/) for providing inspiration for me to create this project

[@DonutsBl](https://github.com/DonutsBl/office365-pol/blob/main/README.md) for creating a helpful guide to compiling wine

[@PhoenicisOrg](https://github.com/PhoenicisOrg/phoenicis-winebuild) for providing Dockerfiles for the project to compile on