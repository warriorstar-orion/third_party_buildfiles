load(
    "@build_bazel_rules_apple//apple:apple.bzl",
    "apple_dynamic_framework_import",
    "apple_static_framework_import",
)

#apple_static_framework_import(
apple_dynamic_framework_import(
    name = "ChromiumEmbeddedFramework",
    framework_imports = glob([
        "frameworks/Chromium Embedded Framework.framework/**",
    ]),
)

cc_import(
    name = "libcef_dll_wrapper",
    static_library = "libraries/libcef_dll_wrapper.a",
)

cc_library(
    name = "cef_headers",
    hdrs = glob(["sdl-cef/include/**/*.h"]),
    includes = ["sdl-cef"],
    deps = [":ChromiumEmbeddedFramework"],
)

cc_binary(
    name = "sdl-cef",
    srcs = [
        "sdl-cef/sdl_cef_app.cc",
        "sdl-cef/sdl_cef_app.h",
        "sdl-cef/sdl_cef_browser_client.cc",
        "sdl-cef/sdl_cef_browser_client.h",
        "sdl-cef/sdl_cef_events.cc",
        "sdl-cef/sdl_cef_events.h",
        "sdl-cef/sdl_cef_main.cc",
        "sdl-cef/sdl_cef_render_handler.cc",
        "sdl-cef/sdl_cef_render_handler.h",
        "sdl-cef/stupid_background.cc",
        "sdl-cef/stupid_background.h",
    ],
    deps = [
        ":ChromiumEmbeddedFramework",
        ":cef_headers",
        ":libcef_dll_wrapper",
        "@sdl2",
        "@sdl2_image",
    ],
)
