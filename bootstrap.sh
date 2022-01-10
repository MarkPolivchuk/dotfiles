DOTFILES_ROOT=$(pwd -P)

# Zsh
OMZ_DIR=$HOME/.oh-my-zsh
if [ ! -d "$OMZ_DIR" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cp ./zsh/bullet-train.zsh-theme $OMZ_DIR/custom/themes
    ln -sf ${DOTFILES_ROOT}/zsh/.zshrc ~/.zshrc
fi

# Shopify
if [ "$SPIN" ]; then
    ln -sf ${DOTFILES_ROOT}/shopify/.gitconfig ~/.gitconfig
fi