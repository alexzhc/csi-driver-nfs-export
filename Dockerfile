# Copyright 2020 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# FROM registry.k8s.io/build-image/debian-base:bullseye-v1.4.2

From daocloud.io/alpine

ARG ARCH
ARG binary=./bin/${ARCH}/nfsexportplugin
COPY ${binary} /nfsexportplugin

# RUN apt update && \
#     apt upgrade -y && \
#     apt-mark unhold libcap2 && \
#     clean-install ca-certificates mount nfs-common netbase

ENTRYPOINT ["/nfsexportplugin"]
