### The error:

  * NO PING IN WSL2 !

### The repair:

  * Make a file .wslconfig in your home directory: ~/.wslconfig with this in it:
        ``
      [wsl2]
      swap=0
      ``

  * Reboot the pc if needed :)
