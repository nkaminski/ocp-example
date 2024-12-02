# OpenShift Example Service

This repository contains the Kubernetes/OCP resource defintions as well as webserver container for a simple OpenShift service which hosts a static HTML page in a dedicated OpenShift project/namespace.

## Notes
* Recommended host system configuration:
    * RHEL 9.5+
    * `crc` tool from https://developers.redhat.com/content-gateway/rest/mirror/pub/openshift-v4/clients/crc/latest/crc-linux-amd64.tar.xz installed to a location on your shell path.
    * virtualization extensions enabled
    * at least 12GB of free memory
    * 50 GB of (v)disk space (the 35GB recommendation on the RH documentation is _bare minimum_ to install and not enough to run any workload)
    * `./bashrc.d/crc-oc` script copied into `~/.bashrc.d` after `crc setup` has been run.

* This project requires the ability to run as UID 101 therefore is incompatible with the restricted-v2 SCC. It is therefore required to make the less-restrictive nonroot-v2 SCC available to the deploying user. Use `oc adm policy ...` to configure this

* This project assumes that DNS name `*.apps-crc.testing` resolves to the OCP cluster (this is hardcoded in RH OCP Local).

## References
* [Kubernetes upstream documentation](https://kubernetes.io/docs/concepts/)
* [Red Hat OpenShift Local Setup Documentation](https://docs.redhat.com/en/documentation/red_hat_openshift_local/2.44/html/getting_started_guide/index)