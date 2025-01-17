# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Redefine native symbols with a new name as a workaround for
# exporting them in `//proto:defs.bzl` with their original name.
#
# While we cannot force users to load these symbol due to the lack of a
# whitelisting mechanism, we can still export them and tell users to
# load it to make a future migration to pure Starlark easier.

NativeProtoInfo = ProtoInfo

native_proto_common = proto_common
