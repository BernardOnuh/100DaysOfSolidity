# DEPLOY SMART CONTRACT TO EVM

![DeployContract](https://media1.tenor.com/images/5bbc2738509bdba212b37e3ca7bb9f66/tenor.gif?itemid=27607736)

## DEPLOY YOUR SMARTCONTRACT TO AN EVM COMPATIBLE NETWORK

**EVM**: Ethereum Virtual Machie is a piece of software that executes smart contracts and computes the state of the Ethereum network after each new block is added to the chain. The EVM sits on top of Ethereum's hardware and node network layer.

There are alot of EVM compatible Blockchain, e.g
- [Polygon](https://twitter.com/0xPolygon)
- [Arbitrum](https://twitter.com/arbitrum)
- [Optimism](https://twitter.com/arbitrum)
- [Metis](https://twitter.com/MetisDAO)

We can deploy our smart contracts on this blockchains all blockchain has there test network incase you want to check and test how your smart contract works
example of this networks are
- Goerli. 
- PolygonMumbai.
- Kovan Network.
- Repostan Network.

## Lets Deploy Our Smart Contract 
We would be deploying our smart contract to **Goeli** and **Polygon Mumbai** test blockchain using **REMIX** and **HARDHAT**

### Step 1
We would continue with our [zkEVMTOKEN.sol](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/14.TestContract/zkEVMToken.sol)

![image](https://media1.tenor.com/images/0a538b3b70163f08b96b39d7b08dcd71/tenor.gif?itemid=27607850)

- Compile the .sol file
- Click on the Ethereum icon to enter Deploy Environment.

### Step 2

![image2](https://media1.tenor.com/images/a6c7abd8a22bd01992f91019f7321f4b/tenor.gif?itemid=27607854)

- Go to environment select Injected Metamask
- Connect to your wallet choose the blockchain you want to deploy to.
- CThis Network could be mainnet or testnet you can add them to your wallet [here](chainlist.org) 

### Step 3

Deploy your Contract to the Blockchain here I used polygon mumbai and goerli Test Network.

![image4](https://media1.tenor.com/images/e3aa088d887ce96ad1662eb3a1f9a3f6/tenor.gif?itemid=27607887)

- Click on Deploy your Metamsk wallet will popup confirm the transaction

![image5](https://media1.tenor.com/images/b1b3fc18fb120d3cf6656b12d29bd8f3/tenor.gif?itemid=27607885)

Hurray you've just deployed to an Ethereum Virtual Machine Network.

### Step 4 

View your Smart Contract on [Etherscan](https://goerli.etherscan.io/address/0x5d88632b4e6c7e2f53a82d959b4343510c89736a) or the blockchain scan

![image6](https://media1.tenor.com/images/3d2655e0bffc296bb511466d4fc05f1b/tenor.gif?itemid=27607886)

### Hardhat

You can also Deploy with Hardhat which is quite easier and fast.

Here is a Detailed step on how to deploy [here](https://hardhat.org/tutorial/deploying-to-a-live-network)