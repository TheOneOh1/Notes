# Git & Visual Studio Code Integration

**Table of Contents**

<!--ts-->
* [Git Setup](https://github.com/TheOneOh1/K8s-Snorty-Splunk/blob/main/k8s.md#k8s-config)
* [Configure SSH](https://github.com/TheOneOh1/Notes/blob/main/Git-Visual-Studio.md#2-configure-ssh-key-pair)
* [Generate Personal Access Token](https://github.com/TheOneOh1/Notes/blob/main/Git-Visual-Studio.md#4-generate-personal-access-token)
* [GitLab Workflow Extension on Visual Studio](https://github.com/TheOneOh1/Notes/blob/main/Git-Visual-Studio.md#5-gitlab-workflow-extension-on-visual-studio)
* [Git Actions from VS Code](https://github.com/TheOneOh1/Notes/blob/main/Git-Visual-Studio.md#git-actions-from-vs-code)
* [Moving a personal Project to a Specific Group](https://github.com/TheOneOh1/Notes/blob/main/Git-Visual-Studio.md#moving-a-personal-project-to-a-specific-group)
<!--te-->


### 1. Download Git and install just like any other software
[ https://git-scm.com/downloads ]

- Open Git Terminal and check git version

`git --version`

- With the help of following commands configure the git on your system by your account on git

`git config --global user.name <your-git-username>`
 
`git config --global user.email <your-email>`
</br>
</br>
- **Local configuration (--local):** </br>
	*This level is specific to the current Git repository and is stored in the repository's .git/config file. Local configuration overrides global and system configurations. You can use local configuration to set project-specific settings that differ from your global or system settings.*


- **Global configuration (--global):** </br>
	*This level is specific to the user and is stored in the user's home directory in the .gitconfig file. Global configuration settings apply to all repositories that the user works on. You can use global configuration to set settings that apply across all of your projects.*


- **System configuration (--system):** </br>
	*This level is specific to the Git installation on the system and is stored in the /etc/gitconfig file. System configuration settings apply to all users on the system and override any global or local configurations.*
</br>
</br>
**NOTE:** When deciding which level of configuration to use, consider the scope of the configuration settings. If the settings are specific to a single project or repository, use local configuration. If the settings apply across all of your projects, use global configuration. If the settings are system-wide and apply to all users on the system, use system configuration.

_________________________________
### 2. Configure SSH key pair

- SSH key pairs enable us to log in and set up GitLab with Visual Studio without retyping the username and password for the account. We can then push changes to a remote repo effortlessly.

- go on to terminal on your local machine

`ssh-keygen -t ed25519 -C "GitLab SSH Pair"`

**ed25519**: *Key signature like RSA, EdDSA performs much faster and provides the same level of security with significantly smaller keys.*

**Note**: *Passphrase can be left blank, just hit enter.*

`cd ~/.ssh`

`cat id_ed25519.pub`

**Note**: *Make sure to copy the SSH key and save it on your local machine.*

- Go to GitLab -> Click on your Account -> Preferences -> SSH KEY

- Paste your copied SSH key here, give your own title

**Note**: *Make sure to set up Expiration Date as per your requirement.*

- Click on Add Key. That is it SSH key has been added.

_________________________________
### 4. Generate Personal Access Token

- The token enables us to set up GitLab with Visual Studio Code using the GitLab Workflow Extension

- Go to GitLab -> Click on your Account -> Preferences -> Access Token

- Provide a token name, set desired expiration date and provide required permissions and then click on **Create Personal Access Token**

- Copy the token and save it on your system as we will need to configure it with GitLab Workflow Extension

_________________________________
### 5. GitLab Workflow Extension on Visual Studio

- Open Visual Studio -> Extensions -> Search for GitLab Workflow and install it.

- Once installed press **ctrl + shift + P** to access the command palette and Click on “GitLab : Add Account”

- It will ask for URL to your GitLab instance for example [https://gitlab.com/](https://gitlab.com/) and hit enter

- Then paste the “**Personal Access Token**” and press enter

- Now your GitLab Workflow is setup and you can manage your Local Repositories and even your GitLab instance directly from Visual Studio

___________________________________________________________________

## Git Actions from VS Code
### Clone Repo

- Go to Command Palette ***“ctrl + shift + P”***
- Type clone and you will get and option Clone from GitLab
- Enter Git Clone URL and hit enter
- Repository will be cloned locally

### Pull from

- Go to Source Control ***“ctrl + shift + G”***
- Right Click on the repo and select Pull
- New files from the repo will be pulled onto your local machine

### Stage to Commit, commit and Push

- Go to Source Control ***“ctrl + shift + G”***
- You will see the files that you made changes to, if you click on the file you can even see the changes that you made
- Click on the **"+"** icon to Stage the changes
- Enter the Commit message and click on Commit
- Once done Click on Sync Changes which means Push

___________________________________________________________________

## GitLab Actions from Command Pallete

- Pull, Push, Commit these can be performed using the in-built command pallette on Visual Studio Code.

```
> Open Command Pallette using "ctrl + shift + P"

> Type in the Action you want to take like Pull, Push, Commit

> It will show up the suggestions for you select the appropriate one
```


## Merge Conflicts

- Sometimes it is possible to encounter merge conflicts meaning when different changes are made to the same line of a file.
- VSCode will inform of such conflicts with a message *"Can't push refs to remote. Try Pull first to integrate your changes"*

**RESOLUTION**

- Open Command Pallette ***"ctrl + shift + P"*** 
- Enter **Git: pull**
- In the text editor you will se the conflicting changes, one from your local repo and one from the remote repo.
- They will be labelled distinctively as "Current Change" and "Incoming Change"
- In order to resolve this conflict, you can simply choose by clicking either "Accept Current Change" or "Accept Incoming Change" button.
- Once done you can Commit and Push your work as usual from Command Pallette.

_______________________________________________________

| Command | What does it do? |
| ------ | ------ |
| `git checkout master`   | Pulls latest changes made to the master branch   |
| `git branch -a`   | Lists all available branches   | 
| `git checkout branch-name`   | Switches from current branch to another   | 
| `git merge master`   | Merges current branch to master   | 
| `git -c http.sslVerify=false clone URL`   | Ignores SSL certificate once   | 
| `git config --global http.sslVerify false`   | Disables SSL altogether    | 

_______________________________________________________

## Moving a personal Project to a Specific Group

- Make sure you have the **Owner** rights for the group
- Log in to your gitlab instance and go to the Group Home Page
- Type the name of the member onto the **Search Bar** > **Users** > **Click on the Username**
- Here you will see that members personal projects, click on the one you would like to move to the main group
- Then go to **Settings** > **Advanced** > **Transfer Project** > Select the Group you would like this project to be transferred to.

**NOTE:** _If the group has a project with the same name, transfer will not take place._

_____________________________________________________

## Merge requests - What is a Merge Request?

- Merge Requests are a good way to visualize new changes that are about to be made in the master branch.
- Instead of making changes directly into master, the Merge Request workflow allows you to:

	- allow others to review the changes
	- allows the pipeline to run once without affecting others or the master branch
	- allows for additional changes to be made
