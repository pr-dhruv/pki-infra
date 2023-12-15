#!/usr/bin/env bash

# Created By mahendra
# Since 15/12/23

set -e

# Here \e is equals to \33
PREFIX="\e["

declare -A FOREGOUND_COLORS=(
  ["BLACK"]=";30m"
  ["RED"]=";31m"
  ["GREEN"]=";32m"
  ["YELLOW"]=";33m"
  ["BLUE"]=";34m"
  ["PURPLE"]=";35m"
  ["CYAN"]=";36m"
  ["WHITE"]=";37m"
)

declare -A FOREGOUND_HIGH_INTENSE_COLORS=(
  ["BLACK"]=";90m"
  ["RED"]=";91m"
  ["GREEN"]=";92m"
  ["YELLOW"]=";93m"
  ["BLUE"]=";94m"
  ["PURPLE"]=";95m"
  ["CYAN"]=";96m"
  ["WHITE"]=";97m"
)

declare -A BACKGOUND_COLORS=(
  ["BLACK"]="[40m"
  ["RED"]="[41m"
  ["GREEN"]="[42m"
  ["YELLOW"]="[43m"
  ["BLUE"]="[44m"
  ["PURPLE"]="[45m"
  ["CYAN"]="[46m"
  ["WHITE"]="[47m"
)

declare -A BACKGOUND_HIGH_INTENSE_COLORS=(
  ["BLACK"]=";100m"
  ["RED"]=";101m"
  ["GREEN"]=";102m"
  ["YELLOW"]=";103m"
  ["BLUE"]=";104m"
  ["PURPLE"]=";105m"
  ["CYAN"]=";106m"
  ["WHITE"]=";107m"
)

declare -A STYLE=(
  ["REGULAR"]=0
  ["BOLD"]=1
  ["ITALIC"]=3
  ["UNDERLINE"]=4
  ["BLINK_SLOW"]=5
  ["BLINK_FAST"]=6
)



# Reset
export NC='\e[0m'       # Text Reset

# Regular Colors
export BLACK='\e[0;30m'        # Black
export RED='\e[0;31m'          # Red
export GREEN='\e[0;32m'        # Green
export YELLOW='\e[0;33m'       # Yellow
export BLUE='\e[0;34m'         # Blue
export PURPLE='\e[0;35m'       # Purple
export CYAN='\e[0;36m'         # Cyan
export WHITE='\e[0;37m'        # White

# Bold
export B_BLACK='\e[1;30m'       # Black
export B_RED='\e[1;31m'         # Red
export B_GREEN='\e[1;32m'       # Green
export B_YELLOW='\e[1;33m'      # Yellow
export B_BLUE='\e[1;34m'        # Blue
export B_PURPLE='\e[1;35m'      # Purple
export B_CYAN='\e[1;36m'        # Cyan
export B_WHITE='\e[1;37m'       # White

# Italic
export I_BLACK='\e[3;30m'       # Black
export I_RED='\e[3;31m'         # Red
export I_GREEN='\e[3;32m'       # Green
export I_YELLOW='\e[3;33m'      # Yellow
export I_BLUE='\e[3;34m'        # Blue
export I_PURPLE='\e[3;35m'      # Purple
export I_CYAN='\e[3;36m'        # Cyan
export I_WHITE='\e[3;37m'       # White

# Underline
export U_BLACK='\e[4;30m'       # Black
export U_RED='\e[4;31m'         # Red
export U_GREEN='\e[4;32m'       # Green
export U_YELLOW='\e[4;33m'      # Yellow
export U_BLUE='\e[4;34m'        # Blue
export U_PURPLE='\e[4;35m'      # Purple
export U_CYAN='\e[4;36m'        # Cyan
export U_WHITE='\e[4;37m'       # White

# Blink Slow
export BS_BLACK='\e[5;30m'       # Black
export BS_RED='\e[5;31m'         # Red
export BS_GREEN='\e[5;32m'       # Green
export BS_YELLOW='\e[5;33m'      # Yellow
export BS_BLUE='\e[5;34m'        # Blue
export BS_PURPLE='\e[5;35m'      # Purple
export BS_CYAN='\e[5;36m'        # Cyan
export BS_WHITE='\e[5;37m'       # White

# Blink Fast
export BF_BLACK='\e[6;30m'       # Black
export BF_RED='\e[6;31m'         # Red
export BF_GREEN='\e[6;32m'       # Green
export BF_YELLOW='\e[6;33m'      # Yellow
export BF_BLUE='\e[6;34m'        # Blue
export BF_PURPLE='\e[6;35m'      # Purple
export BF_CYAN='\e[6;36m'        # Cyan
export BF_WHITE='\e[6;37m'       # White

# Background
export BG_BLACK='\e[40m'       # Black
export BG_RED='\e[41m'         # Red
export BG_GREEN='\e[42m'       # Green
export BG_YELLOW='\e[43m'      # Yellow
export BG_BLUE='\e[44m'        # Blue
export BG_PURPLE='\e[45m'      # Purple
export BG_CYAN='\e[46m'        # Cyan
export BG_WHITE='\e[47m'       # White

# Foreground High Intensity
export FG_HI_BLACK='\e[0;90m'       # Black
export FG_HI_RED='\e[0;91m'         # Red
export FG_HI_GREEN='\e[0;92m'       # Green
export FG_HI_YELLOW='\e[0;93m'      # Yellow
export FG_HI_BLUE='\e[0;94m'        # Blue
export FG_HI_PURPLE='\e[0;95m'      # Purple
export FG_HI_CYAN='\e[0;96m'        # Cyan
export FG_HI_WHITE='\e[0;97m'       # White

# Backgrounds High Intensity
export BG_HI_BLACK='\e[0;100m'   # Black
export BG_HI_RED='\e[0;101m'     # Red
export BG_HI_GREEN='\e[0;102m'   # Green
export BG_HI_YELLOW='\e[0;103m'  # Yellow
export BG_HI_BLUE='\e[0;104m'    # Blue
export BG_HI_PURPLE='\e[0;105m'  # Purple
export BG_HI_CYAN='\e[0;106m'    # Cyan
export BG_HI_WHITE='\e[0;107m'   # White

function getFormattedString {
  local style=
  while [ "$#" -gt 0 ]; do
    case "$1" in
      -s|--style*)
        if [ "$1" = "--style"* ]; then
          style=$(echo "$1" | cut -d'=' -f2)
          shift 1
        else
          style="$2"
          shift 2
        fi
        ;;
    esac
  done
}
}