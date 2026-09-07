# tmux Cheatsheet

## Sessions
### New Session
tmux new -s name

### Attach Session
tmux a -t name

### List Sessions
tmux ls

### Detach
Ctrl+b d

### Rename Session
Ctrl+b $

### Interactive Session List
Ctrl+b s

---

## Windows
### Create Window
Ctrl+b c

### Next Window
Ctrl+b n

### Previous Window
Ctrl+b p

### Select by Index
Ctrl+b <0-9>

### Rename Window
Ctrl+b ,

### Close Window
Ctrl+b &

---

## Panes
### Vertical Split
Ctrl+b %

### Horizontal Split
Ctrl+b "

### Navigate Panes
Ctrl+b <Arrow Keys>

### Toggle Zoom
Ctrl+b z

### Close Pane
Ctrl+b x

### Vertical horizontal
Ctrl+b Spacebar

### Resize Up 1 Cell
Ctrl+b Alt+Up Arrow

### Resize Down 1 Cell
Ctrl+b Alt+Down Arrow

### Resize Left 1 Cell
Ctrl+b Alt+Left Arrow

### Resize Right 1 Cell
Ctrl+b Alt+Right Arrow
