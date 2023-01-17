# Developer environment choices

There are different, progressively complex setups offered below. You don't have to go beyond the first, baseline setup [Codespaces cloud through browser](#codespaces-cloud-through-browser). Only go with more advanced setup if you have background in programming and familiarity with respective tools, otherwise they will turn into a distraction rather than learning experience.

## Codespaces cloud through browser

There is a [demo](https://web.microsoftstream.com/video/1836c519-0c78-4daa-9a94-7ab14d8b8b53) for this setup.

This is baseline scenario, least effort on student's part.

- have GitHub account created and logged in the browser (preferably Chrome).
- follow the assignment link on BlackBoard.
- (first time only) link to classroom roster by clicking your email.
- (re)accept the assignment
- refresh the page until links appear for new repo and Codespace.
- go to repo
- launch `Codespace` from repo

Your dev environment will be created in GitHub Codespace cloud and Visual Studio Code will launch for you in the browser. Chrome is a recommended browser, though most other standard browsers should also work.

Codespace is per repo, each new repo needs respective Codespace. Can periodically clean up accumulated Codespaces by going to [https://github.com/codespaces](https://github.com/codespaces).

Above setup is most straightforward and sufficient for most of the coursework. If you feel comfortable with it, **no need to read this document further**. Any extra features will be suggested in later units as needed. While following other alternatives is your choice, please keep in mind that they will require more effort and will result in more diverse, less smooth experience. However, while irrelevant to grade, such challenges also offer useful learning experience. Decide based on strength of your background. If this is your first encounter with programming, probably no need to go any further.

## Codespace cloud through local VS Code

There is a [demo](https://web.microsoftstream.com/video/f6f70fd0-22a2-408e-b35b-e7c74c0e511e) for this setup.

Have Codespace created in cloud, for instance by following [Codespaces cloud through browser](#codespaces-cloud-through-browser) instructions. Can't connect to Codespace from local if it has not been created beforehand.

Install [VS Code](https://code.visualstudio.com/download).

Once installed, open VS Code, click on `Extensions` on left tab and search and install for `GitHub Codespaces` extension. Once installed, open command palette (kbd shortcut `F1`) and type up few letters from `Codespaces: Connect to Codespace`. Command should show up in dropdown, click on it. First time may ask to log in GitHub through VS Code. If already logged in, existing workspaces will show up in the list. Click on those and VS Code will connect to cloud workspaces, giving you cloud experience locally. Your VS Code will be running on your local desktop, but source, compilation, run will be happening in cloud. It will also pick up VS Code extensions  (eg C++ pack, etc) from Codespace.

Would help if you click `Close remote connection` (lower left corner) once you are done working, will shutdown remote cloud environment. Idle timeout will also shut it down, can restart if needed.

## Local VS Code running against local dev container environment

There is a [demo](https://web.microsoftstream.com/video/43a6e48b-b05c-4333-a3b6-99ee60f60052) for this setup.

In this setup your VS Code is running locally on your desktop against containerized dev environment delivered through your Docker desktop. This does require some effort on student's part, I would _not recommend_ this approach from get-go unless you've already been exposed to some of technologies used in the process.

### Pre-requisites

- Install [VS Code](https://code.visualstudio.com/download)
- In VS Code install `Dev Containers` extension
- Install [Docker desktop](https://www.docker.com/products/docker-desktop/). For Mac can also install from [bew](https://formulae.brew.sh/formula/docker)
- Install [git](https://git-scm.com/downloads) source control

### Cloning repo, online container

- Clone desired repo locally, eg <br /> `git clone https://github.com/OU-CTCH1330/01-hello-world-oshonia.git`. <br />This may ask for auth with GitHub if done first time.
- Launch `Docker Desktop`, wait till it fully comes online.
- Open VS Code. In VS Code open folder of newly cloned repo. Typically VS Code will detect dev container that comes with repo and offer to open current folder in container, accept that offer. Alternatively, can always 
  - open command pallet (with `F1`) and type up `Dev Containers: Open folder` there. Click on that command. 
  - In launched dialog select the folder of locally cloned repo.

Above will launch the same workspace, but this time locally in your docker container. The very first time you do this may take a bit of time, since container image needs to be downloaded. Your local folder will be exposed in container as a shared volume and any changes there will persist on your local filesystem even after shutting container down. Your dev environment will be identicall to the one in cloud, since you will be using the same container image and the same VS Code extensions. Once done working, don't forget to commit and push changes back to GitHub remote repo. This can be done from within the container, or from your local host and filesystem. Don't forget to monitor your Docker Desktop and `Stop` or even `Delete` containers once done working.

## Off the path

You are free to go with setup of your own. As long as you check in correct code in GitHub repo, it's a job done. For istance you can:

- Develop with local dev environment in your host, installing necessary sdk and tools on your own (no containers). You can get some clue of required packages by looking at `./Dockerfile` and `./.devcontainer/devcontainer.json`. Getting these depends on your platform (Win, Mac, Linux).
- Switch to a different IDE, for instance `Visual Studio`, a powerhouse of Microsoft based development. It has a name similar to our `Visual Studio Code`, but it is a very different tool.
- You can go to the other extreme and work without IDE, from some dev friendly editor (possibly with extensions), eg `Vim`.

I'll be happy to provide support of these choices but keep in mind that I may not be familiar with your peculiar setup and tools. Experience will be hacky as we stray off the common path.
