#!/bin/bash

dir=""

function show_help() {
  echo "----------- HELP GUIDE ----------------------------------------------------------------------------"
  echo ""
  echo "Usage: ./guardian.sh <directory>"
  echo ""
  echo "Protect your directory with username and password"
  echo ""
  echo "Options:"
  echo "  -h, --help    Show this help message and exit."
  echo ""
  echo "--------------------------------------------------------------------------------------------------"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      show_help
      exit 0
      ;;
    -dir)
      dir="$2"
      shift 2
      ;;
    *)
      echo "Invalid argument: $1"
      show_help
      exit 1
      ;;
  esac
done

if ! command -v zenity >/dev/null; then
  sudo apt-get update -y
  sudo apt-get install zenity mutt -y
fi

if ! command -v mutt >/dev/null; then
  sudo apt-get update -y
  sudo apt-get install zenity mutt -y
fi

USER_NAME=$(zenity --entry --title="Guardian" --text="Type your name: ")
USER_EMAIL=$(zenity --entry --title="Guardian" --text="Type your e-mail: ")
USER_PASSWORD=$(zenity --password --title="Guardian" --text="Type your password: ")

if [ ! -d "$dir" ]; then
  echo "Directory not found: $dir"
  exit 1
fi

guardian_conf_path="$dir/guardian.conf"

echo "USER_NAME=\"$USER_NAME\"" > "$guardian_conf_path"
echo "USER_EMAIL=\"$USER_EMAIL\"" >> "$guardian_conf_path"
echo "USER_PASSWORD=\"$USER_PASSWORD\"" >> "$guardian_conf_path"
echo "DIR=\"$dir\"" >> "$guardian_conf_path"

echo "The $dir folder is protected with GUARDIAN."
echo "The protection email is $USER_EMAIL"
echo "and the password is $USER_PASSWORD"

echo -e "The $dir folder is protected with GUARDIAN.\n" \
        "The protection email is $USER_EMAIL.\n" \
        "and the password is $USER_PASSWORD." \
        | mutt -s "Guardian - Registration done successfully!" "$USER_EMAIL"

zenity --info --title="Guardian" --text="Your registration was successful! Check your email for more information."
