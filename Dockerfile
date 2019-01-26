FROM fedora:29

RUN dnf install -y \
    git \
    make \
    which \
    buildah-1.6 \
    podman-1.0.0 \
    skopeo-0.1.34 \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
