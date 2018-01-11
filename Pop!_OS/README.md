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
b.Add sudo and force scale factor to 2.5  
`sudo netease-cloud-music --force-device-scale-factor=2.5 --no-sandbox %U`

## 4. Click the Netease-cloud-music icon it doesn't start,becasue it has no sudo authority

a.Open the sudo authority file (you have to use visudo commend otherwize it doesn't work)   
`sudo visudo -f /etc/sudoers`  
b.Add the nopasswd author to netease-cloud-music  (eg.username is zeromov)
`zeromov ALL=NOPASSWD:/usr/bin/netease-cloud-music`  
c.use ctrl+X save   then  Y  then  enter









