load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library", "objc_library")

cc_library(
    name = "dear_imgui",
    srcs = glob([
        "*.cpp",
        "misc/cpp/*.cpp",
    ]),
    hdrs = glob([
        "*.h",
        "misc/cpp/*.h",
    ]),
    visibility = ["//visibility:public"],
    alwayslink = 1,
)

cc_library(
    name = "win32",
    srcs = [
        "backends/imgui_impl_win32.cpp",
    ],
    hdrs = [
        "backends/imgui_impl_win32.h",
    ],
    # strip_include_prefix = "backends",
    visibility = ["//visibility:public"],
    deps = [":dear_imgui"],
    alwayslink = 1,
)

cc_library(
    name = "directx11",
    srcs = [
        "backends/imgui_impl_dx11.cpp",
    ],
    hdrs = [
        "backends/imgui_impl_dx11.h",
    ],
    # strip_include_prefix = "backends",
    visibility = ["//visibility:public"],
    deps = [
        ":dear_imgui",
        ":win32",
    ],
    alwayslink = 1,
)

cc_library(
    name = "sdl2",
    srcs = [
        "backends/imgui_impl_sdl.cpp",
    ],
    hdrs = [
        "backends/imgui_impl_sdl.h",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":dear_imgui",
        "@sdl2",
    ],
    alwayslink = 1,
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
    visibility = ["//visibility:public"],
    deps = [
        ":dear_imgui",
        "@glew",
    ],
)

cc_binary(
    name = "example_sdl_opengl3",
    srcs = [
        "examples/example_sdl_opengl3/main.cpp",
    ],
    deps = [
        ":dear_imgui",
        ":opengl3",
        ":sdl2",
    ],
)

objc_library(
    name = "metal",
    srcs = [
        "backends/imgui_impl_metal.mm",
    ],
    hdrs = [
        "backends/imgui_impl_metal.h",
    ],
    sdk_frameworks = [
        "AudioToolbox",
        "Carbon",
        "CoreAudio",
        "CoreVideo",
        "Cocoa",
        "ForceFeedback",
        "IOKit",
        "Metal",
    ],
    visibility = ["//visibility:public"],
    deps = [":dear_imgui"],
)

objc_library(
    name = "example_sdl_metal_objc",
    srcs = [
        "examples/example_sdl_metal/main.mm",
    ],
    deps = [
        ":dear_imgui",
        ":metal",
        ":sdl2",
    ],
)

cc_binary(
    name = "example_sdl_metal",
    linkopts = ["-liconv"],
    deps = [":example_sdl_metal_objc"],
)

cc_binary(
    name = "example_win32_directx11",
    srcs = [
        "examples/example_win32_directx11/main.cpp",
    ],
    deps = [
        ":dear_imgui",
        ":directx11",
        ":win32",
    ],
)
