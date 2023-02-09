# GitLab with Visual Studio


### 1. Download Git and install just like any other software
[ https://git-scm.com/downloads ]

- Open Git Terminal and check git version

  `git --version`

- With the help of following commands configure the git on your system by your account on git

  `git config --global user.name <your-git-username>`
 
  `git config --global user.email <your-email>`

_________________________________
### 2. Configure SSH key pair

- SSH key pairs enable us to log in and set up GitLab with Visual Studio without retyping the username and password for the account. We can then push changes to a remote repo effortlessly.

- go on to terminal

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

- Copy the token and save it on your system

_________________________________
### 5. GitLab Workflow Extension on Visual Studio

- Open Visual Studio -> Extensions -> Search for GitLab Workflow and install it.

- Once installed press **ctrl + shift + P** to access the command palette and Click on “GitLab : Add Account”

- It will ask for URL to your GitLab instance for example [https://gitlab.com/](https://gitlab.com/) and hit enter

- Then paste the “**Personal Access Token**” and press enter

- Now your GitLab Workflow is setup and you can manage your Local Repositories and even your GitLab instance directly from Visual Studio

___________________________________________________________________

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
