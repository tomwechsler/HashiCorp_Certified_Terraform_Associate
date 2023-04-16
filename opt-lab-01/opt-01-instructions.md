# Opt-01: (Optional) Fish and Custom Terminal
Fish (friendly interactive shell) is an alternative to Bash. Consider using it to make your workflow more efficient. 
Also, if you like to use the Terminal in VSCode then you might want to configure it to maximize on the screen. Step-by-step below.

> NOTE: This lab is optional!

> NOTE: When working with new technologies, it is best to test them in a virtual machine environment first before applying them to your main systems. 

## Install Fish as your shell

https://fishshell.com/

Configure Fish as the default shell:

https://fishshell.com/docs/current/index.html#starting-and-exiting 

> NOTE: the /local part of the directory path works for many Linux distros, but should be omitted in Debian. 

Restart your computer or virtual machine. After the restart the Fish shell should work by default.

Modify the Fish prompt, color scheme, and more, by running the following program in the terminal:

`fish_config`

That will open a browser tab with all of the configuration options for Fish. 

Restart the virtual machine when done. Verify that you can now use the Fish shell by default.

> NOTE: For information on how to use Fish interactively, see the following link: https://fishshell.com/docs/current/interactive.html

## Configure the VSCode terminal to maximize with a keyboard shortcut

- Go to File > Preferences > Keyboard Shortcuts: (Ctrl+k, Ctrl+s) 
- Search for the following item: 

  workbench.action.toggleMaximizedPanel

- Add a shortcut of your choice. 
- Test the shortcut toggle. This should allow you to maximize the terminal (hiding the code pane) and restore it back to where it was.

---
## *GREAT WORK!*
---