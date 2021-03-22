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

HEADERS = [
    "sdlgui/button.h",
    "sdlgui/checkbox.h",
    "sdlgui/colorpicker.h",
    "sdlgui/colorwheel.h",
    "sdlgui/combobox.h",
    "sdlgui/common.h",
    "sdlgui/dropdownbox.h",
    "sdlgui/entypo.h",
    "sdlgui/fontstash.h",
    "sdlgui/formhelper.h",
    "sdlgui/graph.h",
    "sdlgui/imagepanel.h",
    "sdlgui/imageview.h",
    "sdlgui/label.h",
    "sdlgui/layout.h",
    "sdlgui/messagedialog.h",
    "sdlgui/nanort.h",
    "sdlgui/nanovg.h",
    "sdlgui/nanovg_rt.h",
    "sdlgui/popup.h",
    "sdlgui/popupbutton.h",
    "sdlgui/progressbar.h",
    "sdlgui/resources.h",
    "sdlgui/screen.h",
    "sdlgui/sdlguii.h",
    "sdlgui/slider.h",
    "sdlgui/stackedwidget.h",
    "sdlgui/stb_image.h",
    "sdlgui/stb_truetype.h",
    "sdlgui/switchbox.h",
    "sdlgui/tabheader.h",
    "sdlgui/tabwidget.h",
    "sdlgui/textbox.h",
    "sdlgui/theme.h",
    "sdlgui/toolbutton.h",
    "sdlgui/vscrollpanel.h",
    "sdlgui/widget.h",
    "sdlgui/window.h",
]

SOURCES = [
    "sdlgui/button.cpp",
    "sdlgui/checkbox.cpp",
    "sdlgui/colorpicker.cpp",
    "sdlgui/colorwheel.cpp",
    "sdlgui/combobox.cpp",
    "sdlgui/common.cpp",
    "sdlgui/dropdownbox.cpp",
    "sdlgui/graph.cpp",
    "sdlgui/imagepanel.cpp",
    "sdlgui/imageview.cpp",
    "sdlgui/label.cpp",
    "sdlgui/layout.cpp",
    "sdlgui/loadimages.cpp",
    "sdlgui/messagedialog.cpp",
    "sdlgui/nanovg.c",
    "sdlgui/popup.cpp",
    "sdlgui/popupbutton.cpp",
    "sdlgui/progressbar.cpp",
    "sdlgui/resources.cpp",
    "sdlgui/screen.cpp",
    "sdlgui/slider.cpp",
    "sdlgui/stackedwidget.cpp",
    "sdlgui/switchbox.cpp",
    "sdlgui/tabheader.cpp",
    "sdlgui/tabwidget.cpp",
    "sdlgui/textbox.cpp",
    "sdlgui/theme.cpp",
    "sdlgui/vscrollpanel.cpp",
    "sdlgui/widget.cpp",
    "sdlgui/window.cpp",
]

objc_library(
    name = "nanogui_sdl_objc",
    srcs = SOURCES,
    hdrs = HEADERS,
    copts = ["-I."],
    includes = [
        ".",
    ],
    non_arc_srcs = [
        "sdlgui/darwin.mm",
    ],
    deps = [
        "@sdl2",
        "@sdl2_image",
        "@sdl2_mixer",
        "@sdl2_ttf",
    ],
    sdk_frameworks = [
        "Cocoa",
        "CoreVideo",
        "IOKit",
        "OpenGL",
    ],
    alwayslink = 1,
)

cc_library(
    name = "nanogui_sdl",
    srcs = select({
        ":windows": SOURCES,
        ":darwin": [],
    }),
    hdrs = select({
        ":windows": HEADERS,
        ":darwin": [],
    }),
    includes = [
        ".",
    ],
    deps = select({
        ":windows": [],
        ":darwin": [
            ":nanogui_sdl_objc",
        ],
    }) + [
        "@sdl2",
        "@sdl2_image",
        "@sdl2_mixer",
        "@sdl2_ttf",
    ],
    visibility = ["//visibility:public"],
)

cc_binary(
    name = "example1",
    srcs = ["example1.cpp"],
    deps = [
        ":nanogui_sdl",
        "@sdl2",
        "@sdl2_image",
    ],
)
