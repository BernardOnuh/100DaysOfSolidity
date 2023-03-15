# DEPLOY NFT CONTRACT TO POLYGON(Mumbai)

![Alt Solidity](https://media1.tenor.com/images/f69ce6daad8c6541359682cdfac910d4/tenor.gif?itemid=27696833)

##  DEPLOY NFT CONTRACT TO POLYGON MUMBAI WITH THIRDWEB
Follow the following steps to deploy your smartcontract.

### Creating A Smart Contract

To create a new smartcontract, we can use the following from the CLI:
```npx thirdweb create ---contract```
This command runs an interactive setup process for us to get started.
- **Give your project a name**
- **Select the framework to use -Hardhat**
- **Ctreate your audited contract by selceting ERC-721 Base** you can also use your custom contact [here]()

![Alt Create](https://cdn.hashnode.com/res/hashnode/image/upload/v1660286783799/0ll5amhAi.png)

After creating your contract you can now check your solidity smartcontract code [here](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/DeployNFT/contract.sol)

## Release & Deploy
The CLI allows us to deploy our contracts  without any additional configuration or use of private keys. Let's see how we can do it.

First, let's check what features we've successfully implemented from the contracts SDK by running the following commad:

```npx thirdweb detect```

This command shows us all of vthe contract extention we've implemented, which will unlock features for us in the Web3 SDK as well as dashboard (more on that later).

![Alt detect](https://cdn.hashnode.com/res/hashnode/image/upload/v1659940071570/cRbtnqU6t.png)

Along with all of the extensions implemented by the base contract, we've also successfully implemented the Permissions contract extension. This looks good! Now we're ready to deploy.

You can deploy directly via the CLI using `npx thirdweb deploy`, but I'm going to show you how you can create a landing page for your contract that you can share before deploying too. To do that, let's run the following command:
```npx thirdweb release```

This command:
- Compiles your project
- Uploads the contract ABI to IPFS
- Generates a link for you where you can ship your contract onto on-chain registry

![Alt reg](https://cdn.hashnode.com/res/hashnode/image/upload/v1659940293615/TY91k9izf.png)

Go ahead and click the URL that it generates to be taken to the dashboard.

Here is where you can fill out the metadata of your contract that will get stored on-chain on the Polygon network. Give your contract a description, readme, and version and click **Create Release**.

![Alt release](https://cdn.hashnode.com/res/hashnode/image/upload/v1659942664704/2e4dGYo7v.png)

Once you've uploaded your contract to the registry, you have your very own contract landing page! Where anybody can come and view all of the functionality available in your contract.
![Alt third](https://cdn.hashnode.com/res/hashnode/image/upload/v1659942654391/sKOgnrXtx.png)

You can check mine out here: https://thirdweb.com/0xb371d1C5629C70ACd726B20a045D197c256E1054/Contract

Great work! You can share your contract with anybody and have them deploy it directly from this page too!

Let's go ahead and deploy it now by clicking the Deploy Now button in the top right.

Here, we need to provide values for the constructor parameters we set up in our contract.

You can see how I've configured these below:

- Name: Name of the contract itself
- Symbol: The ticker for the tokens of this contract
- Royalty Recipient: Wallet address that receives royalties from secondary sales
- Royalty BPS: Amount of royalties (e.g. 500 = 5%)
- Primary Sale Recipient: Wallet address that receives funds from primary sales

# Hurray you've successfully deployed your smart contract.

## Deploy your NFT contract using REMIX

We've discussed about this before [here](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/15.DeployContract)
compile and deploy using REMIX.
