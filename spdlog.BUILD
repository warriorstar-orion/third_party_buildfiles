load("@rules_cc//cc:defs.bzl", "cc_library")

package(default_visibility = ["//visibility:public"])

cc_library(
    name = "spdlog",
    hdrs = glob(["include/**/*.h"]),
    strip_include_prefix = "include",
)
