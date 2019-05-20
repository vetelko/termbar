This idea came from assumption that you are using some kind of panel or
bar in your WM and that many window managers **can**:

* create a gap between screen edge and window border
* ignore particular window
* show particular window on all workspaces (sticky windows)

You can replace all those conkys, bars, panels, ..  etc.  with (shell)
script running in terminal window.

On the following image is white Termbar (xterm) showing some info
usefull for me e.g number of ssh sessions running.  It is very simple
example, the possibilities are endless, you can output anything into
termbar.

Termbar window is ignored by cwm(1), it is ignored while switching between
windows, it has no border, it is not covered by other windows if you
maximize them.

![Image of Termbar running in cwm](./screenshot.png?raw=true "Termbar running in cwm")
