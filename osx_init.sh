#!/bin/bash

# Go to the Downloads folder
cd ~/Downloads

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Download iTerm2
brew cask install iterm2

# Install Visual Studio Code
brew cask install visual-studio-code

# Install Postman
brew cask install postman

# Install Firefox
brew cask install google-chrome

# Install Thunderbird
brew cask install thunderbird

# Install WebTorrent
brew cask install webtorrent

# Install KeePassX
brew cask install keepassx

# Install sublime-text
brew cask install sublime-text

#Install git
brew install git

#Install hub
brew install hub
echo "alias git=hub" >> ~/.zshrc

#Install automake
brew install automake

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh autosuggestions
brew install zsh-autosuggestions

# Install Maven
mkdir ~/maven

# 3.6.2
curl -O http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.6.2/binaries/apache-maven-3.6.2-bin.zip
unzip apache-maven-3.6.2-bin.zip
mv apache-maven-3.6.2 ~/maven/3.6.2
rm apache-maven-3.6.2-bin.zip

# 3.5.4
curl -O http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip
unzip apache-maven-3.5.4-bin.zip
mv apache-maven-3.5.4 ~/maven/3.5.4
rm apache-maven-3.5.4-bin.zip

chmod -R 755 ~/maven

# Add maven configs to .zshrc
echo "alias mvn362='ln -sf ~/maven/3.6.2/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc
echo "alias mvn354='ln -sf ~/maven/3.5.4/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc

#Set Maven 3.5.4 to the default
echo "mvn362" >> ~/.zshrc

# Install rvm - Ruby
brew install gpg
#
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/jr017790/.rvm/scripts/rvm
rvm install ruby-2.6.2

# Install Java 
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk12

# Set up Java aliases
echo "alias jdk8='export JAVA_HOME=\`/usr/libexec/java_home -v \"1.8\"\`'" >> ~/.zshrc
echo "alias jdk12='export JAVA_HOME=\`/usr/libexec/java_home -v \"12\"\`'" >> ~/.zshrc

#Set Java 8 to the default
echo "jdk12" >> ~/.zshrc

#Install Jarvis - personal assistant
# source - https://github.com/sukeesh/Jarvis 
git clone https://github.com/sukeesh/Jarvis
cd Jarvis
./setup.sh
