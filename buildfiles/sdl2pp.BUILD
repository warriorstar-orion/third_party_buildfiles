load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

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
    visibility = ["//visibility:public"],
    deps = [
        "@sdl2",
        "@sdl2_image",
        "@sdl2_mixer",
        "@sdl2_ttf",
    ],
)

cc_binary(
    name = "examples_sprites",
    srcs = ["examples/sprites.cc"],
    deps = [":sdl2pp"],
)

cc_binary(
    name = "examples_image",
    srcs = ["examples/image.cc"],
    defines = ["TESTDATA_DIR=\"foo\""],
    deps = [":sdl2pp"],
)
