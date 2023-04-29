load("@build_bazel_rules_nodejs//:index.bzl", "ts_library", "pnpm_install")

pnpm_install(
    name = "npm_deps",
    package_json = "//:package.json",
    lock_file = "//:pnpm-lock.yaml",
)

ts_library(
    name = "js_app2",
    srcs = glob(["*.ts", "*.tsx"]),
    deps = [
        "@npm_deps//:node_modules",
    ],
)
