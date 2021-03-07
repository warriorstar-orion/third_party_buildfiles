# File modified from Google quic-trace project.
# Original licensing information follows.

# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@rules_cc//cc:defs.bzl", "cc_library", "objc_library")

licenses(["notice"])  # zlib, portions BSD, MIT, PostgreSQL

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

# Common include paths
sdl_includes = [
    "include",
    "src/video/khronos",
]

objc_library(
    name = "sdl2_objc",
    srcs = glob([
        "src/**/*.h",
        "include/*.h",
    ]),
    includes = sdl_includes,
    non_arc_srcs = glob([
        "src/audio/coreaudio/*.m",
        "src/file/cocoa/*.m",
        "src/filesystem/cocoa/*.m",
        "src/render/metal/*.m",
        "src/video/cocoa/*.m",
    ]),
    sdk_frameworks = [
        "AudioToolbox",
        "Carbon",
        "CoreAudio",
        "CoreVideo",
        "Cocoa",
        "ForceFeedback",
        "IOKit",
        "OpenGL",
        "Metal",
    ],
    alwayslink = 1,
)

GENERAL_SOURCES = glob([
    "src/*.c",
    "src/*.h",
    "src/atomic/*.c",
    "src/audio/*.c",
    "src/audio/*.h",
    "src/cpuinfo/*.c",
    "src/dynapi/*.c",
    "src/dynapi/*.h",
    "src/events/*.c",
    "src/events/*.h",
    "src/file/*.c",
    "src/haptic/*.c",
    "src/haptic/*.h",
    "src/joystick/*.c",
    "src/joystick/*.h",
    "src/libm/*.c",
    "src/libm/*.h",
    "src/locale/*.c",
    "src/misc/*.c",
    "src/power/*.c",
    "src/power/*.h",
    "src/render/*.c",
    "src/render/*.h",
    "src/render/*/*.c",
    "src/render/*/*.h",
    "src/sensor/*.c",
    "src/stdlib/*.c",
    "src/thread/*.c",
    "src/thread/*.h",
    "src/timer/*.c",
    "src/timer/*.h",
    "src/video/*.c",
    "src/video/*.h",
    "src/video/yuv2rgb/*.c",
    "src/video/yuv2rgb/*.h",
])

cc_library(
    name = "sdl2",
    srcs = GENERAL_SOURCES + select({
        ":darwin": glob([
            "src/audio/disk/*.c",
            "src/audio/disk/*.h",
            "src/audio/dummy/*.c",
            "src/audio/dummy/*.h",
            "src/core/unix/*.c",
            "src/haptic/darwin/*.c",
            "src/haptic/darwin/*.h",
            "src/joystick/darwin/*.c",
            "src/joystick/darwin/*.h",
            "src/loadso/dlopen/*.c",
            "src/power/macosx/*.c",
            "src/thread/pthread/*.c",
            "src/timer/unix/*.c",
            "src/video/dummy/*.c",
            "src/video/dummy/*.h",
        ]),
        ":windows": glob([
            "src/audio/directsound/*.c",
            "src/audio/directsound/*.h",
            "src/audio/disk/*.c",
            "src/audio/disk/*.h",
            "src/audio/dummy/*.c",
            "src/audio/dummy/*.h",
            "src/audio/wasapi/*.c",
            "src/audio/wasapi/*.h",
            "src/audio/winmm/*.c",
            "src/audio/winmm/*.h",
            "src/core/windows/*.c",
            "src/core/windows/*.h",
            "src/filesystem/windows/*.c",
            "src/haptic/windows/*.c",
            "src/haptic/windows/*.h",
            "src/joystick/windows/*.c",
            "src/joystick/windows/*.h",
            "src/loadso/windows/*.c",
            "src/power/windows/*.c",
            "src/thread/windows/*.c",
            "src/thread/windows/*.h",
            "src/timer/windows/*.c",
            "src/video/dummy/*.c",
            "src/video/dummy/*.h",
            "src/video/windows/*.c",
            "src/video/windows/*.h",
        ]) + [
            "src/thread/generic/SDL_syscond.c",
        ],
    }),
    hdrs = glob(["include/*.h"]),
    includes = sdl_includes,
    linkopts = select({
        ":darwin": [],
        ":windows": [
            "-DEFAULTLIB:user32",
            "-DEFAULTLIB:gdi32",
            "-DEFAULTLIB:winmm",
            "-DEFAULTLIB:imm32",
            "-DEFAULTLIB:ole32",
            "-DEFAULTLIB:oleaut32",
            "-DEFAULTLIB:version",
            "-DEFAULTLIB:uuid",
            "-DEFAULTLIB:advapi32",
            "-DEFAULTLIB:shell32",
            "-DEFAULTLIB:dinput8",
            "-DEFAULTLIB:setupapi",
        ],
    }),
    textual_hdrs = glob(["src/thread/generic/*.c"]),
    visibility = ["//visibility:public"],
    deps = select({
        ":darwin": [":sdl2_objc"],
        ":windows": [],
    }),
)
