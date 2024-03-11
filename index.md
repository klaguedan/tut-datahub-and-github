Hi! Glad you could check this page out. I'll very quickly go over how to have access to our COGS 108 Project notebooks within Datahub so that we can make edits and uplaod our changes more easily.

---

Before we start please have these pages open and logged in to your accounts:
- Github Settings
- Datahub Files

---

# 1️⃣ Set up remote Github-Datahub access without having to log in repeatedly

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


