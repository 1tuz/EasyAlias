read -p "Enter the alias :" al
read -p "Enter the parametrs :" par
echo $al=\"$par\" >>/data/data/com.termux/files/home/.zshrc 2>/data/data/com.termux/files/home/myScripts/.trash
echo "Alias $al=\"$par\" was successfully added to .zshrc!"
