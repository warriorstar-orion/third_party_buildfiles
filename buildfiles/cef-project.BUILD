load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "apple_dynamic_framework_import",
    "apple_static_framework_import",
)

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

filegroup(
    name = "ChromiumEmbeddedFramework_Files",
    srcs = glob([
        "third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/Release/Chromium Embedded Framework.framework/**",
    ]),
)

#apple_static_framework_import(
apple_dynamic_framework_import(
    name = "ChromiumEmbeddedFramework",
    framework_imports = [":ChromiumEmbeddedFramework_Files"],
)

cc_import(
    name = "libcef_dll_wrapper",
    static_library = "build/libcef_dll_wrapper/libcef_dll_wrapper.a",
)

cc_library(
    name = "cef_headers",
    hdrs = glob(["third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/include/**/*.h"]),
    includes = ["third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/"],
)

SHARED_COMMON_SRCS = [
    "examples/shared/app_factory.h",
    "examples/shared/main_util.cc",
    "examples/shared/main_util.h",
]

SHARED_SRCS = SHARED_COMMON_SRCS + [
    "examples/shared/client_manager.cc",
    "examples/shared/client_manager.h",
    "examples/shared/client_util.cc",
    "examples/shared/client_util.h",
    "examples/shared/browser_util.cc",
    "examples/shared/browser_util.h",
    "examples/shared/main.h",
    "examples/shared/resource_util.cc",
    "examples/shared/resource_util.h",
]

SHARED_HELPER_SRCS = [
    "examples/shared/process_helper_mac.cc",
    "examples/shared/process_helper_mac.h",
]

objc_library(
    name = "examples_shared_mac",
    srcs = SHARED_SRCS + SHARED_HELPER_SRCS + [
        "examples/shared/resource_util_posix.cc",
    ],
    non_arc_srcs = [
        "examples/shared/client_util_mac.mm",
        "examples/shared/main_mac.mm",
        "examples/shared/resource_util_mac.mm",
    ],
    deps = [
        ":ChromiumEmbeddedFramework",
        ":cef_headers",
    ],
)

cc_library(
    name = "examples_shared",
    srcs = select({
        ":darwin": [],
        ":windows": SHARED_SRCS,
    }),
    deps = [
        ":ChromiumEmbeddedFramework",
        ":cef_headers",
        ":examples_shared_mac",
        ":libcef_dll_wrapper",
    ],
)

cc_binary(
    name = "examples_minimal",
    srcs = [
        "examples/minimal/app_browser_minimal.cc",
        "examples/minimal/client_minimal.cc",
        "examples/minimal/client_minimal.h",
        "examples/minimal/main_minimal.cc",
        "examples/minimal/app_other_minimal.cc",
        "examples/minimal/app_renderer_minimal.cc",
        # "process_helper_mac_minimal.cc",
    ],
    deps = [
        ":ChromiumEmbeddedFramework",
        ":cef_headers",
        ":examples_shared",
        ":libcef_dll_wrapper",
    ],
)
