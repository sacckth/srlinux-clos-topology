#!/bin/bash
WSDIR=./templates
TEMPLATE="${WSDIR}/mac-vrf_del.gotmpl "
VARSFILE="${WSDIR}/mac-vrf_vars.yml"
gnmic -a clab-clos_fab-leaf1:57400 -u admin -p admin --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE
gnmic -a clab-clos_fab-leaf2:57400 -u admin -p admin --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE
gnmic -a clab-clos_fab-leaf3:57400 -u admin -p admin --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE
gnmic -a clab-clos_fab-leaf4:57400 -u admin -p admin --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE

gnmic -a clab-clos_fab-leaf1:57400 -u admin -p admin --skip-verify   set \
     --request-file $WSDIR/ip-vrf_del.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml
##gnmic -a clab-clos_fab-leaf2:57400 -u admin -p admin --skip-verify   set \
##     --request-file $WSDIR/ip-vrf_del.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml
##gnmic -a clab-clos_fab-leaf3:57400 -u admin -p admin --skip-verify   set \
##     --request-file $WSDIR/ip-vrf_del.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml
gnmic -a clab-clos_fab-leaf4:57400 -u admin -p admin --skip-verify   set \
     --request-file $WSDIR/ip-vrf_del.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml
