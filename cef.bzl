load(
    "@build_bazel_rules_apple//apple:macos.bzl",
    "macos_application",
)

HELPER_NAMES = [
    [
        "",
        "",
        "",
    ],
    [
        "gpu",
        ".gpu",
        " (GPU)",
    ],
    [
        "plugin",
        ".plugin",
        " (Plugin)",
    ],
    [
        "renderer",
        ".renderer",
        " (Renderer)",
    ],
]

MAC_COPTS = [
    "-fno-strict-aliasing",  # Avoid assumptions regarding non-aliasing of objects of different types
    "-fstack-protector",  # Protect some vulnerable functions from stack-smashing (security feature)
    "-funwind-tables",  # Support stack unwinding for backtrace()
    # "-fvisibility=hidden",  # Give hidden visibility to declarations that are not explicitly marked as visible
    "-Wall",  # Enable all warnings
    # "-Werror",  # Treat warnings as errors
    "-Wextra",  # Enable additional warnings
    "-Wendif-labels",  # Warn whenever an #else or an #endif is followed by text
    "-Wno-missing-field-initializers",  # Don't warn about missing field initializers
    "-Wno-unused-parameter",  # Don't warn about unused parameters
    "-Wno-deprecated-declarations",
    # "-fno-rtti",  # Disable real-time type information
    "-fno-threadsafe-statics",  # Don't generate thread-safe statics
    "-fobjc-call-cxx-cdtors",  # Call the constructor/destructor of C++ instance variables in ObjC objects
    # "-fvisibility-inlines-hidden",  # Give hidden visibility to inlined class member functions
    # "-std=gnu++11",  # Use the C++11 language standard including GNU extensions
    "-Wno-narrowing",  # Don't warn about type narrowing
    "-Wsign-compare",  # Warn about mixed signed/unsigned type comparisons
]

MAC_DEFINES = [
    "CEF_USE_SANDBOX",
    "WRAPPING_CEF_SHARED",
]
