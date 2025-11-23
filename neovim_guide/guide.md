---
id: guide
aliases: []
tags: []
---

# 🚀 Complete Neovim Tutorial - Your Custom Setup

## 📋 Table of Contents
1. [Basic Navigation](#basic-navigation)
2. [Opening & Saving Files](#opening--saving-files)
3. [Editing Text](#editing-text)
4. [Dashboard Usage](#dashboard-usage)
5. [File Explorer](#file-explorer)
6. [Finding Files (Telescope)](#finding-files-telescope)
7. [C++ Development](#c-development)
8. [Note-Taking (Zettelkasten)](#note-taking-zettelkasten)
9. [Git Workflow](#git-workflow)
10. [Advanced Tips](#advanced-tips)

---

## 🎯 Basic Navigation

### Understanding Vim Modes
Neovim has different modes:
- **NORMAL mode** (default) - Navigate and run commands
- **INSERT mode** - Type text like a normal editor
- **VISUAL mode** - Select text
- **COMMAND mode** - Run commands (`:`)

### Essential Keys (NORMAL mode)

**Movement:**
```
h - Move left
j - Move down  
k - Move up
l - Move right

w - Jump forward by word
b - Jump backward by word
0 - Jump to start of line
$ - Jump to end of line

gg - Go to first line
G  - Go to last line
5G - Go to line 5

Ctrl+u - Scroll up half page
Ctrl+d - Scroll down half page
```

**Switching Modes:**
```
i  - Enter INSERT mode (before cursor)
a  - Enter INSERT mode (after cursor)
o  - New line below and INSERT mode
O  - New line above and INSERT mode
Esc - Return to NORMAL mode
v  - Enter VISUAL mode
V  - Enter VISUAL LINE mode
```

---

## 📁 Opening & Saving Files

### Starting Neovim

```bash
# Open dashboard
nvim

# Open specific file
nvim myfile.cpp

# Open file at specific line
nvim +15 myfile.cpp

# Open multiple files
nvim file1.cpp file2.cpp
```

### Saving & Quitting (from NORMAL mode)

```
:w          - Save (write)
:q          - Quit
:wq  or :x  - Save and quit
:q!         - Quit without saving
:wa         - Save all open files

<Space>w    - Quick save (your config)
<Space>q    - Quick quit (your config)
<Space>x    - Save and quit (your config)
```

---

## ✏️ Editing Text

### Basic Editing (NORMAL mode)

**Deleting:**
```
x   - Delete character under cursor
dw  - Delete word
dd  - Delete entire line
5dd - Delete 5 lines
d$  - Delete from cursor to end of line
D   - Same as d$
```

**Copying (Yanking):**
```
yy  - Copy (yank) line
yw  - Copy word
5yy - Copy 5 lines
y$  - Copy to end of line
```

**Pasting:**
```
p - Paste after cursor
P - Paste before cursor
```

**Undo/Redo:**
```
u       - Undo
Ctrl+r  - Redo
```

**Find & Replace:**
```
/search_term     - Search forward
?search_term     - Search backward
n                - Next match
N                - Previous match

:%s/old/new/g    - Replace all "old" with "new" in file
:%s/old/new/gc   - Replace with confirmation
```

### INSERT Mode Tricks

```
Ctrl+h - Delete previous character
Ctrl+w - Delete previous word
Ctrl+u - Delete to start of line
```

---

## 🎨 Dashboard Usage

When you open `nvim` without a file, you see the dashboard:

```
f - Find Files              (search all files in current directory)
g - Search Text             (search text content in files)
r - Recent Files            (recently opened files)
s - Search Notes            (search in ~/learning_projects)
G - Git Status              (open Neogit for Git operations)
c - Config File             (edit your init.lua)
q - Quit                    (exit Neovim)
```

**Usage:**
1. Type the key (e.g., `f`)
2. Or use arrow keys/`j`/`k` to navigate and press `Enter`

To bring up dashboard anytime: `:Dashboard`

---

## 📂 File Explorer

### Opening File Tree
```
<Space>e  - Toggle file explorer (NvimTree)
```

### Navigating NvimTree
```
j/k or ↑/↓  - Move up/down
Enter       - Open file/folder
o           - Open file/folder
a           - Create new file (type name + Enter)
d           - Delete file
r           - Rename file
x           - Cut file
c           - Copy file
p           - Paste file
R           - Refresh tree
H           - Toggle hidden files
q           - Close tree
```

### Workflow Example:
```
1. Press <Space>e to open tree
2. Navigate with j/k
3. Press Enter to open file
4. Edit file
5. Press <Space>e to toggle tree off
```

---

## 🔍 Finding Files (Telescope)

### Telescope Commands

```
<Space>ff  - Find files by name
<Space>fg  - Find text in files (grep)
<Space>fb  - Find open buffers
<Space>fo  - Find recent files
```

### Using Telescope
1. Press the shortcut (e.g., `<Space>ff`)
2. Start typing to filter
3. Use arrow keys or `Ctrl+j`/`Ctrl+k` to navigate
4. Press `Enter` to open file
5. Press `Esc` to close

**Pro Tips:**
```
In Telescope search:
Ctrl+j/k  - Navigate results
Ctrl+n/p  - Navigate results (alternative)
Ctrl+u    - Clear search
Tab       - Toggle selection (for multiple files)
Ctrl+q    - Send to quickfix list
```

---

## 💻 C++ Development

### Compiling & Running

```
F5  - Compile and run (opens in split terminal)
F6  - Compile only (shows errors if any)
```

**Workflow:**
1. Write your C++ code
2. Press `F5`
3. Code compiles with: `g++ -std=c++17 -Wall -O2`
4. Terminal opens automatically with output
5. Type `:q` to close terminal

### LSP Features (Code Intelligence)

**Auto-completion:**
- Type code and suggestions appear automatically
- `Tab` - Accept suggestion
- `Shift+Tab` - Previous suggestion
- `Ctrl+Space` - Trigger completion manually

**Navigation:**
```
gd        - Go to definition
gr        - Go to references
K         - Show documentation
<Space>rn - Rename symbol
<Space>ca - Code actions
```

**Diagnostics (Errors/Warnings):**
```
]d  - Next diagnostic
[d  - Previous diagnostic
<Space>e - Show diagnostic details
```

### Multi-file Projects

```bash
# Create project
mkdir my_project && cd my_project
nvim main.cpp

# Open multiple files
:e utils.cpp     (open another file)
:sp header.h     (split horizontally)
:vs other.cpp    (split vertically)
```

---

## 📝 Note-Taking (Zettelkasten)

### Creating Notes

```bash
# Method 1: From terminal
cd ~/learning_projects
nvim my-note.md

# Method 2: From dashboard
nvim
Press 's' to search notes
Type new filename and create it

# Method 3: Inside Neovim
:e ~/learning_projects/new-note.md
```

### Wiki-Style Links

In your markdown notes:
```markdown
# My Note

This connects to [[another-note]]

You can have multiple [[links]] in [[one-note]]

## Backlinks
Press <Space>ob to see what links here
```

**Link Commands:**
```
<Space>on  - Create new note
<Space>oo  - Quick switch between notes
<Space>os  - Search all notes
<Space>ol  - Show links in current note
<Space>ob  - Show backlinks to current note

gf         - Follow link under cursor (in normal mode)
[[         - Start creating a link (auto-completes)
```

### Markdown Preview

```
<Space>mp  - Open markdown preview in browser
```

**Markdown Syntax:**
```markdown
# Heading 1
## Heading 2

**bold** *italic*

- List item
- Another item

1. Numbered
2. List

`code inline`

```cpp
// code block
int main() {
    return 0;
}
```

[External Link](https://example.com)
[[Internal Wiki Link]]
```

### Daily Notes

Create daily journal entries:
```bash
# Create today's note
cd ~/learning_projects/daily
nvim $(date +%Y-%m-%d).md
```

---

## 🔧 Git Workflow

### Quick Git Commands

```
<Space>gg  - Open Neogit (Git UI)
<Space>gc  - Quick commit
<Space>gp  - Git push
<Space>gP  - Git pull
```

### Using Neogit

1. Press `<Space>gg` to open Neogit
2. Interface shows:
   - Untracked files
   - Unstaged changes
   - Staged changes

**Neogit Keys:**
```
s  - Stage file (cursor on file)
u  - Unstage file
c  - Commit menu
   c - Create commit
   Type message
   Ctrl+c twice - Confirm commit
   
P  - Push menu
   p - Push to origin
   
F  - Pull menu
   p - Pull from origin

q  - Close Neogit
?  - Show help
```

### Git Signs (Inline Git Info)

Your config shows git changes inline:
```
+ Green line    - Added line
~ Yellow line   - Modified line
- Red indicator - Deleted line

Blame info shows at end of line after 500ms
```

### Typical Git Workflow

```bash
# 1. Make changes to files
nvim myfile.cpp
# ... edit ...
:w

# 2. Open Git UI
<Space>gg

# 3. Stage files
Move cursor to file, press 's'

# 4. Commit
Press 'c', then 'c'
Type commit message
Ctrl+c twice

# 5. Push
Press 'P', then 'p'

# 6. Close Neogit
Press 'q'
```

---

## 🎮 Advanced Tips

### Window Management

```
Ctrl+h  - Move to left window
Ctrl+j  - Move to bottom window
Ctrl+k  - Move to top window
Ctrl+l  - Move to right window

:sp filename   - Split horizontally
:vs filename   - Split vertically
Ctrl+w =       - Make windows equal size
Ctrl+w _       - Maximize height
Ctrl+w |       - Maximize width
:q             - Close current window
```

### Buffer Management

```
:ls             - List all buffers
:b 2            - Switch to buffer 2
:bd             - Delete current buffer

Tab             - Next buffer (your config)
Shift+Tab       - Previous buffer (your config)
<Space>bd       - Delete buffer (your config)
```

### Multi-Cursor Editing (Visual Block)

```
1. Ctrl+v       - Enter visual block mode
2. Move down with j (select multiple lines)
3. Shift+i      - Insert at start of block
4. Type text
5. Esc Esc      - Apply to all lines
```

**Example:** Comment multiple lines
```
1. Ctrl+v
2. jjjj (select 4 lines)
3. Shift+i
4. Type //
5. Esc Esc
```

### Macros (Record & Repeat Actions)

```
qa          - Start recording macro in register 'a'
... do actions ...
q           - Stop recording

@a          - Play macro 'a'
10@a        - Play macro 10 times
```

**Example:** Add semicolons to multiple lines
```
1. qa           (start recording)
2. A;           (append semicolon at end)
3. Esc j        (go to next line)
4. q            (stop recording)
5. 10@a         (repeat on 10 lines)
```

### Comments

```
gcc         - Toggle comment on current line
gc + motion - Comment motion (e.g., gcap for paragraph)
5gcc        - Toggle comment on 5 lines

In VISUAL mode:
Select lines, then gc - Comment selection
```

### Which-Key (Discover Shortcuts)

```
<Space>     - Wait 1 second, menu appears showing all <Space> shortcuts
<Space>?    - Show all keybindings
```

---

## 🎯 Complete Workflow Examples

### Example 1: Writing C++ Program

```bash
# 1. Start
cd ~/projects/cpp_practice
nvim hello.cpp

# 2. Write code (press 'i' for INSERT mode)
#include <iostream>
using namespace std;

int main() {
    cout << "Hello World!" << endl;
    return 0;
}

# 3. Exit INSERT mode (Esc)

# 4. Save and compile
Press F5

# 5. See output in terminal
# Terminal opens automatically with result

# 6. Close terminal
:q

# 7. Edit again if needed
Press 'i', make changes, Esc

# 8. Save and quit
<Space>x
```

### Example 2: Taking Notes with Links

```bash
# 1. Start
cd ~/learning_projects
nvim index.md

# 2. Write note
# Press 'i' for INSERT mode

# Learning Index

## Topics
- [[cpp-basics]]
- [[algorithms]]
- [[data-structures]]

# 3. Create linked notes
# Exit INSERT mode (Esc)
# Move cursor to [[cpp-basics]]
# Press 'gf' (creates new note)

# 4. Write in new note
# Press 'i'

# C++ Basics

## Pointers
A pointer stores memory address...

See also: [[memory-management]]

# 5. Save
Esc, then <Space>w

# 6. Go back
Ctrl+o (jump back)

# 7. Continue linking notes
```

### Example 3: Git Commit Workflow

```bash
# 1. Make changes
nvim file1.cpp
# ... edit ...
:w

nvim file2.cpp
# ... edit ...
:w

# 2. Check status
<Space>gg

# 3. Stage files
# Move to file1.cpp, press 's'
# Move to file2.cpp, press 's'

# 4. Commit
Press 'c', then 'c'
Type: "Add new feature"
Ctrl+c twice

# 5. Push
Press 'P', then 'p'

# 6. Done
Press 'q'
```

---

## 🔥 Quick Reference Cheatsheet

### Most Used Commands

| Action | Command | Notes |
|--------|---------|-------|
| **Open file** | `nvim file.cpp` | From terminal |
| **Save** | `:w` or `<Space>w` | In NORMAL mode |
| **Quit** | `:q` or `<Space>q` | |
| **Insert mode** | `i` | Start typing |
| **Normal mode** | `Esc` | Stop typing |
| **Undo** | `u` | |
| **Search** | `/text` | Then `n` for next |
| **File tree** | `<Space>e` | Toggle |
| **Find file** | `<Space>ff` | Fuzzy search |
| **Run C++** | `F5` | Compile & run |
| **Git** | `<Space>gg` | Open Neogit |
| **Comment** | `gcc` | Toggle comment |
| **Help** | `<Space>?` | Show all keys |

### Movement Cheatsheet

```
     k
     ↑
h ← → l
     ↓
     j

w = word forward
b = word back
0 = line start
$ = line end
gg = file start
G = file end
```

---

## 🆘 Troubleshooting

### "I'm stuck in Vim!"
```
Press Esc
Type :q!
Press Enter
```

### "How do I exit INSERT mode?"
```
Press Esc
```

### "I made a mistake!"
```
Press Esc
Press u (undo)
```

### "Dashboard not showing"
```
:Dashboard
```

### "LSP not working for C++"
```
:Mason
Check if clangd is installed
Press 'i' on clangd to install
```

### "Plugins not loading"
```
:Lazy sync
Wait for completion
Restart: :qa then nvim
```

---

## 🎓 Learning Path

**Week 1:** Basic navigation
- Practice: h, j, k, l
- Practice: i, Esc, :w, :q
- Open files, edit, save

**Week 2:** Editing
- Practice: dd, yy, p
- Practice: w, b, 0, $
- Write small programs

**Week 3:** Advanced navigation
- Practice: Telescope (Space+ff)
- Practice: File tree (Space+e)
- Multi-file projects

**Week 4:** Note-taking
- Create wiki-style notes
- Link notes together
- Organize knowledge

**Week 5:** Git workflow
- Use Neogit for commits
- Practice staging and pushing
- Make daily commits

**Week 6:** Mastery
- Learn macros
- Custom keybindings
- Explore plugins

---

## 📚 Resources

**Built-in Help:**
```
:help              - General help
:help key          - Help for specific key
:Tutor             - Interactive tutorial
```

**Online:**
- Vim Adventures (game to learn Vim)
- vimgenius.com (practice exercises)
- Your config docs: `:help which-key`

---

## 🎉 Final Tips

1. **Don't try to learn everything at once** - Start with basics
2. **Practice daily** - Muscle memory is key
3. **Use cheatsheet** - Keep it visible first week
4. **Customize** - Add your own shortcuts in init.lua
5. **Have fun!** - It gets addictive once you get it

---

### Remember:
- `Esc` returns to NORMAL mode
- `<Space>` is your leader key for shortcuts
- `:q!` exits without saving if stuck
- `u` undoes mistakes
- `<Space>?` shows all keybindings

**You got this! 🚀**
