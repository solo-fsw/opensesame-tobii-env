# Info
Information about the purpose and usage of these scripts can be found on our [Wiki](https://researchwiki.solo.universiteitleiden.nl/xwiki/wiki/researchwiki.solo.universiteitleiden.nl/view/Software/OpenSesame/Tobii%20and%20OpenSesame/).

> **Warning**
> Please read the October 2022 update below.
 
At the time of writing (31<sup>st</sup> of October, 2022), building the OpenSesame environment using automatic dependency resolution leads to an unusable installation: OpenSesame fails to launch correctly and instead states that various dependencies could not be found. As such, the `create_env.bat`, which does not request specific package versions, may fail to install OpenSesame correctly.

A workaround is to rebuild the environment manually using a fully-resolved version-locked definition file. Such a definition file, which will install **OpenSesame 3.3.11a1**, is included in this repository (`environment.yml`).

Follow the steps below to install OpenSesame in Anaconda using `environment.yml` (admin privileges are not required):

 1. Make sure Anaconda is installed.
 1. Download the `environment.yml` file located inside this repo. You can download it directly, or extract it from the repo's zip file (download the zip [here](https://github.com/solo-fsw/opensesame-tobii-env/archive/refs/heads/main.zip)).
 1. On your Windows machine: launch "Anaconda Navigator" via the Start Menu. It is located inside the "Anaconda3" folder.
 1. Once Anaconda navigator has launched, go to the Environments panel by clicking on "Environments" in the left-hand side-menu.
 1. If an environment named "opensesame-py38" already exists, delete it.
 1. Click on the "import" button under the list of environments, and choose the `environment.yml` file you just downloaded. Name the environment `opensesame-py38` and run the importer.
 2. Once the new environment has been built, you can launch it by selecting the "python-opensesame" application from the "Home" panel. Note that the "opensesame-py38" environment must be selected from the "Applications" on menu.
 3. Alternatively, you can activate "opensesame-py38" environment and launch OpenSesame inside of it using the `run_OpenSesame_in_env.bat` file inside this repo.