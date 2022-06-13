# PATH 추가
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/connor/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Homebrew 설치
if ! which brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

read -r -s -p "[sudo] sudo password for $(whoami):" pass

# Brewfile 실행
brew bundle --file=./Brewfile.connor

# Git config
git config --global user.name 'Connor'
git config --global user.email 'kor.connor@gmail.com'
git config --global init.defaultBranch main

# Git alias
git config --global alias.rollback 'reset --hard'
git config --global alias.cancel 'reset --hard head^'

# Oh-My-Zsh 설치
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 터미널 폰트 설치
git clone https://github.com/powerline/fonts.git --depth=1

cd fonts
./install.sh

# fonts 폴더 지우기
cd ..
rm -rf ~/fonts

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with Connor Team!\n'
