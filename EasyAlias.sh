function add_alias() {
  local new=$1
  local old=$2
  if grep -q "alias $new" ~/.bashrc; then
    read -p "An alias with the name $new already exists in .bashrc. Overwrite? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      sed -i "/alias $new/d" ~/.bashrc
      echo "alias $new='$old'" >> ~/.bashrc
      echo "Successfully overwrote alias $new with '$old' in .bashrc."
    else
      echo "Aborted."
    fi
  elif grep -q "alias $new" ~/.zshrc; then
    read -p "An alias with the name $new already exists in .zshrc. Overwrite? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      sed -i "/alias $new/d" ~/.zshrc
      echo "alias $new='$old'" >> ~/.zshrc
      echo "Successfully overwrote alias $new with '$old' in .zshrc."
    else
      echo "Aborted."
    fi
  elif grep -q "alias $new" ~/.config/fish/config.fish; then
    read -p "An alias with the name $new already exists in config.fish. Overwrite? [y/n] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      sed -i "/alias $new/d" ~/.config/fish/config.fish
      echo "alias $new='$old'" >> ~/.config/fish/config.fish
      echo "Successfully overwrote alias $new with '$old' in config.fish."
    else
      echo "Aborted."
    fi
  else
    echo "alias $new='$old'" >> ~/.bashrc
    echo "alias $new='$old'" >> ~/.zshrc
    echo "alias $new='$old'" >> ~/.config/fish/config.fish
    echo "Successfully added alias $new='$old' to .bashrc, .zshrc and config.fish."
  fi
  source ~/.bashrc
  source ~/.zshrc
}

# trap function to handle errors
trap 'echo "An error occurred. Exiting..."; exit 1' ERR

read -p "Enter the new alias : " new
read -p "Enter the command : " old
add_alias "$new" "$old"
