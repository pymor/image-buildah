FROM fedora:32

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    findutils \
    git \
    make \
    which \
    buildah-1.14.8 \
    podman-1.9.1 \
    skopeo-0.2.0 \
    unzip \
    gettext \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log

COPY libpod.conf /etc/containers/libpod.conf
