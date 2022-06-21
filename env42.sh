# Homebrew 설치
if ! which brew
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Homebrew PATH 추가
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/{사용자이름}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

read -r -s -p "[sudo] sudo password for $(whoami):" pass

# Brewfile 실행
brew bundle --file=./Brewfile.42dot

# Git config
git config --global user.name '{이름}'
git config --global user.email '{이메일}@42dot.ai'

printf '\n\n🎉 Congrat! Your mac has been set up successfully for working with 42dot TaaS Engineering Team!\n'
