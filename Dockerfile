FROM quay.io/p5x/baseimage-ansible:main

ARG COLLECTION_VERSION="develop"

ARG COLLECTION_REPO

COPY pip-requirements.txt /build/pip-requirements.txt

RUN --mount=type=ssh,uid=1001 \
    python3.12 -m pip install --no-cache-dir -r /build/pip-requirements.txt && \    
    ansible-galaxy collection install "${COLLECTION_REPO},${COLLECTION_VERSION}"
