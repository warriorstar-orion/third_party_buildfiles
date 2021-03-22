load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "librg",
    hdrs = [
        "code/header/entity.h",
        "code/header/general.h",
        "code/header/packing.h",
        "code/header/query.h",
        "code/header/types.h",
        "code/librg.h",
        "code/librg_hedley.h",
        "code/source/entity.c",
        "code/source/general.c",
        "code/source/packing.c",
        "code/source/query.c",
        "code/source/types.c",
    ],
    includes = [
        "code",
    ],
    copts = [
        "-DLIBRG_IMPL",
        "-DLIBRG_IMPLEMENTATION",
    ],
    strip_include_prefix = "code",
    deps = ["@zpl"],
    include_prefix = "librg",
)
