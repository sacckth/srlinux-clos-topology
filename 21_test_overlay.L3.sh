CLIENT="clab-clos_fab-client1"
SERVER="clab-clos_fab-client4"
COUNT=5
net1_client="$(sudo docker exec -it $CLIENT ip a s eth1 | egrep -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"
ip_net1_client="${net1_client##inet}"
net1_server="$(sudo docker exec -it $SERVER ip a s eth1 | egrep -o 'inet [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}')"
ip_net1_server="${net1_server##inet}"
printf "#########################  Ping test  ###########################

+-------------------+                      +-------------------+
|                   |                      |                   |
|                   |                      |                   |
|                   |                      |                   |\r|   $CLIENT\t\t\t$SERVER
|                   |                      |                   |\r|   $ip_net1_client\t\t\t\t$ip_net1_server
|                   |                      |                   |
|        eth1       |                      |         eth1      |
+---------+---------+                      +----------+--------+
          |                                           |
          |                                           |
          |                                           |
          |           +-------------------+           |
          |           |                   |           |
          |           |     DISTRIBUTED   |           |
          |           |     L3WORKLOAD    |           |
          +-----------+gw1 <---------> gw2+-----------+
                      |        VxLAN      |
                      |                   |
                      +-------------------+
"
sudo docker exec -it $CLIENT  /usr/bin/ping -c $COUNT $ip_net1_server -I $ip_net1_client
