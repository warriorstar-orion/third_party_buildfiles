package main

import (
	"os"
	"strings"
	"text/template"
)

type Target struct {
	Name      string
	Target    string
	Platforms []string
}

func main() {
	configs := []Target{
		Target{
			Name:   "boost_ext_ut",
			Target: "@boost_ext_ut//:boost_ext_ut",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@cppcoro//:cppcoro",
			Name:   "cppcoro",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
			},
		},

		Target{
			Target: "@enet-plus//:enet-plus",
			Name:   "enet_plus",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@enet//:enet",
			Name:   "enet",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@entt//:entt",
			Name:   "entt",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@fmtlib//:fmtlib",
			Name:   "fmtlib",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@freetype//:freetype",
			Name:   "freetype",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@libpng//:libpng",
			Name:   "libpng",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@librg//:librg",
			Name:   "librg",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@peglib//:peglib",
			Name:   "peglib",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@spdlog//:spdlog",
			Name:   "spdlog",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@zlib//:zlib",
			Name:   "zlib",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},

		Target{
			Target: "@zpl//:zpl",
			Name:   "zpl",
			Platforms: []string{
				"macos-latest",
				"windows-latest",
				"ubuntu-latest",
			},
		},
	}

	funcMap := template.FuncMap{
		"stringsJoin": strings.Join,
	}

	base := `name: "Simple Libraries"

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
{{ range . }}
{{ template "job" . }}
{{ end }}
`

	job := `  {{ .Name }}:
    runs-on: ${{ "{{ matrix.os }}" }}
  
    strategy:
      matrix:
        os: [{{ stringsJoin .Platforms ", " }}]
  
    steps:
      - uses: actions/checkout@v2
      - uses: bazelbuild/setup-bazelisk@v1.0.1
  
      - name: Mount bazel cache
        uses: actions/cache@v2
        with:
          path: "~/.cache/bazel"
          key: bazel
  
      - run: bazel build {{ .Target }}
`

	t := template.Must(template.New("base").Parse(base))
	t = t.Funcs(funcMap)
	template.Must(t.New("job").Parse(job))
	t.ExecuteTemplate(os.Stdout, "base", configs)
}
