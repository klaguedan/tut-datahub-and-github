Hi! Glad you could check this page out. I'll very quickly go over how to have access to our COGS 108 Project notebooks within Datahub so that we can make edits and uplaod our changes more easily.

---

Before we start please have these pages open and logged in to your accounts:
- Github Settings
- Datahub Files

---

# 1️⃣ Creating your private key

**<ins>Github Settings:</ins>**
- Go to **SSH and GPG keys** in the sidebar. 
- Click on **New SSH key**. 
- Name the "Title" anything you want that will remind you that this key is for Datahub/UCSD.

**In <ins>Datahub:</ins>**
- Click "New" > "Terminal". 
- Type `ssh-keygen` and press Enter. This will create a key that'll let you link up with Github and let you push your notebook changes super super fast without having to type in your username and password every time.
- Press Enter 3 times until you see a "randomart" image.
- Type `cat .ssh/id_rsa.pub`. This prints out the contents of `id_rsa.pub` to the terminal. You will want to copy ALL of this by right-clicking with your mouse/trackpad and copying (keybinds don't work consistently in the terminal).

Starting from "ssh-rsa" and including the last "= kaguedan@dsmlp-jupyter-kaguedan" or whatever your particular user is called. **DO NOT INCLUDE** the bottom-most line with the dollar sign. This is the *terminal prompt* and shows up when the terminal is ready for another command; it's not part of the ssh key itself.

**<ins>Github:**
- **Paste the key** into the **Key** box.
- Click **Add SSH key**.

<br>
<br>

# 2️⃣ Finalizing link and testing out edit/upload

Here you'll make changes to a test file in our Group Repository to make sure everything is working smoothly. I'll also let you know essential commands.

<br>

## Clone our Project repository

**In terminal:**
- Run `mkdir PROJECT`. Sets up a folder for our project where we can download the Jupyter notebooks from Github.
- Run `cd PROJECT`. Moves the terminal to our newly made folder.
- Run `git clone git@github.com:COGS108/Group087_WI24.git`. Type `yes` and press Enter. This will make a local copy of our group project files in your Datahub.
- Run `cd Group087_WI24`. Moves the terminal to the folder with all the work in it.

<br>

## Make some edits and push your changes in a test notebook

Now in another tab, go back to the normal Datahub Files homepage. Now you should see a folder named `PROJECT`! Keep clicking through the folders `Group087_WI24` until you see all the project files in the folder. Open the `github-datahub-test.ipynb` notebook.

- In a markdown cell, make some changes or add your name. Hit save.

### Here's how to upload the changes you make:

**In the terminal:**
- Run  `git add github-datahub-test.ipynb`. This will tell the terminal specifically what files you want to upload the changes for.
- Run `git commit -m "<enter your own note here>"` Records the changes you made and the message/note you wrote describing your change.
- Run `git push`. Uploads your changes to the actual Github repo for everyone to see (as long as they have the most updated version of the repository).

