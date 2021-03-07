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
        strip_prefix = "fmt-7.0.3",
        urls = ["https://github.com/fmtlib/fmt/releases/download/7.0.3/fmt-7.0.3.zip"],
    )

    http_archive(
        name = "spdlog",
        build_file = "@wso_third_party_buildfiles//buildfiles:spdlog.BUILD",
        strip_prefix = "spdlog-1.7.0",
        urls = ["https://github.com/gabime/spdlog/archive/v1.7.0.tar.gz"],
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
            "https://mirror.bazel.build/github.com/glennrp/libpng/archive/v1.2.57.tar.gz",
            "https://github.com/glennrp/libpng/archive/v1.2.57.tar.gz",
        ],
    )

    http_archive(
        name = "freetype",
        build_file = "@wso_third_party_buildfiles//buildfiles:freetype.BUILD",
        # We patch out some modules we don't use from freetype config file.
        patch_args = ["-p1"],
        patches = ["freetype_config.patch"],
        sha256 = "bf380e4d7c4f3b5b1c1a7b2bf3abb967bda5e9ab480d0df656e0e08c5019c5e6",
        strip_prefix = "freetype-2.9",
        urls = ["https://download.savannah.gnu.org/releases/freetype/freetype-2.9.tar.gz"],
    )

    http_archive(
        name = "sdl2",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2.BUILD",
        sha256 = "e6a7c71154c3001e318ba7ed4b98582de72ff970aca05abc9f45f7cbdc9088cb",
        strip_prefix = "SDL2-2.0.8",
        urls = ["https://www.libsdl.org/release/SDL2-2.0.8.zip"],
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
        strip_prefix = "imgui-1.81",
        urls = [
            "https://github.com/ocornut/imgui/archive/v1.81.zip",
        ],
    )

    http_archive(
        name = "sdl2pp",
        build_file = "@wso_third_party_buildfiles//buildfiles:sdl2pp.BUILD",
        patch_args = ["-p1"],
        patches = ["libsdl2pp_generatedheaders.patch"],
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
        urls = [
            "https://github.com/lewissbaker/cppcoro/archive/a87e97fe5b6091ca9f6de4637736b8e0d8b109cf.zip",
        ],
    )
