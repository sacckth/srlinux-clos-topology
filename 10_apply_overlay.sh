#!/bin/bash
WSDIR=./templates
TEMPLATE="${WSDIR}/mac-vrf.gotmpl "
VARSFILE="${WSDIR}/mac-vrf_vars.yml"
USER=admin
PASS=admin
EXTRA="--dry-run"
EXTRA=""

gnmic -a clab-clos_fab-leaf1:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE $EXTRA
gnmic -a clab-clos_fab-leaf1:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $WSDIR/ip-vrf-irb-bgp-dynamic.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml $EXTRA 
gnmic -a clab-clos_fab-leaf2:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE $EXTRA
#gnmic -a clab-clos_fab-leaf2:57400 -u $USER -p $PASS --skip-verify   set \
#     --request-file $WSDIR/ip-vrf-irb-bgp-dynamic.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml $EXTRA 
gnmic -a clab-clos_fab-leaf3:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE $EXTRA
#gnmic -a clab-clos_fab-leaf3:57400 -u $USER -p $PASS --skip-verify   set \
#     --request-file $WSDIR/ip-vrf-irb-bgp-dynamic.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml $EXTRA 
gnmic -a clab-clos_fab-leaf4:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $TEMPLATE  --request-vars $VARSFILE $EXTRA
gnmic -a clab-clos_fab-leaf4:57400 -u $USER -p $PASS --skip-verify   set \
     --request-file $WSDIR/ip-vrf-irb-bgp-dynamic.gotmpl --request-vars $WSDIR/ip-vrf-irb-bgp-dynamic_vars.yml $EXTRA 
