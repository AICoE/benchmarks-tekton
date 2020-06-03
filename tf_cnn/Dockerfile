FROM registry.access.redhat.com/ubi7/s2i-base

USER root

RUN yum-config-manager --enable rhel-server-rhscl-7-rpms rhel-7-server-devtools-rpms && \    
    yum install -y scl-utils devtoolset-8 rh-python36

RUN yum update -y && yum install -y \
    ca-certificates \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    which \
    python-setuptools \
    cmake tkinter numactl \
    libSM libXext \
    openmpi-devel \
    openssh openssh-server

RUN source scl_source enable rh-python36 && \
    pip install --upgrade pip setuptools wheel && \
	pip install tensorflow==1.15.0 requests absl-py

# always let tekton start container as non-root user
USER 1001
