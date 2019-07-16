FROM fedora:30

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    findutils \
    git \
    make \
    which \
    buildah-1.9.0 \
    podman-1.4.4 \
    skopeo-0.1.37 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
