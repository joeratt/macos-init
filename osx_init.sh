#!/bin/bash

# Go to the Downloads folder
cd ~/Downloads

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Download iTerm2
brew cask install iterm2

# Install Atom Text Editor
brew cask install atom

# Install Postman
brew cask install postman

# Install Google Chrome
brew cask install google-chrome

#Install git
brew install git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Maven
mkdir ~/maven

# 3.5.4
curl -O http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip
unzip apache-maven-3.5.4-bin.zip 
mv apache-maven-3.5.4 ~/maven/3.5.4
rm apache-maven-3.5.4-bin.zip

# 3.3.9
curl -O https://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip
unzip apache-maven-3.3.9-bin.zip
mv apache-maven-3.3.9 ~/maven/3.3.9
rm apache-maven-3.3.9-bin.zip

# 3.2.5
curl -O https://archive.apache.org/dist/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.zip
unzip apache-maven-3.2.5-bin.zip
mv apache-maven-3.2.5 ~/maven/3.2.5
rm apache-maven-3.2.5-bin.zip

# 3.0.5
curl -O https://archive.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.zip
unzip apache-maven-3.0.5-bin.zip 
mv apache-maven-3.0.5 ~/maven/3.0.5
rm apache-maven-3.0.5-bin.zip

chmod -R 755 ~/maven

# Add maven configs to .zshrc
echo "alias mvn354='ln -sf ~/maven/3.5.4/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc
echo "alias mvn339='ln -sf ~/maven/3.3.9/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc
echo "alias mvn325='ln -sf ~/maven/3.2.5/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc
echo "alias mvn305='ln -sf ~/maven/3.0.5/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc

#Set Maven 3.5.4 to the default
echo "mvn354" >> ~/.zshrc

# Install rvm - Ruby
brew install gpg
#
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source /Users/jr017790/.rvm/scripts/rvm
rvm install ruby-2.5.1

# Set up Java aliases
echo "alias jdk6='export JAVA_HOME=\`/usr/libexec/java_home -v \"1.6\"\`'" >> ~/.zshrc
echo "alias jdk7='export JAVA_HOME=\`/usr/libexec/java_home -v \"1.7\"\`'" >> ~/.zshrc
echo "alias jdk8='export JAVA_HOME=\`/usr/libexec/java_home -v \"1.8\"\`'" >> ~/.zshrc

#Set Java 8 to the default
echo "jdk8" >> ~/.zshrc

