# UPDATE zsh shell config

echo '' >> ~/.zshrc
echo '### common cmds' >> ~/.zshrc
echo 'alias ls="ls --color=auto -lhF"' >> ~/.zshrc
echo '# Set time to display when running "history" command' >> ~/.zshrc
echo 'HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.zshrc

echo '' >> ~/.zshrc
echo "export CLICOLOR=1" >> ~/.zshrc

echo '' >> ~/.zshrc
echo "source ~/scripts/git-completion.bash" >> ~/.zshrc


echo '' >> ~/.zshrc
echo '# Used for Vim searching' >> ~/.zshrc
echo '# - Requires: ripgrep, fzf (brew install)' >> ~/.zshrc
echo '# - Purpose: sets ripgrep as the file searcher for fzf in vim' >> ~/.zshrc
echo '#   See https://github.com/junegunn/fzf.vim#commands' >> ~/.zshrc
echo 'if type rg &> /dev/null; then' >> ~/.zshrc
echo '    export FZF_DEFAULT_COMMAND="rg --files --hidden"' >> ~/.zshrc
echo 'fi' >> ~/.zshrc

