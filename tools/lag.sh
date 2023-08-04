#!/bin/bash
# introduce lag for local network testing
# adapted from https://github.com/unitystation/unitystation/blob/344ece0da3745e9de8ea7fff78fb58b9fc3558a6/UnityProject/lag.sh
PING=${1:-300}
PORT=9632

sudo pfctl -E

# Configure `pfctl` to use `customRule`.
(cat /etc/pf.conf && echo "dummynet-anchor \"customRule\"" && echo "anchor \"customRule\"") | sudo pfctl -f -

echo "Setting ping to ${PING} on port ${PORT} for tcp and udp traffic..."

# Define `customRule` to pipe traffic to `pipe 1`.
# Note this is the actual port definition, not a textual comment
echo "dummynet in quick proto { tcp udp } from any to any port ${PORT} pipe 1" | sudo pfctl -a customRule -f -

# Define what `pipe 1` should do to traffic
sudo dnctl pipe 1 config bw 50KBytes/s delay ${PING}

echo "Done. Call stoplag.sh to undo these changes."
