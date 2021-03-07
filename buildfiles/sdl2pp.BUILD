load("@rules_cc//cc:defs.bzl", "cc_library", "cc_binary")

cc_library(
    name = "sdl2pp",
    srcs = glob([
        "SDL2pp/*.cc",
    ]) + [
        "SDL2pp/external/libcpp_optional.hh",
    ],
    hdrs = glob([
        "SDL2pp/*.hh",
    ]),
    includes = ["."],
    deps = [
        "@sdl2",
        "@sdl2_image",
        "@sdl2_mixer",
        "@sdl2_ttf",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "examples_sprites",
    srcs = ["examples/sprites.cc"],
    deps = [":sdl2pp"],
)