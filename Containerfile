ARG FEDORA_MAJOR_VERSION=37

FROM ghcr.io/cgwalters/fedora-silverblue:${FEDORA_MAJOR_VERSION}
# See https://pagure.io/releng/issue/11047 for final location

COPY etc /etc

COPY marla-os-firstboot /usr/bin

COPY ansible-silverblue /var/opt/ansible-silverblue

WORKDIR /var/opt/ansible-silverblue

RUN tree /var/opt/ && \
    # rpm-ostree -y install --apply-live ansible ansible-collection-community-general && \
    # ansible-playbook -i hosts -l this_host playbook_base.yml && \
    sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
    systemctl enable rpm-ostreed-automatic.timer && \
    systemctl enable flatpak-automatic.timer && \
    rpm -e ansible ansible-collection-community-general && rm -rf /var/opt/ansible-silverblue && \
    ostree container commit
