ARG FEDORA_MAJOR_VERSION=38

FROM https://quay.io/repository/fedora-ostree-desktops/silverblue:${FEDORA_MAJOR_VERSION}
# See https://pagure.io/releng/issue/11047 for final location

COPY ansible-silverblue /var/opt/ansible-silverblue

WORKDIR /var/opt/ansible-silverblue

RUN rpm-ostree -y install ansible ansible-collection-community-general && \
    ansible-playbook -i hosts -l this_host playbook_base.yml && \
    rpm -e ansible ansible-collection-community-general && rm -rf /var/opt/ansible-silverblue && \
    ostree container commit
