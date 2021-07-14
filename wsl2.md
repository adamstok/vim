### The error - no way to push changes remotely:

  * NO PING IN WSL2 !

### The repair:

  * Make a file .wslconfig in your home directory: ~/.wslconfig with this in it:

```
[wsl2]
swap=0
```

  * Reboot the pc if needed :)
  * If it doesn't work - stop Windows Docker or connect to your container terminal, add your github / gitlab ssh key and push from the container
  * If it doesn't work - just virtualise Linux in some kind of VMware or else :D
