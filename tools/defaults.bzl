"""Re-export of some bazel rules with repository-wide defaults."""
load("@build_bazel_rules_typescript//:defs.bzl", _ts_library = "ts_library")
load("@build_bazel_rules_nodejs//:defs.bzl", "jasmine_node_test")

DEFAULT_TSCONFIG = "//:tsconfig.json"

def ts_library(tsconfig = None, **kwargs):
  if not tsconfig:
    tsconfig = DEFAULT_TSCONFIG
  _ts_library(tsconfig = tsconfig, **kwargs)
