load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "enet-plus",
    srcs = [
        "src/enet-plus/client_host.cpp",
        "src/enet-plus/enet.cpp",
        "src/enet-plus/event.cpp",
        "src/enet-plus/host.cpp",
        "src/enet-plus/peer.cpp",
        "src/enet-plus/server_host.cpp",
    ],
    hdrs = [
        "include/enet-plus/base/macros.h",
        "include/enet-plus/base/pstdint.h",
        "include/enet-plus/client_host.h",
        "include/enet-plus/dll.h",
        "include/enet-plus/enet.h",
        "include/enet-plus/event.h",
        "include/enet-plus/host.h",
        "include/enet-plus/peer.h",
        "include/enet-plus/server_host.h",
    ],
    strip_include_prefix = "include/",
    deps = [
        "@enet",
    ],
)
