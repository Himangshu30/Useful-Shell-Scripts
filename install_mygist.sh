
#!/bin/bash
#@author - Himangshu (Code write by)
if [ ! -d ~/.mygist ];
then
    mkdir ~/.mygist
    git clone https://github.com/Himangshu30 ~/.mygist/mygist_code
    echo "PATH=$PATH:~/.mygist/mygist_code" >> ~/.bashrc
fi
