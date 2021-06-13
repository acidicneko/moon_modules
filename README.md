# Modules for Moon
This repository contains modules for the [Moon Prompt](https://github.com/ayush7788/moon).

These modules are installable with the Moon Manager, `mm` utility.

## Available Modules
- `username` in `basics.sh`
- `hostname` in `basics.sh`
- `working_dir` in `basics.sh`
- `check_last_status` in `last_status.sh`
- `battery` in `battery.sh`
- `git` in `git.sh`

## Installing a module
All modules are contained within a set.
A set can contain many modules in it. To get a module you have to install the whole set.

To install the module `battery`, you have to install `battery.sh` set.

To install a set do - 
```shell
mm -i battery.sh
```

### Using a module
To use a module, include it in the `MODULES` variable in `~/.config/moon/moon.sh`
```shell
# Other stuff
MODULES="\n\
$(working_dir) $(battery)\
\n >>"

prompt=$MODULES
export PS1=$prompt
```
