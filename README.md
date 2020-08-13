When building binary it appears to be ignoring the `replace` attribute
of [go_repository](https://github.com/bazelbuild/bazel-gazelle/blob/ca2f105386b3860bf8555ca3ff681be5e3d422b3/repository.rst#go_repository).

```
$ bazel build //:go-mod-replace-bazel --sandbox_debug
INFO: Analyzed target //:go-mod-replace-bazel (0 packages loaded, 0 targets configured).
INFO: Found 1 target...
ERROR: /Users/akroh/go/src/github.com/andrewkroh/go-mod-replace-bazel/BUILD.bazel:15:10: GoCompilePkg go-mod-replace-bazel.a failed (Exit 1) sandbox-exec failed: error executing command 
  (cd /private/var/tmp/_bazel_akroh/a5ca7e1a200955621ce0b0caac8e1f90/sandbox/darwin-sandbox/47/execroot/__main__ && \
  exec env - \
    APPLE_SDK_PLATFORM=MacOSX \
    APPLE_SDK_VERSION_OVERRIDE=10.15 \
    CGO_ENABLED=1 \
    DEVELOPER_DIR=/Applications/Xcode.app/Contents/Developer \
    GOARCH=amd64 \
    GOOS=darwin \
    GOPATH='' \
    GOROOT=external/go_sdk \
    GOROOT_FINAL=GOROOT \
    PATH=external/local_config_cc:/bin:/usr/bin \
    SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk \
    TMPDIR=/var/folders/kx/7y5ztvx100z148jvds11c6rh0000gn/T/ \
    XCODE_VERSION_OVERRIDE=11.3.1.11C504 \
  /usr/bin/sandbox-exec -f /private/var/tmp/_bazel_akroh/a5ca7e1a200955621ce0b0caac8e1f90/sandbox/darwin-sandbox/47/sandbox.sb /var/tmp/_bazel_akroh/install/9f212b523c9a6c4da5759c36b6805f26/process-wrapper '--timeout=0' '--kill_delay=15' --wait_fix bazel-out/host/bin/external/go_sdk/builder compilepkg -sdk external/go_sdk -installsuffix darwin_amd64 -src main.go -arc 'github.com/fsnotify/fsnotify=github.com/fsnotify/fsnotify=bazel-out/darwin-fastbuild/bin/external/com_github_fsnotify_fsnotify/go_default_library.a=' -importpath github.com/andrewkroh/go-mod-replace-bazel -p main -package_list bazel-out/host/bin/external/go_sdk/packages.txt -o bazel-out/darwin-fastbuild/bin/go-mod-replace-bazel.a -gcflags '' -asmflags '')
compilepkg: error running subcommand: exit status 2
/private/var/tmp/_bazel_akroh/a5ca7e1a200955621ce0b0caac8e1f90/sandbox/darwin-sandbox/47/execroot/__main__/main.go:16:9: watcher.SetRecursive undefined (type *fsnotify.Watcher has no field or method SetRecursive)
Target //:go-mod-replace-bazel failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 0.238s, Critical Path: 0.10s
INFO: 0 processes.
FAILED: Build did NOT complete successfully
```