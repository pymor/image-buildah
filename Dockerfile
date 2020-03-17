FROM fedora:31

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    findutils \
    git \
    make \
    which \
    buildah-1.14.2 \
    podman-1.8.1 \
    skopeo-0.1.41 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log

COPY libpod.conf /etc/containers/libpod.conf
