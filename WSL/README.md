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
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/HYPERINSTALL.PNG)    

## 6. Test to run c program  

a. Install develpe tool  
`sudo apt install build-essential `  
b. create c file  
`touch test.c`  
`vi test.c`  
c. compile  
`gcc test.c -o test`  
d. execute  
`./test`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/TESTGCC.PNG)  

## 7. use #POP!_OS#7  Install Incremental completion on zsh 

a.intall the FUCK  
`sudo apt update`  
`sudo apt install python3-dev python3-pip`  
`sudo pip3 install thefuck`    
b.config zshrc  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/THEFUCK.PNG)   
c.add eval  
`eval "$(thefuck --alias)"`  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/THEFUCK2.PNG)  
d. it works  
![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/THEFUCK3.PNG)

## 8. vscode with ubuntu bash  
 ![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/VSCODEBASH.PNG)  
 ![image](https://github.com/hanxuwu/Learning-Linux/blob/master/WSL/SCREENSHOT/VSUBUNTU.PNG)

