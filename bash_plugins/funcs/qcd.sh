# Quick cd tool
qcd() {
  case "$1" in
    dotfiles)
      cd $HOME/setup/dotfiles
      ;;
    install)
      cd $HOME/txt/install/ubuntu24_04
      ;;
    cpp)
      cd $HOME/repos/cpp1
      ;;
    junk)
      cd $HOME/repos/junk
      ;;
    nvim-development)
      cd $HOME/.config/nvim-development
      ;;
    *)
      echo "qcd: unknown key '$1'"
      return 1
      ;;
  esac
  pwd
}
complete -W "install dotfiles cpp junk nvim-development" qcd
