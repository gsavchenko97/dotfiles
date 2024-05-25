## Doc tool
doc() {
  case "$1" in
    cpp1)
      v $HOME/txt/study/courses/cpp1.md
      ;;
    cpp2)
      v $HOME/txt/study/courses/cpp2.md
      ;;
    algo1)
      v $HOME/txt/study/courses/algo1.md
      ;;
    algo2)
      v $HOME/txt/study/courses/algo2.md
      ;;
    concurrency)
      v $HOME/txt/study/courses/concurrency.md
      ;;
    os)
      v $HOME/txt/study/courses/os.md
      ;;
    dist)
      v $HOME/txt/study/courses/dist.md
      ;;
    go)
      v $HOME/txt/study/courses/go.md
      ;;
    rust)
      v $HOME/txt/study/courses/rust.md
      ;;
    py)
      v $HOME/txt/study/courses/python.md
      ;;
    books)
      v $HOME/txt/study/books.md
      ;;
    health)
      v -O $HOME/txt/health/diary.md $HOME/txt/health/bp.md
      ;;
    mental)
      v $HOME/txt/health/mental.md
      ;;
    *)
      echo "doc: unknown key '$1'"
      return 1
      ;;
  esac
}
complete -W "health mental books algo1 algo2 cpp1 cpp2 concurrency os dist rust go py" doc
