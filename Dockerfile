FROM fedora:32

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    buildah-1.14.8 \
    findutils \
    gettext \
    git \
    jq \
    make \
    podman-1.9.2 \
    skopeo-0.2.0 \
    unzip \
    which \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log

COPY libpod.conf /etc/containers/libpod.conf
