

##  Commands for System Information: </span>

`uname` 
 -  Displays system information about the operating system.

`uname --help`
  - Provides help and usage information for the uname command.

`uname --processor`
-  Prints the processor (CPU) type or architecture.

`uname -n` 
- Shows the network (host) name of the machine.

`uname -a` 
-  Prints all system information, including kernel version and architecture.


##  User and System Information: </span>
 `whoami`  
- Displays the username of the current user.

`pwd`
- Prints the current working directory.

`cat /etc/shells` 
-  Lists the available shells on the system.
##  Process Information and History: </span>
`ps -p $$`
- Shows process information for the current shell.

`history` 
-  Displays a list of previously executed commands.

`history -c`
-  Clears the command history.

##  Working with Files and Directories: </span>

`ls -a` or `ll or ls -a` 
- Lists all files and directories, including hidden ones.

`mv source destination`  
- Moves or renames a file.

`cp source destination` 
- Copies a file.

##  Downloading an image: </span>

`curl https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg --output cat.jpg`
- Downloads a file from a specified URL and saves it with the given filename.
file filename: Outputs the type of file.

`file cat.jpg`
 - outputs whattype of file it is

`mv cat.jpg cat` 
 - Moves or renames a file.
 
`cp cat cat.jpg`
 - Copies a file.
##  File and Directory Manipulation: </span>
`rm cat`
- Removes the file named "cat".

 `mkdir funny_stuff`
- Creates a directory named "funny_stuff".

`rm -r`  OR  `rm -rf`
- Removes directories recursively. `-r` stands for recursive, and `-f` stands for force, which removes without confirmation.

##  File Creation and Editing: </span>

`touch filename`
- Creates an empty file with the specified filename.

`nano chicken-joke.txt`
- Opens the nano text editor to create or edit the "chicken-joke.txt" file.

`cat chicken-joke.txt` 
- Displays the contents of the "chicken-joke.txt" file.


##  Viewing File Content </span>

`head -2 chicken-joke.txt`
- Displays the first 2 lines of the "chicken-joke.txt" file.

`tail -2 chicken-joke.txt`
- Displays the last 2 lines of the "chicken-joke.txt" file.

`cat -n chicken-joke.txt`
- Displays the contents of the "chicken-joke.txt" file with line numbers.

##  Searching within a Files: </span>

`grep "chicken" chicken-joke.txt`

- Searches for the word "chicken" in the "chicken-joke.txt" file and displays matching lines.

##  Moving files : </span>

`mv chicken-joke.txt funny_stuff/` 
- Moves the file "chicken-joke.txt" to the directory "funny_stuff".

`mv funny_stuff/chicken-joke.txt .` 
-  Moves the file "chicken-joke.txt" to the "funny_jokes" directory inside the "funny_stuff" directory

`mv funny_stuff/funny_jokes/chicken-joke.txt funny_stuff/funny_jokes/bad_joke.txt` \
- Renames the file "chicken-joke.txt" to "bad_joke.txt" inside the "funny_jokes" directory.

##  Adding and Removing Files: </span>

`nano provision.sh`
- Opens the nano text editor to create or edit a shell script named "provision.sh"

`chmod u+x provision.sh`
- Grants execute permission to the owner (user) of the file "provision.sh".

##  ZSH
- check current shell `echo $SHELL`

- set zsh as defult shell :`sudo chsh -s(whichzsh) $(whoami)`
- clone zsh `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- <img width="760" alt="image" src="https://github.com/user-attachments/assets/425523fb-04a3-43cb-9bea-5f2ceb84e77a">
- powerlevel 10k zsh theme chosen to download `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k`

> [!TIP]
> `sudo !!` runs the previous command with sudo infront


##  Changing ZSH Themes

- To customise the look and feel of your terminal using Oh My Zsh, you can change the ZSH theme. 
Open the .zshrc file in your home directory using a text editor `vim ~/.zshrc`
- Set the ZSH_THEME to powerlevel10k :

![Screenshot 2024-08-26 234359](https://github.com/user-attachments/assets/b4f37d48-a00d-4144-af12-9852f21e9256) 
<br>
- After making changes, save the file and apply the new settings by : `source ~/.zshrc`
- add the plugins to the .zshrc file :
```
plugins=(
git
zsh-syntax-highlighting
zsh-autosuggestions
)
 ```
-  for syntax highlighting : `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
-  for auto sugestions: `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
-  



##  tree: </span>

`tree`  displays directory structures in a tree-like format. It recursively lists all directories and files within a specified directory and its subdirectories.

![image](https://github.com/user-attachments/assets/306c7578-0c0c-4ea9-a95e-48fee6e9afba)

The tree command provides a visual representation of the directory hierarchy, making it easier to navigate and understand the organization of files and folders within a system. 


