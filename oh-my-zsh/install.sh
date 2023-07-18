#! /usr/bin/env bash
echo '=========Install Zsh'
sudo apt install zsh -y
[[ $? -ne 0 ]] && exit 1
/usr/bin/zsh --version
echo '=========Install oh-my-zsh & addons'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# install external plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/chitoku-k/fzf-zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/fzf-zsh-completions
git clone https://github.com/akarzim/zsh-docker-aliases.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-docker-aliases

# install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install spaceship theme
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "[Post-Intsall] Custom config"
cp "$(pwd)/oh-my-zsh/.zshrc" "$HOME/.zshrc"
vi "$HOME/.zshrc"
