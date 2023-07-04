# ShellShack for unRAID (User Scripts Collection)
Personal repository of random user scripts for unRAID.
Comes with an updater of sorts.

## Important Notes
**RUN THESE SCRIPTS AT YOUR OWN RISK.** This collection of scripts is provided for informational and educational purposes only, without any warranties or guarantees.

### Scripts Need Additional Setup
Some scripts come bundled with a `prefs_template` file. These scripts need additional setup before they will run. 

Make a copy of this file, call it `prefs` (without the `_template` part) and place it in the same directory, then edit the variables inside the file to your liking. Hopefully the variables are somewhat self-explanatory.

The updater will update `prefs_template` alongside the other script files, and leave the `prefs` file untouched.

## Installation
In an unRAID terminal, enter the following command:
```
curl -sSL https://raw.githubusercontent.com/mrchrisneal/shellshack/main/install.sh | bash
```
