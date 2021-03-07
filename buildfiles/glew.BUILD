load("@rules_cc//cc:defs.bzl", "cc_library")

cc_library(
    name = "glew",
    srcs = [
        "src/glew.c",
    ],
    hdrs = [
        "include/GL/eglew.h",
        "include/GL/glew.h",
        "include/GL/wglew.h",
    ],
    defines = [
        "GLEW_STATIC",
    ],
    includes = ["include"],
    visibility = ["//visibility:public"],
)
