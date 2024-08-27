
## Commands for System Information:

| **Command**                 | **Description/Usage**                                                                                     |
|-----------------------------|-----------------------------------------------------------------------------------------------------------|
| `uname`                     | Displays system information about the operating system.                                                   |
| `uname --help`              | Provides help and usage information for the `uname` command.                                              |
| `uname --processor`         | Prints the processor (CPU) type or architecture.                                                          |
| `uname -n`                  | Shows the network (host) name of the machine.                                                             |
| `uname -a`                  | Prints all system information, including kernel version and architecture.                                 |

## User and System Information:

| **Command**                 | **Description/Usage**                                                                                     |
|-----------------------------|-----------------------------------------------------------------------------------------------------------|
| `whoami`                    | Displays the username of the current user.                                                                |
| `pwd`                       | Prints the current working directory.                                                                     |
| `cat /etc/shells`           | Lists the available shells on the system.                                                                 |
| **Tip**                     | The `cat /etc/shells` command is useful for checking which shells are available when switching or configuring a new shell for a user. |

## Process Information and History:

| **Command**                 | **Description/Usage**                                                                                     |
|-----------------------------|-----------------------------------------------------------------------------------------------------------|
| `ps -p $$`                  | Shows process information for the current shell.                                                          |
| `history`                   | Displays a list of previously executed commands.                                                          |
| `history -c`                | Clears the command history.                                                                               |
| **Warning**                 | Using `history -c` will permanently delete your command history for the current session, which cannot be undone. |

## Working with Files and Directories:

| **Command**                 | **Description/Usage**                                                                                     |
|-----------------------------|-----------------------------------------------------------------------------------------------------------|
| `ls -a`                     | Lists all files and directories, including hidden ones.                                                   |
| `ll` or `ls -al`            | Lists all files and directories in long format, including hidden ones, with detailed information.         |
| `mv source destination`     | Moves or renames a file.                                                                                  |
| **Warning**                 | Be cautious when using `mv` as it can overwrite files in the destination without warning.                  |
| `cp source destination`     | Copies a file.                                                                                            |
| **Tip**                     | Use `cp -r` to copy directories recursively, including all files and subdirectories.                      |




## Downloading an Image:

| **Command**                                                                                 | **Description/Usage**                                                                                       |
|---------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `curl https://cdn.britannica.com/39/7139-050-A88818BB/Himalayan-chocolate-point.jpg --output cat.jpg` | Downloads a file from a specified URL and saves it with the given filename.                                  |
| `file cat.jpg`                                                                              | Outputs what type of file it is.                                                                             |
| `mv cat.jpg cat`                                                                            | Moves or renames a file.                                                                                     |
| `cp cat cat.jpg`                                                                            | Copies a file.                                                                                               |

## File and Directory Manipulation:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `rm cat`                              | Removes the file named "cat".                                                                                |
| `mkdir funny_stuff`                   | Creates a directory named "funny_stuff".                                                                     |
| `rm -r`  or `rm -rf`                  | Removes directories recursively. `-r` stands for recursive, and `-f` stands for force, which removes without confirmation. |
| **Warning**                           | Be extremely careful with `rm -rf`, as it will delete everything in the specified directory without prompting for confirmation. |

## File Creation and Editing:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `touch filename`                      | Creates an empty file with the specified filename.                                                          |
| `nano chicken-joke.txt`               | Opens the nano text editor to create or edit the "chicken-joke.txt" file.                                    |
| `cat chicken-joke.txt`                | Displays the contents of the "chicken-joke.txt" file.                                                       |

## Viewing File Content:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `cat myfile.txt`                      | Displays the contents of the specified file.                                                                |
| `echo "your message" >> nameoffile.txt` | Appends the specified message to the file without erasing the previous content.                              |
| `head -2 chicken-joke.txt`            | Displays the first 2 lines of the "chicken-joke.txt" file.                                                  |
| `tail -2 chicken-joke.txt`            | Displays the last 2 lines of the "chicken-joke.txt" file.                                                   |
| `cat -n chicken-joke.txt`             | Displays the contents of the "chicken-joke.txt" file with line numbers.                                      |

<img width="356" alt="image" src="https://github.com/user-attachments/assets/8fb43cc6-ebf6-4a25-81c0-a5bdaad851ff">


## Searching within Files:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `grep "chicken" chicken-joke.txt`     | Searches for the word "chicken" in the "chicken-joke.txt" file and displays matching lines.                 |

## Moving Files:

| **Command**                                                                 | **Description/Usage**                                                                                       |
|-----------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `mv chicken-joke.txt funny_stuff/`                                          | Moves the file "chicken-joke.txt" to the directory "funny_stuff".                                           |
| `mv funny_stuff/chicken-joke.txt .`                                         | Moves the file "chicken-joke.txt" back to the current directory.                                            |
| `mv funny_stuff/funny_jokes/chicken-joke.txt funny_stuff/funny_jokes/bad_joke.txt` | Renames the file "chicken-joke.txt" to "bad_joke.txt" inside the "funny_jokes" directory.                    |

## Adding and Removing Files:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `nano provision.sh`                   | Opens the nano text editor to create or edit a shell script named "provision.sh".                            |
| `chmod u+x provision.sh`              | Grants execute permission to the owner (user) of the file "provision.sh".                                    |

## ZSH:

| **Command**                                                   | **Description/Usage**                                                                                       |
|---------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `echo $SHELL`                                                 | Check the current shell being used.                                                                         |
| `sudo chsh -s $(which zsh) $(whoami)`                         | Set ZSH as the default shell.                                                                               |
| `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"` | Clone and install Oh My Zsh.                                                                                |
| `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k` | Downloads the Powerlevel10k ZSH theme.                                                                      |

> [!TIP]
> `sudo !!` runs the previous command with sudo infront 
## Changing ZSH Themes:

| **Command**                           | **Description/Usage**                                                                                       |
|---------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `vim ~/.zshrc`                        | Open the `.zshrc` file in your home directory using a text editor to customize ZSH settings.                |
| `ZSH_THEME="powerlevel10k/powerlevel10k"` | Set the ZSH theme to Powerlevel10k by editing the `.zshrc` file.                                             |
| `source ~/.zshrc`                     | Apply the new settings after making changes to the `.zshrc` file.                                           |
| `git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting` | Adds syntax highlighting to your ZSH setup.                                                                 |
| `git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions` | Adds auto-suggestions to your ZSH setup.                                                                    |

![Screenshot 2024-08-26 234359](https://github.com/user-attachments/assets/b4f37d48-a00d-4144-af12-9852f21e9256)

## Vim Navigation and Editing:

| **Command**                            | **Description/Usage**                                                                                       |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------|
| `y` (yank)                             | Copies the selected text in Vim.                                                                             |
| `p` (paste)                            | Pastes the copied text in Vim.                                                                               |
| `u`                                    | Undoes the last change in Vim.                                                                               |
| `Ctrl + r`                             | Redoes the undone change in Vim.                                                                             |
| `:n`                                   | Moves to the next file in a list of files opened in Vim.                                                     |
| `Shift + n`                            | Moves back to the previous file in a list of files opened in Vim.                                            |
| `:syntax on`                           | Enables syntax highlighting in Vim.                                                                          |
| `:syntax off`                          | Disables syntax highlighting in Vim.                                                                         |
| `:set number`                          | Displays line numbers in Vim.                                                                                |
| `:set nonumber`                        | Hides line numbers in Vim.                                                                                   |
| `:w`                                   | Saves the current file in Vim.                                                                               |
| `:wq!`                                 | Saves the file and exits Vim forcefully, even if the file is read-only.                                       |


##  tree:

`tree`  displays directory structures in a tree-like format. It recursively lists all directories and files within a specified directory and its subdirectories.

![image](https://github.com/user-attachments/assets/306c7578-0c0c-4ea9-a95e-48fee6e9afba)

The tree command provides a visual representation of the directory hierarchy, making it easier to navigate and understand the organization of files and folders within a system. 






