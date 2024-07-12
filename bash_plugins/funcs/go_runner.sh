go-runner() {
    task_name="$1"
    RED='\033[0;35m'
    NC='\033[0m'
    pushd $HOME/repos/go
    echo "${RED}==== TESTS ====${NC}"
    go test "./$task_name/..."
    echo
    echo "${RED}==== LINTER ====${NC}"
    golangci-lint run "./$task_name/..."
    echo
    popd
}
complete -W "allocs batcher blowfish ciletters cond consistenthash coverme dao deps digitalclock distbuild dockertest dupcall externalsort fetchall fileleak firewall forth genericsum gitfame gossip gzep hogwarts hotelbusiness illegal iprange jsonlist jsonrpc keylock ledger lrucache middleware olympics once otp pgfixture pubsub ratelimit retryupdate reversemap rwmutex shopfront smartsched speller structtags sum tabletest testequal testifycheck tparallel treeiter urlfetch urlshortener utf8 varfmt varjoin waitgroup wasm wordcount wscat" go-runner
