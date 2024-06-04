## Doc tool
doc() {
  case "$1" in
    cpp1)
      vim $HOME/txt/study/courses/cpp1.md
      ;;
    cpp2)
      vim $HOME/txt/study/courses/cpp2.md
      ;;
    go)
      vim $HOME/txt/study/courses/go.md
      ;;
    rust)
      vim $HOME/txt/study/courses/rust.md
      ;;
    py)
      vim $HOME/txt/study/courses/python.md
      ;;
    *)
      echo "doc: unknown key '$1'"
      return 1
      ;;
  esac
}
complete -W "cpp1 cpp2 rust go py" doc
