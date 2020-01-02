FROM fedora:31

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    findutils \
    git \
    make \
    which \
    buildah-1.12.0 \
    podman-1.6.2 \
    skopeo-0.1.40 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
