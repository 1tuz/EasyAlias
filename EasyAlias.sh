read -p "Enter the new alias :" new
read -p "Enter the old alias :" old
echo $new=\"$old\" >>/data/data/com.termux/files/home/.zshrc 2>/data/data/com.termux/files/home/myScripts/.trash
echo "Alias $new=\"$old\" was successfully added to .zshrc!"
