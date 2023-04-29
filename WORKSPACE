workspace(name = "monorepo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_nixpkgs",
    strip_prefix = "rules_nixpkgs-0.9.0",
    sha256 = "7db3b3dd652249f04bdfa13e2db6dfdebff9d1da7829b5aee3ec3f3c8f8fd6fd",
    urls = ["https://github.com/tweag/rules_nixpkgs/archive/v0.9.0.tar.gz"],
)

load("@io_bazel_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository")

nixpkgs_git_repository(
    name = "nixpkgs",
    revision = "21.05",
)

load("@io_bazel_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_package")

nixpkgs_package(
    name = "python3",
    attribute_path = "python3",
    repository = "@nixpkgs",
)

nixpkgs_package(
    name = "nodejs",
    attribute_path = "nodejs",
    repository = "@nixpkgs",
)

nixpkgs_package(
    name = "yarn",
    attribute_path = "yarn",
    repository = "@nixpkgs",
)

nixpkgs_package(
    name = "pnpm",
    attribute_path = "pnpm",
    repository = "@nixpkgs",
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories(
    node_repo = "@nodejs//:node_repo",
    pnpm_repo = "@pnpm//:pnpm_repo",
)
