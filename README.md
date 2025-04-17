# Info
More information about the purpose of these scripts can be found on our [Wiki](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Software/OpenSesame/Tobii%20and%20OpenSesame/).

This repo contains the instructions and yml files that are necessary to create a Conda environment with OpenSesame and with a Python version that allows for Tobii eye tracking. The instructions for OpenSesame 4 and OpenSesame 3 can be found below. The yml files required for building the environments are located in the opensesame3 and openasesame4 subfolders.

Important:

> - The environment is created in C:\Users\\%USERNAME%\\.conda\envs.
> - Before following the instructions, make sure Anaconda is installed, see https://www.anaconda.com/.
> - If you need the markers plugin to be installed in the environment, please follow the instructions below: [Installing the markers plugin](#Installing-the-markers-plugin). 

When you want to build your own Conda environment with OpenSesame, see the OpenSesame download page for more information: https://osdoc.cogsci.nl/4.0/download/

# OpenSesame 4 with Python 3.10 
The instructions below provide information on installing and running OpenSesame 4 in a Python 3.10 environment.

## Installing the environment opensesame4-py310
The instructions below only need to be done once to create the environment. Any consecutive times, see [Activating the environment and opening OpenSesame 4](#Activating-the-environment-and-opening-OpenSesame-4) below.
- Download the opensesame4 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame4) to download the folder).
- Unzip the opensesame4 folder.
- Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
- Type `conda env create -f <PATH TO YML>\opensesame4-py310.yml` where `<path to yml file>` is the path where the yml file is located. For example, when the yml file is located in C:\ExperimentData, the command to run should be: `conda env create -f C:\ExperimentData\opensesame4-py310.yml`.
- Type `conda activate opensesame4-py310`
- Type `pip install http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl`
- Type `opensesame` to run opensesame.

> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

## Activating the environment and opening OpenSesame 4
The instructions below need to be followed when opening OpenSesame in the enviornment after the environment was created. Note that when trying to open your OpenSesame experiment by double-clicking on the .osexp file, it will open in the system installation of OpenSesame, not in the environment. To open your task in the environment, you first need to activate the environment and then run OpenSesame:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame4-py310` to activate the environment.
  - Type `opensesame` to run opensesame.
  - Open your experiment.

# OpenSesame 3 with Python 3.8 
The instructions below provide information on installing and running OpenSesame 3 in a Python 3.8 environment.

## Installing the environment opensesame3-py38
The instructions below only need to be done once to create the environment. Any consecutive times, see [Activating the environment and opening OpenSesame 3](#Activating-the-environment-and-opening-OpenSesame-3) below.
- Download the opensesame3 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame3) to download the folder).
- Unzip the opensesame3 folder.
- Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
- Type `conda env create -f <PATH TO YML>\opensesame3-py38.yml` where `<path to yml file>` is the path where the yml file is located. For example, when the yml file is located in C:\ExperimentData, the command to run should be: `conda env create -f C:\ExperimentData\opensesame3-py38.yml`.
- Type `conda activate opensesame3-py38`
- Type `pip install http://files.cogsci.nl/expyriment-0.10.0+opensesame2-py3-none-any.whl`
- Type `opensesame` to run opensesame.

> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

## Activating the environment and opening OpenSesame 3
The instructions below need to be followed when opening OpenSesame in the enviornment after the environment was created. Note that when trying to open your OpenSesame experiment by double-clicking on the .osexp file, it will open in the system installation of OpenSesame, not in the environment. To open your task in the environment, you first need to activate the environment and then run OpenSesame:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame3-py38` to activate the environment.
  - Type `opensesame` to run opensesame.
  - Open your experiment.

# Troubleshooting
- The environment was not installed properly: try removing and reinstalling the environment:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda remove -n opensesame4-py310 --all -y` or `conda remove -n opensesame3-py38 --all -y` to remove the environment. This can take a while.
  - Check if the environment was removed from C:\Users\\%USERNAME%\\.conda\envs.
  - Install the environment again using the instructions above.

# Installing the markers plugin
The markers plugin is required when markers need to be sent using a UsbParMarker or Eva device. The markers plugin is not installed in the environment by default. Follow the instructions below to install the plugin in your environment. Note that you will need to install the environment, before taking the steps below.

Option 1: Using Git
  - Make sure your have Git installed, see https://git-scm.com/downloads. 
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame4-py310` or `conda activate opensesame3-py38` to activate the environment.
  - Temporarily set the path to the Git application: `set PATH=<PATH TO GIT>;%PATH%`, where PATH TO GIT it the path to the Git application. Usually, when Git is installed system wide, Git is located in Program Files. In this case, type `set PATH=C:\Program Files\Git\cmd;%PATH%`.
  - For OpenSesame 4, type `pip install git+https://github.com/solo-fsw/opensesame4_plugin_markers` or for OpenSesame 3, type `pip install git+https://github.com/solo-fsw/opensesame3_plugin_markers`.
  - Type `opensesame` to run opensesame and check that the markers plugin is installed [opensesame4_plugin_markers](https://github.com/solo-fsw/opensesame4_plugin_markers) or [opensesame3_plugin_markers](https://github.com/solo-fsw/opensesame3_plugin_markers) for more information on the markers plugin.

Option 2: Without Git
  - Download the repositories that are necessary for the plugin (in the repo, got to Code > Downlaod ZIP):
    - For OpenSesame 4, download the [opensesame4_plugin_markers](https://github.com/solo-fsw/opensesame4_plugin_markers) repo and the [python-markers](https://github.com/solo-fsw/python-markers) repo
    - For OpenSesame 3, download the [opensesame3_plugin_markers](https://github.com/solo-fsw/opensesame3_plugin_markers) repo and the [python-markers](https://github.com/solo-fsw/python-markers) repo
  - Unzip the folders
  - Place the necessary folders in the environment:
    - For OpenSesame 4:
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame4-py310\Lib\site-packages
      - Place the python_markers folder from the python-markers repo here.
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame4-py310\Lib\site-packages\opensesame_plugins
      - Place the markers_os4 folder that is located in the opensesame_plugins folder of the opensesame4_plugin_markers repo here.
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame4-py310\Lib\site-packages\opensesame_extensions
      - Place the markers_os4 folder that is located in the opensesame_extensions folder of the opensesame4_plugin_markers repo here.
    - For OpenSesame 3:
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame3-py38\Lib\site-packages
      - Place the python_markers folder from the python-markers repo here.
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame3-py38\Lib\site-packages\share\opensesame_plugins
      - Place the markers_os3_init and markers_os3_send folders that are located in the share > opensesame_plugins folder of the opensesame3_plugin_markers repo here.
      - Navigate to C:\Users\\%USERNAME%\\.conda\envs\opensesame3-py38\Lib\site-packages\share\opensesame_extensions
      - Place the markers_os3_extension folder that is located in the share > opensesame_extensions folder in the opensesame3_plugin_markers repo here.
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt").
  - Type `conda activate opensesame4-py310` or `conda activate opensesame3-py38` to activate the environment.  
  - Type `opensesame` to run opensesame and check that the markers plugin is installed [opensesame4_plugin_markers](https://github.com/solo-fsw/opensesame4_plugin_markers) or [opensesame3_plugin_markers](https://github.com/solo-fsw/opensesame3_plugin_markers) for more information on the markers plugin.
