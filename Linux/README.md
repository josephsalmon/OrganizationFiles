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

# OBS
(https://obsproject.com/wiki/install-instructions#ubuntumint-installation)

```bash
sudo apt install ffmpeg
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio
```

Compatibility with zoom:

<https://jonathanbossenger.com/obs-studio-linux-virtual-camera/>
and the bonus to avoid compression artefacts from zoom:


"go share screen - advanced - share content from second camera - click the switch camera icon in the top left until i find the Virtual Cam Stream and then i am getting perfect quality."

<https://obsproject.com/forum/threads/obs-output-blurry-in-ndi-and-virtual-cam-using-skype-zoom-or-vlc-directshow.118628/>

# Flux
```bash
sudo apt-get install python3-pexpect python3-distutils gir1.2-appindicator3-0.1 gir1.2-gtk-3.0
# Download fluxgui
cd /tmp
git clone "https://github.com/xflux-gui/fluxgui.git"
cd fluxgui
./download-xflux.py


# EITHER install system wide
sudo ./setup.py install --record installed.txt

# EXCLUSIVE OR, install in your home directory
#
# The fluxgui program installs
# into ~/.local/bin, so be sure to add that to your PATH if installing
# locally. In particular, autostarting fluxgui in Gnome will not work
# if the locally installed fluxgui is not on your PATH.
./setup.py install --user --record installed.txt

# Run flux
fluxgui
```


# fzf (reverse research)
``` bash
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```
apt-get not good for that one :(

# xmodmap./xmodmap (accent in qwerty)
```bash
echo keycode 105 = Multi_key > ~/.xmodmap
echo xmodmap ~/.xmodmap >> ~/.bashrc
source ~/.bashrc
```

# Meld (for git diff, merge)
 sudo apt-get install meld



