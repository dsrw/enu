#!/bin/bash
# adapted from https://github.com/unitystation/unitystation/blob/344ece0da3745e9de8ea7fff78fb58b9fc3558a6/UnityProject/stoplag.sh
echo "Stopping lag simulation..."

sudo dnctl -q flush
sudo pfctl -f /etc/pf.conf

echo "Done. Call lag.sh to re-enable lag simulation."
