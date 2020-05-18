#FROM centos:7
FROM registry.access.redhat.com/ubi7/s2i-base
USER root
# Use this block with centos:7 image
# RUN yum install -y centos-release-scl && \
#  yum install devtoolset-7 rh-python36 -y

# Use this block with registry.access.redhat.com/ubi7/s2i-base image
RUN yum-config-manager --enable rhel-server-rhscl-7-rpms rhel-7-server-devtools-rpms && \    
    yum install -y scl-utils devtoolset-7 rh-python36 glibc-debuginfo rh-python36-python-debuginfo

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

RUN source scl_source enable devtoolset-7 rh-python36 && \
    pip install --upgrade pip && \
	pip install tensorflow==1.15.0 requests absl-py

# always let tekton start container as non-root user
USER 1001