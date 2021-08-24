FROM registry.redhat.io/rhel8/support-tools:8.4-10

# Use our gather script in place of the original one
RUN yum install -y rsync
COPY gather_sos /usr/bin/gather

ENTRYPOINT /usr/bin/gather

