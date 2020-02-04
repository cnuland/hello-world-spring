FROM registry.access.redhat.com/openshift3/jenkins-agent-maven-35-rhel7:v3.11
USER 0
RUN yum repolist > /dev/null && yum-config-manager --enable rhel-7-server-extras-rpms && yum clean all &&  INSTALL_PKGS="skopeo" && yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS && yum clean all  
USER 1001