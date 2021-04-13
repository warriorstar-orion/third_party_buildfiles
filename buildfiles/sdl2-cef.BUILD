load("@wso_third_party_buildfiles//:cef.bzl", "HELPER_NAMES", "MAC_COPTS", "MAC_DEFINES")
load(
    "@build_bazel_rules_apple//apple:versioning.bzl",
    "apple_bundle_version",
)
load(
    "@build_bazel_rules_apple//apple:macos.bzl",
    "macos_application",
)

objc_library(
    name = "sdl-cef",
    srcs = [
        "sdl-cef/sdl_cef_app.cc",
        "sdl-cef/sdl_cef_app.h",
        "sdl-cef/sdl_cef_browser_client.cc",
        "sdl-cef/sdl_cef_browser_client.h",
        "sdl-cef/sdl_cef_events.cc",
        "sdl-cef/sdl_cef_events.h",
        "sdl-cef/sdl_cef_render_handler.cc",
        "sdl-cef/sdl_cef_render_handler.h",
        "sdl-cef/stupid_background.cc",
        "sdl-cef/stupid_background.h",
    ],
    non_arc_srcs = [
        "sdl-cef/sdl_cef_main.mm",
    ],
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
        "@cef-project//:examples_shared_mac",
        "@cef-project//:examples_minimal_mac",
        "@cef-project//:cef_headers",
        "@cef-project//:libcef_dll_wrapper",
        "@cef-project//:libcef_sandbox",
        "@sdl2",
        "@sdl2_image",
        "@spdlog",
    ],
)

apple_bundle_version(
    name = "HelloWorldVersion",
    build_version = "1.0",
)

macos_application(
    name = "SDL_CEFMacOSApplication",
    additional_contents = dict({
        "@cef-project//:ExamplesMinimalMacOSHelper_" + name: "Frameworks"
        for name, _, _ in HELPER_NAMES
    }.items() + {
        ":sdl-cef/sdl_cef_css.css": "Resources",
        ":sdl-cef/sdl_cef_html.html": "Resources",
        ":sdl-cef/stupid_background.png": "Resources",
    }.items()),
    app_icons = [":examples/shared/resources/mac/shared.icns"],
    bundle_id = "org.cef.shared",
    bundle_name = "minimal",
    infoplists = [":examples/shared/resources/mac/Info.plist"],
    minimum_os_version = "10.15",
    version = ":HelloWorldVersion",
    deps = [
        ":sdl-cef",
        "@cef-project//:ChromiumEmbeddedFramework",
    ],
)
