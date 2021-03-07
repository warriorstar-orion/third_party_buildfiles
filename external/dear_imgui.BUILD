load("@rules_cc//cc:defs.bzl", "cc_library", "cc_binary")

cc_library(
    name = "dear_imgui",
    srcs = glob(["*.cpp"]),
    hdrs = glob(["*.h"]),
    deps = [
        "@glew",
        "@sdl2",
    ],
)

cc_library(
    name = "sdl",
    srcs = [
        "backends/imgui_impl_sdl.cpp",
    ],
    hdrs = [
        "backends/imgui_impl_sdl.h",
    ],
    strip_include_prefix = "backends",
    deps = [":dear_imgui"],
)

cc_library(
    name = "opengl3",
    srcs = [
        "backends/imgui_impl_opengl3.cpp",
    ],
    hdrs = [
        "backends/imgui_impl_opengl3.h",
    ],
    strip_include_prefix = "backends",
    deps = [":dear_imgui"],
)

cc_binary(
    name = "example_sdl_opengl3",
    srcs = [
        "examples/example_sdl_opengl3/main.cpp",
    ],
    deps = [
        ":dear_imgui",
        ":opengl3",
        ":sdl",
    ],
)
