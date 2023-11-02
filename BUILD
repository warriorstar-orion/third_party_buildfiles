package(default_visibility = ["//visibility:public"])

load("@io_bazel_rules_go//go:def.bzl", "go_binary")

exports_files(["deps.bzl"])

go_binary(
  name = "gen_github_actions",
  srcs = ["gen_github_actions.go"],
)
