# vscode-terminal-testcase
Two similar workspace setups, one for v1.52.1 works, the other, for v1.59.1, doesn't.

The integrated terminal startup is sligthly customized on the workspace level.
I'm running this remotely in WSL 1 with Ubuntu 18.04 on Windows 10 Enterprise.
This example is cloned into my home dir `/home/krokyk`

**VSCode v1.52.1**

Workspace found in `test-1.52.1/project1/test.code-workspace` works as expected, i.e. the shell that is started is initialized with `init.sh` file. When the terminal is split, it behaves the same, runs the `init.sh` file without problems.

**VSCode v1.59.1**

Workspace found in `test-1.59.1/project1/test.code-workspace`, although similarly configured as the 1.52.1, does not work as expected in VSCode 1.59.1.
When new terminal is opened via Ctrl+Shift+\`, it runs the `init.sh`, but then when terminal is split, the new window fails to start with error message:

`The terminal process failed to launch: Starting directory (cwd) "\home\krokyk\vscode-terminal-testcase\test-1.59.1\project2" does not exist.`

As you can see the dir delimiters are wrong, instead of proper linux forward slash `/`, an incorrect (windows-style) backslash `\` is used.

It's worth mentioning that this seems to be the case only when you open a new terminal with Ctrl+Shift+\` (or going to menu Terminal -> New Terminal or clicking the plus sign in the terminal window top right side).

When opened through Launch Profile... (the down arrow icon next to the plus sign in the terminal window top right side) and selecting the `custom-bash` profile, the terminal is opened OK.
Subsequent splitting of this terminal window also works.