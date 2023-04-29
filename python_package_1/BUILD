py_library(
    name = "python_package1",
    srcs = glob(["*.py"]),
    deps = [
        "@python3//:stdlib",
    ],
)

py_test(
    name = "python_package1_test",
    srcs = ["test.py"],
    deps = [
        ":python_package1",
        "@python3//:stdlib",
    ],
)
