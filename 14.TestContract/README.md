# TEST SOLIDITY SMART CONTRACT

![Alt smartcontract](https://media.tenor.com/images/327a8e0c3fb30568417f840876f7a27a/tenor.gif)

## TESTING SOLIDITY SMART CONTRACT

There are alot of way to test your smart contract after you are done creating your smart contract, 
but in I will be focusing on two in this repository which are:

- [REMIX](https://remix.ethereum.org/)
- [Hardhat](https://hardhat.org/hardhat-runner/docs/getting-started)

## REMIX
**Remix is a powerful**, open source tool that helps you write Solidity contracts straight from the browser. Written in JavaScript, Remix supports both usage in the browser and locally. Remix also supports testing, debugging and deploying of smart contracts and much more.

### How to use REMIX

We would be testing this [Contract]() on REMIX test network,
The contract entails how to create a token on the blockcahin which has been made easy, gas optimized and secure with
[OpenZepplin](https://docs.openzeppelin.com)

![imageofopenzepplin](https://media1.tenor.com/images/d5b2e38acde91abd260e34ca5a724911/tenor.gif?itemid=27602791)

You can edit and write your contract here on [OpenZepplin](https://docs.openzeppelin.com/contracts/4.x/wizard)

Now lets use remix to test our smart contract
### Step 1
**Contract Creation**

![newfile](https://media1.tenor.com/images/5895f07c4bb14a55d205bd4830e0fa70/tenor.gif?itemid=27602790)

- create a new file in [remix](https://remix.ethereum.org/) environment
- name and save the file with the extention .sol e.g `zkEVMToken.sol`
- Paste the code you genrated from [OpenZepplin](https://docs.openzeppelin.com/contracts/4.x/wizard) or use this [zkEVMToken.sol]().
![newfile1](https://media1.tenor.com/images/967b9f35bfcaf10d0f33a55de7e8a9b7/tenor.gif?itemid=27602792)

### Step 2
**Compile Smartcontract**

![compile](https://media1.tenor.com/images/a0608c294c6ab3144d1239f7c4d0b287/tenor.gif?itemid=27602793)

- Click on the solidity icon in the image 
- Choose the compiler version **note** make sure it's same with the smart contrat file
- Click the compile button **note** if it shows red there are errors in your code, Green you can deploy the smart Contract !!!

![compile1](https://media1.tenor.com/images/b13f8a4dfbf9285d5ee8a3a236187b6b/tenor.gif?itemid=27602794)

### Step3
**Deploying and Testing your Contract**

![Deploy](https://media1.tenor.com/images/dd13263a8c5de469fb0c16c3bd5cd08a/tenor.gif?itemid=27602797)

- Click on the Ethereum Icon.
- Click on the environment you will see alot  of environment for testing purpose we will be using Remix London
- Click the Deploy button to deploy it to tyeh  blockchain.
- You can now interact with your smartcontact on Remix blockchain.

![Deploy1](https://media1.tenor.com/images/ccacf6ce1c8ffa05a9bc4ebd02af9c03/tenor.gif?itemid=27602796)

### How to Use Hardhat

Hardhat is a development environment for Ethereum software. It consists of different components for editing, compiling, debugging and deploying your smart contracts and dApps, all of which work together to create a complete development environment.

Hardhat Runner is the main component you interact with when using Hardhat. It's a flexible and extensible task runner that helps you manage and automate the recurring tasks inherent to developing smart contracts and dApps.

There is a detailed and simple way to use Hardhat which can be found [Here](https://hardhat.org/hardhat-runner/docs/getting-started#installation)

you can deploy your token there also