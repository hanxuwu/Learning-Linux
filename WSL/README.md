# Windows Subsystem on LINUX


13/1/2018  
System : Ubuntu 16.04.3 LTS    
Laptop : DELL XPS15 9560 4K    

## 1. Check the version  
`lsb_release -a`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/VERSION.PNG)  

## 2. Windows file path  
`cd ../..`   
`cd ./mnt/c`    
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/Path.PNG)

## 3.update the software  
`sudo apt-get update`  
`sudo apt-get upgrade`  

## 4. install zsh  
a.install zsh  
`sudo apt-get install zsh`  
b.install oh-myh-zsh  
`sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"`  
c. change the shell  
`vi .bashrc`  
d.add this at the end  
`bash -c zsh`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/ZSH.PNG)
e. reboot the terminal  
f. use the random THEME  
`vi .zshrc`  
`ZSH_THEME="random"`  
`ZSH_THEME_RANDOM_CANDIDATES=( "fino" "ys" "juanghurtado" "junkfood" "mira" "jtriley" )`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/OHMYZSH.PNG)  

## 5. install hyper 
a.install Hyper  
https://hyper.is/  
b.preview the theme   
https://hyperthemes.matthi.coffee/  
c.modify the preference  
`plugins: ["hyper-snazzy"],`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/HYPER.PNG)  
d.use bash open WSL  
`bash`  



