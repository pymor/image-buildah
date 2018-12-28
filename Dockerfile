FROM fedora:29

RUN dnf update -y \
  && dnf install -y \
    git \
    make \
    which \
    buildah-1.5 \
    podman-0.12.1.2 \
    skopeo-0.1.32 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
