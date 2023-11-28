FROM quay.io/centos/centos:stream8

# Update the system and install necessary tools
RUN dnf -y update && \
    dnf -y install wget bzip2 unzip git mesa-dri-drivers python3-pip 
    
# Install GitHub CLI (gh)
RUN dnf -y install dnf-plugins-core && \
    dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo && \
    dnf -y install gh
