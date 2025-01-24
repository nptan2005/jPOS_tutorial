"D:\WorkSpace\Java\gradle-8.12\bin\gradle" wrapper

$env:PATH += ";D:\WorkSpace\Java\gradle-8.12\bin"
$env:PATH += ";D:\WorkSpace\Java\jdk-23.0.2\bin"
$env:JAVA_HOME="D:\WorkSpace\Java\jdk-23.0.2"
gradle -v

https://github.com/jpos/jPOS.git


sdk install java 23-amzn
sdk list java
sdk use java 23-amzn
sdk use java 23-amzn
----
install JAVA
sudo apt update
sudo apt upgrade
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install openjdk-23-jdk
sudo update-alternatives --config java
---
codespace

sudo update-alternatives --config java
java -version
export JAVA_HOME=/usr/lib/jvm/java-23-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH
source ~/.bashrc   # Hoặc .zshrc, .bash_profile tùy theo shell bạn đang dùng
java -version
sdk env
java -version && gradle --version
gradle tasks
gradle run

gradle -Ptarget=prod installApp

bin/q2 -Epro

gradle installApp && bin/q2




