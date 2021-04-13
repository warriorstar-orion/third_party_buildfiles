load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "apple_dynamic_framework_import",
)
load(
    "@build_bazel_rules_apple//apple:macos.bzl",
    "macos_application",
)
load(
    "@build_bazel_rules_apple//apple:versioning.bzl",
    "apple_bundle_version",
)
load(
    "@rules_cc//cc:defs.bzl",
    "cc_library",
    "objc_import",
    "objc_library",
)
load("@wso_third_party_buildfiles//:cef.bzl", "HELPER_NAMES", "MAC_COPTS", "MAC_DEFINES")

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

apple_dynamic_framework_import(
    name = "ChromiumEmbeddedFramework",
    framework_imports = [
        ":ChromiumEmbeddedFramework_Files",
    ],
    visibility = ["//visibility:public"],
)

objc_import(
    name = "libcef_dll_wrapper",
    archives = [
        "build/libcef_dll_wrapper/libcef_dll_wrapper.a",
    ],
    visibility = ["//visibility:public"],
)

objc_import(
    name = "libcef_sandbox",
    archives = [
        "third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/Release/cef_sandbox.a",
    ],
    visibility = ["//visibility:public"],
)

cc_library(
    name = "cef_headers",
    hdrs = glob(["third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/include/**/*.h"]),
    includes = [
        "third_party/cef/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64/",
    ],
    visibility = ["//visibility:public"],
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
    name = "examples_shared_helper",
    srcs = SHARED_COMMON_SRCS + SHARED_HELPER_SRCS,
    copts = MAC_COPTS,
    defines = MAC_DEFINES,
    sdk_dylibs = [
        "pthread",
    ],
    sdk_frameworks = [
        "Cocoa",
        "AppKit",
    ],
    deps = [
        ":cef_headers",
        ":libcef_dll_wrapper",
        ":libcef_sandbox",
    ],
)

objc_library(
    name = "examples_shared_mac",
    srcs = SHARED_SRCS + [
        "examples/shared/resource_util_posix.cc",
    ],
    hdrs = [
        "examples/shared/shared_app_delegate.h",
        "examples/shared/shared_application.h",
    ],
    copts = MAC_COPTS,
    defines = MAC_DEFINES,
    non_arc_srcs = [
        "examples/shared/shared_application.mm",
        "examples/shared/shared_app_delegate.mm",
        "examples/shared/client_util_mac.mm",
        "examples/shared/main_mac.mm",
        "examples/shared/resource_util_mac.mm",
    ],
    sdk_dylibs = [
        "pthread",
    ],
    sdk_frameworks = [
        "Cocoa",
        "AppKit",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":cef_headers",
        ":libcef_dll_wrapper",
        ":libcef_sandbox",
    ],
)

cc_library(
    name = "examples_shared",
    srcs = select({
        ":darwin": [],
        ":windows": SHARED_SRCS,
    }),
    copts = MAC_COPTS,
    defines = MAC_DEFINES,
    deps = [
        ":cef_headers",
    ] + select({
        ":darwin": [
            ":examples_shared_mac",
            ":examples_shared_helper",
        ],
        ":windows": [],
    }),
)

EXAMPLE_SRCS = [
    "examples/minimal/app_browser_minimal.cc",
    "examples/minimal/client_minimal.cc",
    "examples/minimal/client_minimal.h",
    "examples/minimal/main_minimal.cc",
]

EXAMPLE_HELPER_SRCS = [
    "examples/minimal/app_other_minimal.cc",
    "examples/minimal/app_renderer_minimal.cc",
    "examples/minimal/process_helper_mac_minimal.cc",
]

objc_library(
    name = "examples_minimal_mac",
    srcs = EXAMPLE_SRCS,
    copts = MAC_COPTS,
    defines = MAC_DEFINES,
    sdk_dylibs = [
        "pthread",
    ],
    sdk_frameworks = [
        "Cocoa",
        "AppKit",
        "CoreFoundation",
    ],
    visibility = ["//visibility:public"],
    deps = [
        ":cef_headers",
        ":examples_shared_mac",
        ":libcef_dll_wrapper",
        ":libcef_sandbox",
    ],
)

objc_library(
    name = "examples_minimal_helper",
    srcs = EXAMPLE_HELPER_SRCS,
    copts = MAC_COPTS,
    defines = MAC_DEFINES,
    sdk_dylibs = [
        "pthread",
    ],
    sdk_frameworks = [
        "CoreFoundation",
        "Cocoa",
        "AppKit",
    ],
    deps = [
        ":cef_headers",
        ":examples_shared_helper",
        ":libcef_dll_wrapper",
        ":libcef_sandbox",
    ],
)

apple_bundle_version(
    name = "HelloWorldVersion",
    build_version = "1.0",
)

[
    macos_application(
        name = "ExamplesMinimalMacOSHelper_" + name,
        bundle_id = "org.cef.shared.helper" + plist_suffix,
        bundle_name = "minimal Helper" + bundle_name_suffix,
        infoplists = [":examples/shared/resources/mac/helper-Info.plist"],
        minimum_os_version = "10.15",
        version = ":HelloWorldVersion",
        visibility = ["//visibility:public"],
        deps = [
            ":examples_minimal_helper",
        ],
    )
    for name, plist_suffix, bundle_name_suffix in HELPER_NAMES
]

macos_application(
    name = "ExamplesMinimalMacOSApplication",
    additional_contents = {
        ":ExamplesMinimalMacOSHelper_" + name: "Frameworks"
        for name, _, _ in HELPER_NAMES
    },
    app_icons = [":examples/shared/resources/mac/shared.icns"],
    bundle_id = "org.cef.shared",
    bundle_name = "minimal",
    infoplists = [":examples/shared/resources/mac/Info.plist"],
    minimum_os_version = "10.15",
    version = ":HelloWorldVersion",
    deps = [
        ":ChromiumEmbeddedFramework",
        ":examples_minimal_mac",
    ],
)
