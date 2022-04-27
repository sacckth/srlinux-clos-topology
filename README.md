# Tier-2 CLOS with Config Engine (cfg-clos)

Example based on  https://containerlab.dev/lab-examples/clos03/

## Prerequisites:

* [Docker](https://docs.docker.com/get-docker/)
* [Openvswitch](https://docs.openvswitch.org/en/latest/intro/install/index.html)
* A Linux VM or Hypervisor
* [containerlab]Containerlab(https://containerlab.dev/)
* [gNMIC](https://gnmic.kmrd.dev/)

## Execution

```
# Deploy the topology
$ containerlab deploy --topo cfg-clos.topo.yml

# Generate and apply the configuration from the templates
$ containerlab config --topo cfg-clos.topo.yml  -p . -l cfg-clos 
```