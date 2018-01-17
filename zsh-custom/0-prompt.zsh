################################################
# Setup the prompt
################################################

# Font setup
POWERLEVEL9K_MODE='nerdfont-complete'

# Elements setup
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context custom_os_icon dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(root_indicator status command_execution_time_joined background_jobs_joined ip battery time)

# System icon setup
case `$HOME/.dotfiles/tools/getOsDetails distro` in
   ubuntu) # Ubuntu
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf30c\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="208"
   ;;
   arch) # Arch Linux
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf300\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="white"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="blue"
   ;;
   opensuse) # openSUSE
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf308\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="green"
   ;;
   rhel) # Red Hat Enterprise Linux
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf309\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="red"
   ;;
   fedora) # Fedora
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf303\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="white"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="blue"
   ;;
   linuxmint) # Linux Mint
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf304\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="green"
   ;;
   elementary) # elementaryOS
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf311\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="blue"
   ;;
   gentoo) # Gentoo/Linux
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf310\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="green"
   ;;
   debian) # Debian
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf302\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="black"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="red"
   ;;
   Darwin) # macOS
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf179\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="white"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="black"
   ;;
   *) # Fall back to a generic linux tux
      POWERLEVEL9K_CUSTOM_OS_ICON="echo \"\\uf17c\""
      POWERLEVEL9K_CUSTOM_OS_ICON_FOREGROUND="white"
      POWERLEVEL9K_CUSTOM_OS_ICON_BACKGROUND="yello"
   ;;
esac

# Internal IP
POWERLEVEL9K_IP_FOREGROUND="black"
POWERLEVEL9K_IP_BACKGROUND="249"

# Command Time
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="245"

# Root indicator
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND="black"
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND="red"

# Background jobs
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="black"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="245"

# Time
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_TIME_BACKGROUND="white"

# Status
POWERLEVEL9K_STATUS_OK_FOREGROUND="black"
POWERLEVEL9K_STATUS_OK_BACKGROUND="245"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="124"
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="245"

# dir setup
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_BACKGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='white'
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_package_name"
POWERLEVEL9K_DIR_PACKAGE_FILES=(.prompt-meta.json package.json composer.json project.json)
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_DIR_LENGTH=100

# context setup
if [[ -n $SSH_CONNECTION ]]; then
	DEFAULT_USER="adrian"
else
	DEFAULT_USER=`whoami`
fi