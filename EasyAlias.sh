read -p "Введите алиас :" al
read -p "Введите параметры :" par
echo $al=\"$par\" >>/data/data/com.termux/files/home/.zshrc 2>/data/data/com.termux/files/home/myScripts/.trash
echo "Алиас $al=\"$par\" успешно добавлен!"
