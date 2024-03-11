Hi! Glad you could check this page out. I'll very quickly go over how to have access to our COGS 108 Project notebooks within Datahub so that we can make edits and uplaod our changes more easily.

---

Before we start please have these pages open and logged in to your accounts:
- Github Settings
- Datahub Files

<br>

A tip while using the terminal: It can typically **autocomplete** words for you if you press \<TAB\> (as long as you have enough leading letters). Also everything is case sensitive!

---

# 1️⃣ Creating your private key

## Github Settings

- Go to **SSH and GPG keys** in the sidebar. 
- Click on **New SSH key**. 
- Name the "Title" anything you want that will remind you that this key is for Datahub/UCSD.

<br>

## Datahub

- Click **New** > **Terminal**.

<div align="center" width="100px">
    <img src="img/terminal.png" />
</div>

- Type `ssh-keygen` and press Enter. This will create a key that'll let you link up with Github and let you push your notebook changes super super fast without having to type in your username and password every time.
- Press Enter 3 times until you see a "randomart" image.
- Type `cat .ssh/id_rsa.pub`. This prints out the contents of `id_rsa.pub` to the terminal. You will want to copy ALL of this by right-clicking with your mouse/trackpad and copying (keybinds don't work consistently in the terminal).

Starts from "ssh-rsa" and including the last "= kaguedan@dsmlp-jupyter-kaguedan" or whatever your particular user is called.

**DO NOT INCLUDE** the bottom-most line with the dollar sign. This is the *terminal prompt* and shows up when the terminal is ready for another command; it's not part of the ssh key itself.


## Github Settings

- **Paste the key** into the **Key** box.
- Click **Add SSH key**.

<br>
<br>

---

# 2️⃣ Finalizing link and testing out edit/upload

Here you'll make changes to a test file in our Group Repository to make sure everything is working smoothly. I'll also let you know essential commands.

<br>

## Clone our Project repository

**In terminal:**
- Run `mkdir PROJECT`. Sets up a folder for our project where we can download the Jupyter notebooks from Github.
- Run `cd PROJECT`. Moves the terminal to our newly made folder.
- Run `git clone git@github.com:COGS108/Group087_WI24.git`. Type `yes` and press Enter. This will make a local copy of our group project files in your Datahub.
- Run `cd Group087_WI24`. Moves the terminal to the folder with all the work in it.
- Run `git config user.email "<your email>"`.
- Run `git config user.name "<some name to identify you>"`. 

**NOTE:** The last two commands help Github identify you and track who made what changes. It will let us make commits and upload them. Without the last two steps, Github won't let us do any of that.

<br>

## Make some edits and push your changes in a test notebook

Now in another tab, go back to the normal Datahub Files homepage. 

Now you should see a folder named `PROJECT`! Keep clicking through the folders `Group087_WI24` until you see all the project files in the folder. Open the `github-datahub-test.ipynb` notebook.

- In a markdown cell, add some text or add your name. Hit save.

### Here's how to upload the changes you make:

**<ins>In the terminal:</ins>**
- Run  `git add github-datahub-test.ipynb`. This will tell the terminal specifically what files you want to upload the changes for.
- Run `git commit -m "<enter your own note here>"` Records the changes you made and the message/note you wrote describing your change.
- Run `git push`. Uploads your changes to the actual Github repo for everyone to see (as long as they have the most updated version of the repository).

### See your edits!

**<ins>Github Group087_WI24 Repository:</ins>**
Now, in our repository page, you should see that `github-datahub-test.ipynb` was recently updated by you and shows your commit message. You can preview the file on Github to verify that the changes you made are there.

<br>
<br>

---

# 3️⃣ General Workflow for the Project

Every time you want to work on the project, you'll need a **terminal** and the **FinalProject_Group087_WI24.ipynb** notebook open on **Datahub**.

### In the terminal before making any edits:
- Run `cd PROJECT/Group087_WI24/` to move to your local copy of group repository in Datahub.
- **SUPER IMPORTANT!** Run `git pull` to fetch the latest changes made by anyone else in the group.

<br>

### Make your changes to the notebook on Datahub like normal and hit save when done.

<br>

### Use `git` to push your changes.
- Run `git add FinalProject_Group087_WI24.ipynb`
- Run `git commit -m "<your message here>"`
- Run `git push`


After confirming everything is uploaded, feel free to exit out of everything.

<br>
<br>

---

Hopefully these steps have been helpful. Please let me know if anything comes up!