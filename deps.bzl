load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def wso_deps():
    http_archive(
        name = "zlib",
        build_file = "@wso_third_party_buildfiles//buildfiles:zlib.BUILD",
        sha256 = "6d4d6640ca3121620995ee255945161821218752b551a1a180f4215f7d124d45",
        strip_prefix = "zlib-cacf7f1d4e3d44d871b605da3b647f07d718623f",
        urls = [
            "https://mirror.bazel.build/github.com/madler/zlib/archive/cacf7f1d4e3d44d871b605da3b647f07d718623f.tar.gz",
            "https://github.com/madler/zlib/archive/cacf7f1d4e3d44d871b605da3b647f07d718623f.tar.gz",
        ],
    )

    http_archive(
        name = "fmtlib",
        build_file = "@wso_third_party_buildfiles//buildfiles:fmtlib.BUILD",
        sha256 = "5d98c504d0205f912e22449ecdea776b78ce0bb096927334f80781e720084c9f",
        strip_prefix = "fmt-7.1.3",
        urls = ["https://github.com/fmtlib/fmt/releases/download/7.1.3/fmt-7.1.3.zip"],
    )

    http_archive(
        name = "spdlog",
        build_file = "@wso_third_party_buildfiles//buildfiles:spdlog.BUILD",
        sha256 = "e20e6bd8f57e866eaf25a5417f0a38a116e537f1a77ac7b5409ca2b180cec0d5",
        strip_prefix = "spdlog-1.8.2",
        urls = ["https://github.com/gabime/spdlog/archive/v1.8.2.tar.gz"],
    )

    http_archive(
        name = "peglib",
        build_file = "@wso_third_party_buildfiles//buildfiles:peglib.BUILD",
        sha256 = "ac7e8750f7692929bd9c1230f104d1c065713dc231749b8b819dd96f5cf5d383",
        strip_prefix = "cpp-peglib-11ed83e46fb0268c22005a6b8a9f094f8ea7208c",
        urls = [
            "https://github.com/yhirose/cpp-peglib/archive/11ed83e46fb0268c22005a6b8a9f094f8ea7208c.tar.gz",
        ],
    )

    http_archive(
        name = "libpng",
        build_file = "@wso_third_party_buildfiles//buildfiles:libpng.BUILD",
        sha256 = "7f415186d38ca71c23058386d7cf5135c8beda821ee1beecdc2a7a26c0356615",
        strip_prefix = "libpng-1.2.57",
        urls = [
            "https://github.com/glennrp/libpng/archive/v1.2.57.tar.gz",
        ],
    )

    http_archive(
        name = "freetype",
        build_file = "@wso_third_party_buildfiles//buildfiles:freetype.BUILD",
        # We patch out some modules we don't use from freetype config file.
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:freetype_config.patch",
            "@wso_third_party_buildfiles//patches:freetype_release_build.patch",
        ],
        sha256 = "bf380e4d7c4f3b5b1c1a7b2bf3abb967bda5e9ab480d0df656e0e08c5019c5e6",
        strip_prefix = "freetype-2.9",
        urls = ["https://download.savannah.gnu.org/releases/freetype/freetype-2.9.tar.gz"],
    )

    http_archive(
        name = "sdl2",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2.BUILD",
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:sdl2_macosx_config.patch",
        ],
        strip_prefix = "SDL2-2.0.14",
        sha256 = "2c1e870d74e13dfdae870600bfcb6862a5eab4ea5b915144aff8d75a0f9bf046",
        urls = ["https://www.libsdl.org/release/SDL2-2.0.14.zip"],
    )

    http_archive(
        name = "sdl2_ttf",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2_ttf.BUILD",
        sha256 = "ad7a7d2562c19ad2b71fa4ab2e76f9f52b3ee98096c0a7d7efbafc2617073c27",
        strip_prefix = "SDL2_ttf-2.0.14",
        urls = ["https://www.libsdl.org/projects/SDL_ttf/release/SDL2_ttf-2.0.14.zip"],
    )

    http_archive(
        name = "sdl2_image",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2_image.BUILD",
        sha256 = "eee0927d1e7819d57c623fe3e2b3c6761c77c474fe9bc425e8674d30ac049b1c",
        strip_prefix = "SDL2_image-2.0.5",
        urls = ["https://www.libsdl.org/projects/SDL_image/release/SDL2_image-2.0.5.zip"],
    )

    http_archive(
        name = "glew",
        build_file = "@wso_third_party_buildfiles//buildfiles:glew.BUILD",
        sha256 = "a9046a913774395a095edcc0b0ac2d81c3aacca61787b39839b941e9be14e0d4",
        strip_prefix = "glew-2.2.0",
        urls = ["https://github.com/nigels-com/glew/releases/download/glew-2.2.0/glew-2.2.0.zip"],
    )

    http_archive(
        name = "sdl2_mixer",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2_mixer.BUILD",
        sha256 = "9affb8c7bf6fbffda0f6906bfb99c0ea50dca9b188ba9e15be90042dc03c5ded",
        strip_prefix = "SDL2_mixer-2.0.4",
        urls = ["https://www.libsdl.org/projects/SDL_mixer/release/SDL2_mixer-2.0.4.zip"],
    )

    http_archive(
        name = "dear_imgui",
        build_file = "@wso_third_party_buildfiles//buildfiles:dear_imgui.BUILD",
        sha256 = "522c69d98d3729e7a18490855a51ba3689b8504ca61d801e1aa3a88b7f1d5aa8",
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:imgui_example_sdl_metal_include.patch",
        ],
        strip_prefix = "imgui-1.81",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.81.zip",
        ],
    )

    http_archive(
        name = "sdl2pp",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2pp.BUILD",
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:sdl2pp_generatedheaders.patch",
            "@wso_third_party_buildfiles//patches:sdl2pp_rawdefines.patch",
        ],
        sha256 = "d6ffaa0c0156d3159930ac1e4df1121302b9f2e80c17c5a581e1a89e01ddd383",
        strip_prefix = "libSDL2pp-0.16.1",
        urls = [
            "https://github.com/libSDL2pp/libSDL2pp/archive/0.16.1.zip",
        ],
    )

    http_archive(
        name = "cppcoro",
        build_file = "@wso_third_party_buildfiles//buildfiles:cppcoro.BUILD",
        strip_prefix = "cppcoro-a87e97fe5b6091ca9f6de4637736b8e0d8b109cf",
        sha256 = "2711fbfe0980b2bdb5b95de65abe3aee40c902d790f2a844558a5c0a8159e770",
        urls = [
            "https://github.com/lewissbaker/cppcoro/archive/a87e97fe5b6091ca9f6de4637736b8e0d8b109cf.zip",
        ],
    )

    http_archive(
        name = "TGUI",
        build_file = "@wso_third_party_buildfiles//buildfiles:TGUI.BUILD",
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:tgui_config.patch",
        ],
        strip_prefix = "TGUI-0.9.1",
        urls = [
            "https://github.com/texus/TGUI/archive/v0.9.1.zip",
        ],
    )

    http_archive(
        name = "enet",
        build_file = "@wso_third_party_buildfiles//buildfiles:enet.BUILD",
        strip_prefix = "enet-1.3.17",
        urls = [
            "https://github.com/lsalzman/enet/archive/v1.3.17.zip",
        ],
        sha256 = "ef9ae51c0d827324c391b13950a85c159199b65294035a912ca1bc6e419805c1",
    )

    http_archive(
        name = "enet-plus",
        build_file = "@wso_third_party_buildfiles//buildfiles:enet_plus.BUILD",
        strip_prefix = "enet-plus-0.1-alpha",
        sha256 = "5936d3795e8901dcb1b64353055a86759d7a305f2bbd18913feac80f57164c75",
        urls = [
            "https://github.com/xairy/enet-plus/archive/v0.1-alpha.zip",
        ],
    )

    # As nice as it is that zpl is a single-file header library, it is released
    # as such on GitHub, *not* as an archive, so it cannot be used in the same
    # places as a workspace made from an http_archive.
    http_archive(
        name = "zpl",
        build_file = "@wso_third_party_buildfiles//buildfiles:zpl.BUILD",
        sha256 = "745ca576369e3b1def1b3384a585ced150a5440f288c7e856c9ce0fce30a4e7e",
        strip_prefix = "zpl-12.1.0",
        urls = [
            "https://github.com/zpl-c/zpl/archive/12.1.0.tar.gz",
        ],
    )

    http_archive(
        name = "librg",
        build_file = "@wso_third_party_buildfiles//buildfiles:librg.BUILD",
        strip_prefix = "librg-6.0.11",
        sha256 = "6591d57f2f1b61e1684d7943b028fd2e32a54e98a51b577df4bc313765dfdbdd",
        urls = [
            "https://github.com/zpl-c/librg/archive/v6.0.11.zip",
        ],
    )

    http_archive(
        name = "Gwork",
        build_file = "@wso_third_party_buildfiles//buildfiles:gwork.BUILD",
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:gwork_sdl2_highdpi.patch",
        ],
        strip_prefix = "GWork-gwork",
        sha256 = "136a741120da9cb5a5d1d439f4af1d49c8858d334dccb170106be8eca91eb948",
        urls = [
            "https://github.com/billyquith/GWork/archive/refs/heads/gwork.zip",
        ],
    )

    http_archive(
        name = "com_google_absl",
        sha256 = "8400c511d64eb4d26f92c5ec72535ebd0f843067515244e8b50817b0786427f9",
        strip_prefix = "abseil-cpp-c512f118dde6ffd51cb7d8ac8804bbaf4d266c3a",
        urls = ["https://github.com/abseil/abseil-cpp/archive/c512f118dde6ffd51cb7d8ac8804bbaf4d266c3a.zip"],
    )

    http_archive(
        name = "entt",
        sha256 = "0d4b16d046e5f65e67b1b8b8bc2ec5547f3ee25c1b37c33c9226141e40c5ac24",
        strip_prefix = "entt-18832fcb3765e02e66b033a0cf723683762463c0",
        urls = [
            "https://github.com/skypjack/entt/archive/18832fcb3765e02e66b033a0cf723683762463c0.tar.gz",
        ],
    )

    http_archive(
        name = "boost_ext_ut",
        strip_prefix = "ut-1.1.8",
        build_file = "@wso_third_party_buildfiles//buildfiles:boost_ext_ut.BUILD",
        sha256 = "7530a966d901809fb6b6ad14e0a03424fde3a137039cbb69af9f9a11d2f662d3",
        urls = [
            "https://github.com/boost-ext/ut/archive/refs/tags/v1.1.8.zip",
        ],
    )

    http_archive(
        name = "cef-project",
        build_file = "@wso_third_party_buildfiles//buildfiles:cef-project.BUILD",
        sha256 = "49d58b3cba0fea06d205f8e2ec33e663b794a55fa85fa6a7130a244f5ed1d34c",
        urls = [
            "https://bitbucket.org/chromiumembedded/cef-project/get/28c07f863648.tar.gz",
        ],
        patch_args = ["-p1"],
        patches = [
            "@wso_third_party_buildfiles//patches:cef_project_macos_support.patch",
        ],
        strip_prefix = "chromiumembedded-cef-project-28c07f863648",
    )

    http_archive(
        name = "cef_prebuilt_macos_x64",
        sha256 = "81c52ded4b84270fdd5b05aba06d9996d4e32e01adf9d3199dff28d0a1c27959",
        build_file = "@wso_third_party_buildfiles//buildfiles:cef_prebuilt_macos_x64.BUILD",
        strip_prefix = "cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_macosx64",
        urls = [
            "https://cef-builds.spotifycdn.com/cef_binary_87.1.12%2Bg03f9336%2Bchromium-87.0.4280.88_macosx64.tar.bz2",
        ],
    )

    http_archive(
        name = "cef_prebuilt_win_x64",
        build_file = "@wso_third_party_buildfiles//buildfiles:cef_prebuilt_win_x64.BUILD",
        sha256 = "8c4a9841a8e8c5866104644268b8b2281fa45974c0700b33041bce7cc92ce067",
        strip_prefix = "cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_windows64",
        urls = [
            "https://cef-builds.spotifycdn.com/cef_binary_87.1.12+g03f9336+chromium-87.0.4280.88_windows64.tar.bz2",
        ],
    )

    http_archive(
        name = "sdl2-cef",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2-cef.BUILD",
        patch_args = ["-p1"],
        sha256 = "d1494e56da7a43ce6418585e7298c54f8e93913c21c3072ada0e41f70f050e08",
        patches = [
            "@wso_third_party_buildfiles//patches:sdl-cef_base.patch",
            "@wso_third_party_buildfiles//patches:sdl-cef_hidpi.patch",
        ],
        strip_prefix = "sdl2-cef-8e3dd817c88ecd05740fc7c341019db240078712",
        urls = [
            "https://github.com/jamethy/sdl2-cef/archive/8e3dd817c88ecd05740fc7c341019db240078712.zip",
        ],
    )

    http_archive(
        name = "tomlpp",
        build_file = "@wso_third_party_buildfiles//buildfiles:tomlpp.BUILD",
        urls = [
            "https://github.com/marzer/tomlplusplus/archive/4face4d5bf16326aca0da1fb33876dbca63b6e2f.zip",
        ],
        strip_prefix = "tomlplusplus-4face4d5bf16326aca0da1fb33876dbca63b6e2f",
    )