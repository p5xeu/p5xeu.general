FROM quay.io/p5x/baseimage-ansible:main

ARG COLLECTION_VERSION="develop"

ARG COLLECTION_REPO

RUN --mount=type=ssh,uid=1001 ansible-galaxy collection install "${COLLECTION_REPO},${COLLECTION_VERSION}"
