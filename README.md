This repository contains an executable script which is useful for resolving scroll issue of Mouse/Trackpad with elemetaryOS. 
The issue is related to mouse/trackpad not being able to scroll after suspending the laptop. It should help with mouse scroll issue as well on desktop pc but it's not tested.

# How to use the fix?
### Do it manually
+ Goto `/lib/systemd/system-sleep/` and simply put the [psmouse-refresh from this repository](https://github.com/muhammadmoazzam/eOS-MouseRestart/blob/master/psmouse-refresh) here.
+ Alternatively, create a new file psmouse-refresh (or any other name you like) and edit the file 
```console
$ sudo nano /lib/systemd/system-sleep/psmouse-refresh
```
  - Now place the following script in the file you created.
```bash
#!/bin/bash

# $1 is the state (pre or post)-sleep
if [[ $1 == post ]]; then
    modprobe -r psmouse
    modprobe psmouse
fi

```

### Do it automatically
- Use the [install.sh from this repository](https://github.com/muhammadmoazzam/eOS-MouseRestart/blob/master/install.sh)

`NOTE: This needs elevated/sudo privileges`

## Credits
- askubuntu.com user for the script: chooooons (https://askubuntu.com/users/874663/chooooons)

- Link to askubuntu question which helped: https://askubuntu.com/questions/1053720/scrolling-not-working-after-suspend-looking-for-permanent-solution

- Link to the Answer: https://askubuntu.com/a/1077839
