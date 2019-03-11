FROM fedora:29

ARG version=dev

LABEL version=${version}

RUN dnf install -y \
    git \
    make \
    which \
    buildah-1.7 \
    podman-1.1.2 \
    skopeo-0.1.34 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
