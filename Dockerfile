ARG UBUNTU_TAG=18.04
FROM ubuntu:${UBUNTU_TAG}

RUN apt-get -q -y update                      \
    && apt-get install -q -y                  \
        cargo                                 \
    && apt-get -q -y autoremove               \
    && apt-get -q -y clean                    \

LABEL                                                             \
  org.label-schema.description="rg"                             \
  org.label-schema.name="kheaactua/rg"                          \
  org.label-schema.schema-version="1.0"                           \
  org.label-schema.url="https://github.com/kheaactua/docker-rg" \
  org.label-schema.vendor="Matthew Russell"                       \
  org.label-schema.version="0.1"

RUN cargo install ripgrep

# vim: ts=4 sw=4 expandtab ff=unix :
