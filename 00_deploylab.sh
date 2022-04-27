#!/bin/bash
sudo rm -rf clab-clos_fab
sudo clab deploy -t cfg-clos.clab.yml --reconfigure
sudo clab config --topo cfg-clos.clab.yml  -p . -l cfg-clos 