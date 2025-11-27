# Info
More information about the purpose of this repo can be found on our [Wiki](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Software/OpenSesame/Tobii%20and%20OpenSesame/).

This repo contains the instructions and yml files that are necessary to create a Conda environment with OpenSesame and with a Python version that allows for Tobii eye tracking. The instructions for OpenSesame 4 and OpenSesame 3 can be found below. The yml files required for building the environments are located in the opensesame3 and openasesame4 subfolders.

> [!IMPORTANT]
> - The environment is created in `C:\Users\%USERNAME%\.conda\envs`.
> - Before following the instructions, make sure Anaconda is installed, see https://www.anaconda.com/.
> - If you need the markers plugin to be installed in the environment, please follow the instructions below: [Installing the markers plugin](#Installing-the-markers-plugin). 

When you want to build your own Conda environment with OpenSesame, see the OpenSesame download page for more information: https://osdoc.cogsci.nl/4.0/download/

# OpenSesame 4 with Python 3.10 
The instructions below provide information on installing and running OpenSesame 4 in a Python 3.10 environment.

## Installing the environment opensesame4-py310
The instructions below only need to be done once to create the environment. Any consecutive times, see [Activating the environment and opening OpenSesame 4](#Activating-the-environment-and-opening-OpenSesame-4) below.
- Download the opensesame4 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame4) to download the folder).
- Unzip the folder.
- Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
- Type `conda env create -f "<PATH TO YML>\opensesame4-py310.yml"` where `<PATH TO YML>` is the path where the yml file is located. For example, when the yml file is located in `C:\ExperimentData`, the command to run should be: `conda env create -f "C:\ExperimentData\opensesame4-py310.yml"`.
- Type `conda activate opensesame4-py310`
- Type `pip install http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl`
- Type 'pip install --no-deps psychopy==2024.1.4'
- Type `opensesame` to run opensesame.

> [!NOTE]
> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

## Activating the environment and opening OpenSesame 4
The instructions below need to be followed when opening OpenSesame in the enviornment after the environment was created. 

> [!WARNING]
> When trying to open your OpenSesame experiment by double-clicking on the .osexp file, it will open in the system installation of OpenSesame, not in the environment. To open your task in the environment, you first need to activate the environment and then run OpenSesame.
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame4-py310` to activate the environment.
  - Type `opensesame` to run opensesame.
  - Open your experiment.

# OpenSesame 3 with Python 3.8 
The instructions below provide information on installing and running OpenSesame 3 in a Python 3.8 environment.

## Installing the environment opensesame3-py38
The instructions below only need to be done once to create the environment. Any consecutive times, see [Activating the environment and opening OpenSesame 3](#Activating-the-environment-and-opening-OpenSesame-3) below.
- Download the opensesame3 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame3) to download the folder).
- Unzip the folder.
- Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
- Type `conda env create -f "<PATH TO YML>\opensesame3-py38.yml"` where `<PATH TO YML>` is the path where the yml file is located. For example, when the yml file is located in `C:\ExperimentData`, the command to run should be: `conda env create -f "C:\ExperimentData\opensesame3-py38.yml"`.
- Type `conda activate opensesame3-py38`
- Type `pip install http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl`
- Type `opensesame` to run opensesame.

> [!NOTE]
> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

## Activating the environment and opening OpenSesame 3
The instructions below need to be followed when opening OpenSesame in the enviornment after the environment was created. 

> [!WARNING]
> When trying to open your OpenSesame experiment by double-clicking on the .osexp file, it will open in the system installation of OpenSesame, not in the environment. To open your task in the environment, you first need to activate the environment and then run OpenSesame.
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame3-py38` to activate the environment.
  - Type `opensesame` to run opensesame.
  - Open your experiment.

# Troubleshooting
- The environment was not installed properly: try removing and reinstalling the environment:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda remove -n opensesame4-py310 --all -y` or `conda remove -n opensesame3-py38 --all -y` to remove the environment. This can take a while.
  - Check if the environment was removed from `C:\Users\%USERNAME%\.conda\envs`.
  - Install the environment again using the instructions above.

# Installing the markers plugin
The markers plugin is required when markers need to be sent using a [UsbParMarker](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Hardware/Markers%20and%20Events/UsbParMarker/) or [Eva](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Hardware/Markers%20and%20Events/EVA/) device (see also [here](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Hardware/Markers%20and%20Events/) for more information). The markers plugin is not installed in the environment by default. Follow the instructions as described on the [opensesame4_plugin_markers](https://github.com/solo-fsw/opensesame4_plugin_markers) repo for opensesame 4 and the [opensesame3_plugin_markers](https://github.com/solo-fsw/opensesame3_plugin_markers) repo for opensesame 3. Make sure to follow the instructions for installing the markers plugin in OpenSesame in a Conda environment. Note that you will need to install the environment first, before installing the markers plugin.
