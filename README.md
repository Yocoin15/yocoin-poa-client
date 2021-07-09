<h1 align="center">Yocoin POA blockchain</h1>
<p align="center">Node configuration for Yocoin blockchain</p>

## Installation instruction

1. Init with genesis
```BASH
geth --datadir ./rpcnode init genesis.json
```
2. Configure run.sh with your datadir

<i> If you change DATADIR in run.sh you should Init with that changed datadir in #1</i>

3. Open ports 
    - 30303 (for node communication)
    - 8445 (optional for HTTP RPC)
    - 8446 (optional for WebSocket RPC)


4. [Install geth](https://geth.ethereum.org/docs/install-and-build/installing-geth) for your system


5. Install `screen` package
```BASH
sudo apt udpate
sudo apt install screen
```


6. Make run.sh executable 
```BASH
chmod +x ./run.sh
```

7. Run node. It runs as daemon with `screen` app in background
```BASH
./run.sh
```

8. To move it foreground run
```BASH
screen -r rpcnode
```

9. To attach console run
```BASH
geth attach ./rpcnode/geth.ipc
```