"""Constants for pre-built CEF libraries/headers."""

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

WINDOWS_COPTS = [
    "/MP",           # Multiprocess compilation
    "/Gy",           # Enable function-level linking
    "/GR-",          # Disable run-time type information
    "/W4",           # Warning level 4
    "/WX",           # Treat warnings as errors
    "/wd4100",       # Ignore "unreferenced formal parameter" warning
    "/wd4127",       # Ignore "conditional expression is constant" warning
    "/wd4244",       # Ignore "conversion possible loss of data" warning
    "/wd4481",       # Ignore "nonstandard extension used: override" warning
    "/wd4512",       # Ignore "assignment operator could not be generated" warning
    "/wd4701",       # Ignore "potentially uninitialized local variable" warning
    "/wd4702",       # Ignore "unreachable code" warning
    "/wd4996",       # Ignore "function or variable may be unsafe" warning
]

WINDOWS_DEFINES = [
    "WIN32",
    "_WIN32",
    "_WINDOWS",
    "UNICODE",
    "_UNICODE",
    "WINVER=0x0601",
    "_WIN32_WINNT=0x601",
    "NOMINMAX",
    "WIN32_LEAN_AND_MEAN",
    "_HAS_EXCEPTIONS=0",
]

WINDOWS_LINKOPTS = [
    "-DEFAULTLIB:ws2_32.lib",
    "-DEFAULTLIB:comctl32.lib",
    "-DEFAULTLIB:rpcrt4.lib",
    "-DEFAULTLIB:shlwapi.lib",
    "-DEFAULTLIB:ws2_32.lib",
]