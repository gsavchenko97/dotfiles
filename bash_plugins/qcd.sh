# Quick cd tool
qcd() {
  case "$1" in
    df)
      cd $HOME/setup/dotfiles
      ;;
    apps)
      cd $HOME/txt/dev/installation/apps
      ;;
    cpp)
      cd $HOME/shad/cpp0
      ;;
    *)
      echo "qcd: unknown key '$1'"
      return 1
      ;;
  esac
  pwd
}
complete -W "apps df cpp" qcd
