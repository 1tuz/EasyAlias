read -p "Enter the new alias : " new
read -p "Enter the pipe : " old
echo alias $new=\"$old\" >>~/.zshrc 2>~/myScripts/.trash
echo "Alias $new=\"$old\" was successfully added to .zshrc!" && zsh && source ~/.zshrc>~/myScripts/.trash
