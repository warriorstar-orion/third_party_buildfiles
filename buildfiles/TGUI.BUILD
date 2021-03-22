load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "Aurora",
    hdrs = glob([
        "include/TGUI/extlibs/Aurora/**/*.hpp",
        "include/TGUI/extlibs/Aurora/**/*.inl",
    ]),
)

cc_library(
    name = "glad",
    hdrs = glob(["include/TGUI/extlibs/glad/*.h"]),
)

cc_library(
    name = "nanosvg",
    hdrs = glob(["include/TGUI/extlibs/nanosvg/*.h"]),
)

cc_library(
    name = "stb",
    hdrs = glob(["include/TGUI/extlibs/stb/*.h"]),
)

cc_library(
    name = "TGUI_SDL",
    srcs = glob([
        "src/*.cpp",
        "src/Backends/SDL/*.cpp",
        "src/Loading/*.cpp",
        "src/Renderers/*.cpp",
        "src/Widgets/*.cpp",
    ]),
    hdrs = glob([
        "include/TGUI/*.hpp",
        "include/TGUI/Loading/*.hpp",
        "include/TGUI/Renderers/*.hpp",
        "include/TGUI/Widgets/*.hpp",
        "include/TGUI/Backends/SDL/*.hpp",
    ]) + [
        "include/TGUI/Backends/SDL.hpp",
    ],
    includes = ["include"],
    strip_include_prefix = "include",
    visibility = ["//visibility:public"],
    deps = [
        ":Aurora",
        ":glad",
        ":nanosvg",
        ":stb",
        "@sdl2",
        "@sdl2_ttf",
    ],
)

cc_binary(
    name = "examples_many_different_widgets",
    srcs = [
        "examples/main-sdl.cpp",
        "examples/many_different_widgets/ManyDifferentWidgets.cpp",
    ],
    visibility = ["//visibility:public"],
    deps = [":TGUI_SDL"],
)
