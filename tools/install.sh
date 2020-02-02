# Install zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Backup existing config
cp ~/.zshrc "~/.zshrc-$(date +%s)"

# Add custom config
curl -L https://raw.github.com/beeman/server-shell/master/profile/.zshrc > ~/.zshrc

# Add custom theme
curl -L https://raw.github.com/beeman/server-shell/master/profile/beeman.zsh-theme > ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/beeman.zsh-theme
