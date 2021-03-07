load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

config_setting(
    name = "darwin",
    constraint_values = [
        "@bazel_tools//platforms:osx",
        "@bazel_tools//platforms:x86_64",
    ],
)

config_setting(
    name = "windows",
    values = {"cpu": "x64_windows"},
)

cc_library(
    name = "sdl2_image",
    srcs = glob(
        ["*.c"],
        exclude = ["showimage.c"],
    ),
    hdrs = glob(["*.h"]),
    visibility = ["//visibility:public"],
    deps = [
        "@freetype",
        "@libpng",
        "@sdl2",
    ] + select({
        "//conditions:default": [],
        ":darwin": [":sdl2_image_objc"],
    }),
    includes = ["."],
    alwayslink = 1,
)

objc_library(
    name = "sdl2_image_objc",
    srcs = glob(["*.c"]),
    hdrs = glob(["*.h"]),
    non_arc_srcs = ["IMG_ImageIO.m"],
    visibility = ["//visibility:public"],
    deps = [
        "@freetype",
        "@libpng",
        "@sdl2",
    ],
    alwayslink = 1,
)
