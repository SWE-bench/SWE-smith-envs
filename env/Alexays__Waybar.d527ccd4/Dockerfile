FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y     git     build-essential     meson     ninja-build     pkg-config     libwayland-dev     wayland-protocols     libgtkmm-3.0-dev     libdbusmenu-gtk3-dev     libjsoncpp-dev     libsigc++-2.0-dev     libfmt-dev     libspdlog-dev     libnl-3-dev     libnl-genl-3-dev     libupower-glib-dev     libpulse-dev     libjack-dev     libmpdclient-dev     libudev-dev     libevdev-dev     libinput-dev     libxkbregistry-dev     libgtk-layer-shell-dev     libplayerctl-dev     libpipewire-0.3-dev     scdoc     catch2     && rm -rf /var/lib/apt/lists/*


RUN git clone --recurse-submodules https://github.com/Alexays/Waybar.git /testbed
WORKDIR /testbed
RUN git checkout d527ccd4c1f53f4bb161677b451aabb89556f2d5

RUN meson setup build -Dtests=enabled -Dman-pages=disabled &&     meson compile -C build

CMD ["/bin/bash"]