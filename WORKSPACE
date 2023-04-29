workspace(name = "monorepo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

NIXPKGS_COMMIT="4dddbafba508cd2dffd95b8562cab91c9336fe36"

http_archive(
    name = "io_tweag_rules_nixpkgs",
    strip_prefix = "rules_nixpkgs-{}".format(NIXPKGS_COMMIT),
    urls = ["https://github.com/tweag/rules_nixpkgs/archive/{}.tar.gz".format(NIXPKGS_COMMIT)],
)

load("@io_tweag_rules_nixpkgs//nixpkgs:repositories.bzl", "rules_nixpkgs_dependencies")
rules_nixpkgs_dependencies()

load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository", "nixpkgs_package", "nixpkgs_cc_configure")

# load("@io_tweag_rules_nixpkgs//nixpkgs:toolchains/go.bzl", "nixpkgs_go_configure")


nixpkgs_git_repository(
    name = "nixpkgs",
    revision = "21.05",
)

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
    name = "pnpm",
    attribute_path = "pnpm",
    repository = "@nixpkgs",
)

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "dcc55f810142b6cf46a44d0180a5a7fb923c04a5061e2e8d8eb05ccccc60864b",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/5.8.0/rules_nodejs-5.8.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories(
    node_repo = "@nodejs//:node_repo",
    pnpm_repo = "@pnpm//:pnpm_repo",
)
