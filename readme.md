This idea came from assumption that you are using some kind of panel or
bar in your WM and that many window managers **can**:

* create a gap between screen edge and window border
* ignore particular window
* show particular window on all workspaces (sticky windows)

You can replace all those conkys, bars, panels, ..  etc.  with (shell)
script running in terminal window.

The following image is showing termbar (xterm) with current time updated
every second, running in cwm on OpenBSD. It is very simple example,
the possibilities are endless, you can output anything into termbar.

This xterm window is ignored by cwm, it is ignored while switching
between windows, it has no border, it is not covered by other windows
if you maximize them.

![termbar running in cwm](./shot_08:45:45.png?raw=true)
