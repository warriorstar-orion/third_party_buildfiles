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
    "objc_library",
)
load("@wso_third_party_buildfiles//:cef.bzl", "HELPER_NAMES", "MAC_COPTS", "MAC_DEFINES")

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
        "@cef_prebuilt_macos_x64//:cef_headers",
        "@cef_prebuilt_macos_x64//:libcef_dll_wrapper_mac",
        "@cef_prebuilt_macos_x64//:libcef_sandbox_mac",
    ],
    visibility = ["//visibility:public"],
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
        "@cef_prebuilt_macos_x64//:cef_headers",
        "@cef_prebuilt_macos_x64//:libcef_dll_wrapper_mac",
        "@cef_prebuilt_macos_x64//:libcef_sandbox_mac",
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
        "@cef_prebuilt_macos_x64//:cef_headers",
        "@cef_prebuilt_macos_x64//:libcef_dll_wrapper_mac",
        "@cef_prebuilt_macos_x64//:libcef_sandbox_mac",
        ":examples_shared_mac",
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
        ":examples_shared_helper",
        "@cef_prebuilt_macos_x64//:cef_headers",
        "@cef_prebuilt_macos_x64//:libcef_dll_wrapper_mac",
        "@cef_prebuilt_macos_x64//:libcef_sandbox_mac",
    ],
    visibility = ["//visibility:public"],
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
        "@cef_prebuilt_macos_x64//:ChromiumEmbeddedFramework_AppleDynamicFramework",
        ":examples_minimal_mac",
    ],
)
