# syntax=docker/dockerfile:1
FROM ubuntu:22.04
ENV GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=accept-new"

ENV DEBIAN_FRONTEND=noninteractive

RUN --mount=type=ssh,required=false apt-get update && apt-get install -y     git     build-essential     meson     ninja-build     pkg-config     libwayland-dev     wayland-protocols     libgtkmm-3.0-dev     libdbusmenu-gtk3-dev     libjsoncpp-dev     libsigc++-2.0-dev     libfmt-dev     libspdlog-dev     libnl-3-dev     libnl-genl-3-dev     libupower-glib-dev     libpulse-dev     libjack-dev     libmpdclient-dev     libudev-dev     libevdev-dev     libinput-dev     libxkbregistry-dev     libgtk-layer-shell-dev     libplayerctl-dev     libpipewire-0.3-dev     scdoc     catch2     && rm -rf /var/lib/apt/lists/*


RUN --mount=type=ssh,required=false git clone https://github.com/swesmith/Alexays__Waybar.d527ccd4 /testbed
WORKDIR /testbed
RUN --mount=type=ssh,required=false git submodule update --init --recursive

RUN --mount=type=ssh,required=false meson setup build -Dtests=enabled -Dman-pages=disabled &&     meson compile -C build

CMD ["/bin/bash"]