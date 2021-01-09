#!/bin/zsh
source ~/.zshrc
# 1. Install homebrew
echo "---------------------"
echo "1. Install homebrew"
brew -v > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Download iterm2
echo "---------------------"
echo "2. Download iterm2"
echo "go to https://iterm2.com/ and press any key when done"
while [ true ] ; do
  read -n 1
  if [ $? = 0 ] ; then
    break ;
  fi
done


# 3. Install Oh My Zsh
echo "---------------------"
echo "3. Install Oh My Zsh"
# https://ohmyz.sh/
if [[ "${ZSH_CUSTOM}" == "e" ]]
then
    echo "${ZSH_CUSTOM}"
    /bin/bash -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


# 4. Install fonts from ./fonts
echo "---------------------"
echo "4. Install fonts from ./fonts"
echo "install the  fonts in ./fonts and then update iterm2 to use them"
while [ true ] ; do
  read -n 1
  if [ $? = 0 ] ; then
    break ;
  fi
done

# 5. Install ZSH autosuggestions
echo "---------------------"
echo "5. Install ZSH autosuggestions"
# https://github.com/zsh-users/zsh-autosuggestions

if [ -d ${ZSH_CUSTOM}/plugins/zsh-autosuggestions ]
then
  :
else
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo "Add the following lines to ~/.zshrc and then press any key to continue"
  echo ""
  echo "plugins=([already existing plugins...] zsh-autosuggestions)"
  echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
  while [ true ] ; do
    read -n 1
    if [ $? = 0 ] ; then
      break ;
    fi
  done
fi

# 6. Install ZSH autosuggestions
echo "---------------------"
echo "6. Install ZSH syntax highlighting"
# https://github.com/zsh-users/zsh-syntax-highlighting

if [ -d ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting ]
then
  :
else
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  echo "Add the following lines to ~/.zshrc and then press any key to continue"
  echo ""
  echo "plugins=([already existing plugins...] zsh-syntax-highlighting)"
  echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
  while [ true ] ; do
    read -n 1
    if [ $? = 0 ] ; then
      break ;
    fi
  done
fi


# 7. Install fzf
echo "---------------------"
echo "7. Install fzf for fuzzy finding files"
fzf --help > /dev/null || brew install fzf && $(brew --prefix)/opt/fzf/install


# 8. Set git aliases
echo "---------------------"
echo "8. Setting git aliases"

git config --global alias.stick branch
git config --global alias.chop "branch -d"
git config --global alias.hop checkout
git config --global alias.comm "commit -m"
git config --global alias.purr "pull --rebase"
git config --global alias.purrr "pull --rebase"
git config --global alias.purrrr "pull --rebase"
git config --global alias.purrrrr "pull --rebase"
git config --global alias.purrrrrr "pull --rebase"
git config --global alias.purrrrrrr "pull --rebase"
git config --global alias.purrrrrrrr "pull --rebase"

