load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "zpl",
    hdrs = glob([
        "code/source/**/*.c",
        "code/header/**/*.h",
    ]) + [
        "code/zpl.h",
        "code/zpl_hedley.h",
    ],
    copts = [
        "-Icode",
        "-std=c11",
    ],
    includes = ["code"],
)
