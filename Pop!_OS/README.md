# Pop!_OS


11/1/2018
System : Pop!_OS 17.10  
Laptop : DELL XPS15 9560 4K  

## 1. Resolution for the 4k add the the mode   
  

`sudo xrandr --newmode "3840*2160_60.00" 712.75 3840 4160 4576 5312 2160 2163 2168 2237 -hsync +vsync`

`xrandr --addmode Virtual1 3840*2160_60.00`

## 2. The font and icon is too tiny 

`xrandr --output Virtual1 --scale 0.5x0.5`  

`gsettings set org.gnome.desktop.interface scaling-factor 2`

`xrandr --output Virtual1 --scale 1.0x1.0`

## 3. Change the Resolution for Netease-cloud-music 

a. Open the start configuration file  
`sudo gedit /usr/share/applications/netease-cloud-music.desktop`  

![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/NETEASE1.PNG)  
b.Add sudo and force scale factor to 2.5  
`sudo netease-cloud-music --force-device-scale-factor=2.5 --no-sandbox %U`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/NETEASE2.PNG)  
## 4. Click the Netease-cloud-music icon it doesn't start,becasue it has no sudo authority

a.Open the sudo authority file (you have to use visudo commend otherwize it doesn't work)   
`sudo visudo -f /etc/sudoers`  
b.Add the nopasswd author to netease-cloud-music  (eg.username is zeromov)  
`zeromov ALL=NOPASSWD:/usr/bin/netease-cloud-music`  

![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/NETEASE3.PNG)  
c.use ctrl+X save   then  Y  then  enter

## 5. install oh my zsh
a. check if installed zsh  
`zsh --version`  
b. install zsh  
`sudo apt-get install zsh`  
c. install wget  
`sudo apt-get install zsh`  
d. check current bash  
`echo $SHELL/bin/bash`  
e.install oh-my-bash  
`$ wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh`  
f.change bash to zsh：  
`$ chsh -s /bin/zsh`  
g.reboot：  
`$ sudo reboot`  
h. use the random theme  
`gedit ~/.zshrc`  
`ZSH_THEME="random"`  
`ZSH_THEME_RANDOM_CANDIDATES = ( "fino" "ys")`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/ZSH.PNG) 

## 6. Sougo pinyin input panel too small  
set the font size  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/SOUGO.PNG) 

## 7. Install Incremental completion on zsh  
a. create folder in plugins  
`cd .oh-my-zsh/plugins`  
`sudo mkdir incr`  
b. create newfile  
`cd incr`  
`sudo gedit incr-0.2.zsh`  
c. copy the content incr-0.2.zsh download from mimosa-pudica.net/zsh-incremental.html  
d.add the configutation  
`gedit ~/.zshrc`  
`source ~/.oh-my-zsh/plugins/incr/incr*.zsh`  

![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/ZSH1.PNG) 

13/1/2018
## 8. Install Wechat  
a.Snap makes it easier to install WeChat unofficial client  
`sudo apt install snapd snapd-xdg-open`  
b.install it  
`sudo snap install electronic-wechat`   
c.Launch it  
`electronic-chat` 

## 9. Install Guake  
a.Install Guake  
`sudo apt-get install guake`  
b.Add it to start application  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/GUAKE.PNG)  
c. Press F12  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/GUAKE2.PNG) 


## 10.Write shell to startup and set the reslolution  
a.create a sh  
`touch setresolution.sh`  
b.Add commend

`#!/bin/bash` ` 
xrandr --output Virtual1 --scale 0.5x0.5 && gsettings set` `org.gnome.desktop.interface scaling-factor 2 &&` `xrandr --output Virtual1 --scale 1.0x1.0`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/RES.PNG)  
c.Add it to start application(have no idea why it should be execute twice)  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/RES2.PNG) 

## 11.if the resolution is wrong use terminal to try different solution you could change the 0 to any number that the resolutions you have  

`xrandr -s 0`  

## 12. install Markdown software Typora   

a.optional, but recommended  
`sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE`  
b.add Typora's repository  
`sudo add-apt-repository 'deb http://typora.io linux/'`  
`sudo apt-get update`   
c.install typora  
`sudo apt-get install typora`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/TYPORA.PNG) 

## 13. install nvbn/theFUCK corrects your previous console command  

a.intall the FUCK  
`sudo apt update`  
`sudo apt install python3-dev python3-pip`  
`sudo pip3 install thefuck`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/FUCK.PNG)   


## 14. install gimp click the icon doesn't work  
a.change direction  
`cd /usr/share/applications`  
`sudo gedit gimp.desktop`  
b. change exec  
`Exec=gimp %U`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/GIMP.PNG)  

## 15.terminal Star War    
`sudo apt-get install telnet`  

`telnet towel.blinkenlights.nl`  

## 16.terminal Cat  
`sudo apt-get install oneko`  

## 17. current connect state  ==ping+traceroute+nslookup  
`mtr`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/MTR.PNG)  

## 18. view the folder tree  
`sudo apt-get install tree`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/TREE.PNG)   


## 19 Update Error - Too few items to process  

a. not use the typora source   
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/UGRADEERROR.PNG)   
b. use the prerelease os   
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/Pop!_OS/SCREENSHOT/PRERELEASE.PNG)  


















*Current soft*:Chrome,Oh my zsh,vscode,netease cloud music,fcitx Sogou,incr,wechat,guake,typora

Forum:  https://www.reddit.com/r/pop_os/  
Blog:  http://blog.system76.com/







