#!/usr/bin/env bash
echo "Starting RPC node"

DATADIR='rpcnode'


BOOTNODES='enode://16328bc1ad84ef24ee35d08a56d399cba32cf7d82d61403bdb82080976d8b864bc43a4917bbadacf5991ef23a86028b39853f26a858909aa5674ad63dcbc4e9f@18.169.204.117:22865,enode://9dd2e4f24b08a4f5c51cd3c7256913482a84d2ab87dff515e1cf80262339c2aae849af39ff1d20a8c92b4efae7d8e4156ca0d27d6e6768914c78c4998786f15a@18.169.204.117:22864,enode://0e370977f3dff304ff0b49ae340e29962ba0ed9b2f0e0cd8fc257c94d1e2ec6af2a483155cd228efbf2b1ff3f8e3cbb84a5df137a75e9104b0b143a0c1d0b6b2@18.169.204.117:22866'
#screen -dmS rpcnode 
/usr/bin/geth --ipcpath ~/.rr.ipc --bootnodes "$BOOTNODES" --datadir $DATADIR --syncmode 'full' --networkid 58008 --ws --ws.api admin,eth,net,web3,txpool,clique,trace  --ws.origins '*' --http --http.api admin,eth,net,web3,txpool,clique --http.corsdomain '*'
