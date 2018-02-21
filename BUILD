# Copyright Google Inc. All Rights Reserved.
#
# Use of this source code is governed by an MIT-style license that can be
# found in the LICENSE file at https://angular.io/license
package(default_visibility = ["//visibility:public"])

licenses(["notice"])  # MIT License

exports_files([
    "LICENSE",
    "tsconfig.json",  # @external
])

# NOTE: this will move to node_modules/BUILD in a later release
# @external_begin
filegroup(
    name = "node_modules",
    srcs = glob(
        include = ["node_modules/**/*"],
        exclude = [
            "node_modules/fileset/test/**/*",  # Contains a test file with a space in the name.
            "node_modules/adm-zip/test/**/*",  # Ditto.
        ]
    ),
)
# @external_end
