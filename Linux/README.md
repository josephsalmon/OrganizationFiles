# Linux/Ubuntu installation

Default installation packages.

## Latex and other tools default tools:
sudo apt-get install ffmpeg texlive-full filezilla git gitk tig xournal

## Zoom
https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux#h_adcc0b66-b2f4-468b-bc7a-12c182f354b7

## Anaconda

https://www.anaconda.com/products/individual

conda install pelican Markdown pandas bibtex parser voila scikit-learn 
conda install -c conda-forge jupyter_contrib_nbextensions


## Inkscape
<https://textext.github.io/textext/install/linux.html>

## Communication
- Mattermost: <https://docs.mattermost.com/install/desktop.html?src=dl#linux>
- Slack: <https://slack.com/intl/en-fr/downloads/linux>

## Sublime Text
https://www.sublimetext.com/docs/3/linux_repositories.html

## VSCode
sudo snap install --classic code

# OBS (https://obsproject.com/wiki/install-instructions#ubuntumint-installation)
 (Rem: ffmpeg needed.)

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio

# Flux

# fzf (reverse research)
sudo apt-get install fzf

and put in your .bashrc
``` bash

# added fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
```
and then
```bash
# Append this line to ~/.bashrc to enable fzf keybindings for Bash:
source /usr/share/doc/fzf/examples/key-bindings.bash
# Append this line to ~/.bashrc to enable fuzzy auto-completion for Bash:
source /usr/share/doc/fzf/examples/completion.bash
```

# xmodmap./xmodmap (accent in qwerty)
```bash
echo keycode 37 = Multi_key > ~/.xmodmap
echo xmodmap ~/.xmodmap >> ~/.bashrc
source ~/.bashrc
```

# Meld (for git diff, merge)
