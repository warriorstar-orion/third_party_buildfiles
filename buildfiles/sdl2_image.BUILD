load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

config_setting(
    name = "darwin",
    constraint_values = [
        "@platforms//os:osx",
        "@platforms//cpu:x86_64",
    ],
)

config_setting(
    name = "windows",
    values = {"cpu": "x64_windows"},
)

cc_library(
    name = "sdl2_image",
    srcs = select({
        "//conditions:default": glob(
            ["*.c"],
            exclude = ["showimage.c"],
        ),
        ":darwin": [],
    }),
    hdrs = glob(["*.h"]),
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = [
        "@freetype",
        "@libpng",
        "@sdl2",
    ] + select({
        "//conditions:default": [],
        ":darwin": [":sdl2_image_objc"],
    }),
    alwayslink = 1,
)

objc_library(
    name = "sdl2_image_objc",
    srcs = glob(
        ["*.c"],
        exclude = ["showimage.c"],
    ),
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
