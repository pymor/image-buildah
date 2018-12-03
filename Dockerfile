FROM fedora:29

RUN dnf update -y \
  && dnf install -y \
    buildah \
    git \
    podman \
    make \
    skopeo \
    which \
  && rm -rf \
    /usr/lib64/python3.6/__pycache__/ \
    /var/cache/dnf/ \
    /var/log/dnf*.log
