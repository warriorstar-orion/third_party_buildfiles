load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "ponder",
    srcs = glob(["src/*.cpp"]),
    hdrs = glob([
        "include/ponder/*.hpp",
        "include/ponder/*.inl",
        "include/ponder/detail/*.hpp",
        "include/ponder/detail/*.inl",
        "include/ponder/uses/*.hpp",
        "include/ponder/uses/*.inl",
        "include/ponder/uses/detail/*.hpp",
    ]),
    defines = [
        "PONDER_USING_LUA",
    ],
    includes = [
        "include",
    ],
    visibility = ["//visibility:public"],
    deps = [
        "@lua",
    ],
)
