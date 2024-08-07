# Info
More information about the purpose of these scripts can be found on our [Wiki](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Software/OpenSesame/Tobii%20and%20OpenSesame/).

The scripts in this repo automate the process of creating a Conda environment with OpenSesame and with a Python version that allows for Tobii eye tracking. The `create_env_opensesamex-pyx.bat` files create environments from the yml files, which are definition files that are fully resolved and version-locked. The environment is created in C:\Users\\%USERNAME%\\.conda\envs. The `run_osx_in_env.bat` activates the environment and launches OpenSesame. The file `find_conda.bat` is used by the other two batch files to find the currently installed Conda.  

When you want to build your own Conda environment with OpenSesame, see the OpenSesame download page for more information: https://osdoc.cogsci.nl/4.0/download/

# Installing the OpenSesame 4 with Python 3.10 environment
1. Make sure Anaconda is installed (see https://www.anaconda.com/).
1. Download the opensesame4 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame4) to download the folder).
1. Unzip the opensesame4 folder.
1. Make sure `find_conda.bat` and `opensesame4-py310.yml` are located in the same folder as `create_env_opensesame4-py310.bat`.
1. Run `create_env_opensesame4-py310.bat` (by double-clicking on it).
1. Possibly, you will get a pop-up saying "Do you want to allow this app to make changes to your device?" concerning Python. Press "yes" if possible or "no" (does not seem to affect anything). 
1. When the script is done, press any key to close the screen.
1. Run `run_os4_in_env.bat` to activate the opensesame4-py310 environment and launch OpenSesame.

> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

# Installing the OpenSesame 3 with Python 3.8 environment
1. Make sure Anaconda is installed (see https://www.anaconda.com/).
1. Download the opensesame3 folder located inside this repo (click [here](https://download-directory.github.io/?url=https%3A%2F%2Fgithub.com%2Fsolo-fsw%2Fopensesame-tobii-env%2Ftree%2Fmain%2Fopensesame3) to download the folder).
1. Unzip the opensesame3 folder.
1. Make sure `find_conda.bat` and `opensesame3-py38.yml` are located in the same folder as `create_env_opensesame3-py38.bat`.
1. Run `create_env_opensesame3-py38.bat` (by double-clicking on it).
1. Possibly, you will get a pop-up saying "Do you want to allow this app to make changes to your device?" concerning Python. Press "yes" if possible or "no" (does not seem to affect anything). 
1. When the script is done, press any key to close the screen.
1. Run `run_os3_in_env.bat` to activate the opensesame3-py38 environment and launch OpenSesame.

> Creating the environment may take quite long (possibly 15+ minutes); please be patient!

# Troubleshooting
- `run_osx_in_env.bat` file does not work: activate the environment and run OpenSesame manually:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt".
  - Type `conda activate opensesame4-py310` or `conda activate opensesame3-py38` to activate the environment.
  - Type `opensesame` to run opensesame.
- The environment was not installed properly: try removing and reinstalling the environment:
  - Open the Anaconda prompt (click on Windows Start menu and type "Anaconda prompt".
  - Type `conda remove -n opensesame4-py310 --all -y` or `conda remove -n opensesame3-py38 --all -y` to remove the environment. This can take a while.
  - Check if the environment was removed from C:\Users\\%USERNAME%\\.conda\envs.
  - Install the environment again using the `create_env_opensesamex-pyx.bat` script.

