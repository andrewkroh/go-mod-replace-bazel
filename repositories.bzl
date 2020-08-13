load("@bazel_gazelle//:deps.bzl", "go_repository")

def go_repositories():
    go_repository(
        name = "com_github_fsnotify_fsnotify",
        importpath = "github.com/fsnotify/fsnotify",
        replace = "github.com/adriansr/fsnotify",
        sum = "h1:g0M6kedfjDpyAAuxqBvJzMNjFzlrQ7Av6LCDFqWierk=",
        version = "v0.0.0-20180417234312-c9bbe1f46f1d",
    )
    go_repository(
        name = "org_golang_x_sys",
        importpath = "golang.org/x/sys",
        sum = "h1:QQrM/CCYEzTs91GZylDCQjGHudbPTxF/1fvXdVh5lMo=",
        version = "v0.0.0-20200812155832-6a926be9bd1d",
    )
