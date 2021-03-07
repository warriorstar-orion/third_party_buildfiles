# Third Party BUILD files

This repository is a collection of Bazel BUILD files for projects which
currently do not have one.

## Available Targets

All target dependencies are resolved with targets within the repository. This
means that if the version of SDL provided is 2.0.8, then all subsequent
libraries that require SDL will depend on that version.

The following libraries may be depended upon from this workspace:

**SDL2** v2.0.8 

- `@wso_third_party_buildfiles//:sdl2`

BUILD file originally provided by Google quic-trace project, Copyright 2018
Google LLC and licensed under Apache-2.0, with extensive modifications.

**SDL2_ttf** v2.0.14

- `@wso_third_party_buildfiles//:sdl2_ttf`

BUILD file provided by Google quic-trace project, Copyright 2018 Google LLC,
and licensed under Apache-2.0.

**SDL2_image** v2.0.5

- `@wso_third_party_buildfiles//:sdl2_image`

**SDL2_mixer** v2.0.4

- `@wso_third_party_buildfiles//:sdl2_mixer`

Currently only built with `-DMUSIC_WAV`. Additional codec support is planned.

**SDL2pp** v0.16.1

- `@wso_third_party_buildfiles//:sdl2pp`

A sample binary is provided at `@sdl2pp//:examples_sprites`.

**Dear ImGui** v1.81

- `@wso_third_party_buildfiles//:dear_imgui`
- `@wso_third_party_buildfiles//:dear_imgui_backend_opengl3`
- `@wso_third_party_buildfiles//:dear_imgui_backend_sdl`

A sample binary is provided at `@dear_imgui//:example_sdl_opengl3`.

**fmtlib** v7.0.3

- `@wso_third_party_buildfiles//:fmtlib`

**freetype** v2.9

- `@wso_third_party_buildfiles//:freetype`

BUILD file provided by Google quic-trace project, Copyright 2018 Google LLC,
and licensed under Apache-2.0.

**glew** v2.2.0

- `@wso_third_party_buildfiles//:glew`

**libpng** v1.2.57

- `@wso_third_party_buildfiles//:libpng`

BUILD file provided by Google Cartographer project, Copyright 2018 The
Cartographer Authors, and licensed under Apache-2.0.

**peglib** @ commit yhirose/cpp-peglib@11ed83e46fb0268c22005a6b8a9f094f8ea7208c

- `@wso_third_party_buildfiles//:peglib`

**spdlog** v1.7.0

- `@wso_third_party_buildfiles//:spdlog`

**zlib** @ commit madler/zlib@cacf7f1d4e3d44d871b605da3b647f07d718623f

- `@wso_third_party_buildfiles//:zlib`

BUILD file provided by Google Cartographer, Copyright 2018 The Cartographer
Authors, and licensed under Apache-2.0.

**cppcoro** @ commit lewissbaker/cppcoro@a87e97fe5b6091ca9f6de4637736b8e0d8b109cf

- `@wso_third_party_buildfiles//:cppcoro`