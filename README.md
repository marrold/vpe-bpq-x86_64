
# vpe-bpq-x86_64

Files to build a docker container that runs an instance of [bpq](https://www.cantab.net/users/john.wiseman/Documents/BPQ32.html). Heavily inspired by [VE3LSR's project](https://github.com/VE3LSR/docker-linbpq)

Support has been added to run [socat](https://linux.die.net/man/1/socat) acting as a TCP proxy, to work around BPQs limitation of "apps" only listening on local host.

This container is intended for use with the [Virtual Packet Environment](https://wiki.oarc.uk/virtual_packet_environment) but might be useful to someone else.

The source for building the container can be found [here](https://github.com/marrold/vpe-bpq)

**NOTE**: This is for x86_64 hosts. ARM support coming soon

# Usage

## General
It's assumed you'll be using this container with docker-compose. See `docker-compose-example.yml` for an example.

## socat

socat "proxies" can be defined in a CSV style format and then mounted inside the container to `/opt/linbpq/socat.cfg` - see `socat-example.cfg` for an example. 

# License

This project is released under the MIT license
