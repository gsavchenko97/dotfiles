# Quick cd tool
qcd() {
  case "$1" in
    dotfiles)
      cd $HOME/setup/dotfiles
      ;;
    installation)
      cd $HOME/txt/dev/installation
      ;;
    cpp)
      cd $HOME/repos/cpp0
      ;;
    *)
      echo "qcd: unknown key '$1'"
      return 1
      ;;
  esac
  pwd
}
complete -W "installation dotfiles cpp" qcd
