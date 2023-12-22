load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

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
    name = "enet",
    srcs = [
        "callbacks.c",
        "compress.c",
        "host.c",
        "list.c",
        "packet.c",
        "peer.c",
        "protocol.c",
    ] + select({
        ":windows": [
            "win32.c",
        ],
        ":darwin": [
            "unix.c",
        ],
        "//conditions:default": [],
    }),
    hdrs = [
        "include/enet/callbacks.h",
        "include/enet/enet.h",
        "include/enet/list.h",
        "include/enet/protocol.h",
        "include/enet/time.h",
        "include/enet/types.h",
        "include/enet/utility.h",
    ] + select({
        ":windows": [
            "include/enet/win32.h",
        ],
        ":darwin": [
            "include/enet/unix.h",
        ],
        "//conditions:default": [],
    }),
    strip_include_prefix = "include/",
)
