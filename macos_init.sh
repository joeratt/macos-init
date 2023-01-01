#!/bin/bash

# Go to the Downloads folder
cd ~/Downloads

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Download Brewfile and Install
curl -O https://raw.githubusercontent.com/joeratt/macos-init/master/Brewfile

brew bundle --file Brewfile


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Maven
mkdir ~/maven

# Maven 3.8.6
curl -O https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip
unzip apache-maven-3.8.6-bin.zip
mv apache-maven-3.8.6 ~/maven/3.8.6
rm apache-maven-3.8.6-bin.zip


chmod -R 755 ~/maven

# Add maven configs to .zshrc
echo "alias mvn386='ln -sf ~/maven/3.8.6/bin/mvn /usr/local/bin/mvn'" >> ~/.zshrc

#Set Maven 3.8.6 to the default
echo "mvn386" >> ~/.zshrc

# Install rvm - Ruby
brew install gpg
#
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source $HOME/.rvm/scripts/rvm
rvm install ruby-2.6.2


# Set up Java aliases
echo "alias jdk18='export JAVA_HOME=\`/usr/libexec/java_home -v \"18\"\`'" >> ~/.zshrc

#Set Java 8 to the default
echo "jdk18" >> ~/.zshrc
