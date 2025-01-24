## Giấy phép

Dự án này sử dụng thư viện jPOS, được phân phối theo giấy phép **GNU Affero General Public License version 3** (AGPL-3.0).

Bạn có thể tham khảo giấy phép đầy đủ của jPOS tại [https://www.gnu.org/licenses/agpl-3.0.html](https://www.gnu.org/licenses/agpl-3.0.html).

Nếu bạn phân phối mã nguồn của dự án này hoặc sử dụng dịch vụ mà mã nguồn thay đổi, bạn phải cung cấp mã nguồn theo giấy phép AGPL-3.0.



*** Note, run

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




