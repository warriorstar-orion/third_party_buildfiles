load("@rules_cc//cc:defs.bzl", "cc_library")

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
    name = "sdl2_mixer",
    srcs = glob(
        [
            "*.c",
        ],
        exclude = [
            "playmus.c",
            "playwave.c",
        ],
    ) + [
        "native_midi/native_midi_common.c",
    ] + select({
        "//conditions:default": [],
        ":darwin": [
            "native_midi/native_midi_macosx.c",
        ],
        ":windows": [
            "native_midi/native_midi_win32.c",
        ],
    }),
    hdrs = glob([
        "*.h",
    ]) + [
        "native_midi/native_midi.h",
        "native_midi/native_midi_common.h",
    ] + select({
        "//conditions:default": [],
        ":darwin": [],
    }),
    copts = [
        "-DMUSIC_WAV",
    ],
    includes = ["."],
    visibility = ["//visibility:public"],
    deps = [
        "@sdl2",
    ],
)
