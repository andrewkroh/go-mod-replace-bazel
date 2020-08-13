module github.com/andrewkroh/go-mod-replace-bazel

go 1.14

require (
	github.com/fsnotify/fsnotify v1.4.9
	golang.org/x/sys v0.0.0-20200812155832-6a926be9bd1d // indirect
)

replace github.com/fsnotify/fsnotify => github.com/adriansr/fsnotify v0.0.0-20180417234312-c9bbe1f46f1d
