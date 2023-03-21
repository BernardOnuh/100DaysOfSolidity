# WRITING FUNCTIONS FOR SIGNATURE MINT

![Alt Solidity](https://media1.tenor.com/images/8da4a3d75efba9bc32f208fb49964160/tenor.gif?itemid=27528319)

## What is Signature Mint 
Signature Mint NFTs: Signature Mint NFTs are NFTs to be minted with a previous NFT collection. Therefore before you are eligible to mint this particular NFT you must be holding a particular NFT.

## Steps to create Signature Mint NFTs _

1. Create an NFT Smart Contract with solidity using secure and audited SmartContract from 
@OpenZeppelin
  and 
@thirdweb
 .

2. Mint  the NFT collection.

3. Create the new Signature Mint NFT Smart Contract which we would do later this week.

## CREATE AN ERC721 NFT SMART CONTRACT

We would be creating an ERC 721 collection using  Openzepplin to get an audited  smart contract

- Step 1.
Head over to openZepplin website [here](https://www.openzeppelin.com/), then click on Contracts and Start coding.
- Head over to the CLI on your PC and run

```bash
npm install @openzeppelin/contracts
```

- After Installing it's now time for usage,now lets go to the wizard [here](https://docs.openzeppelin.com/contracts/4.x/wizard) and select ERC721 and add the features you'll like to use.

- Copy your code and paste in contract.sol now you have an audited and trusted contract like the one we have [here]()

Now we've complete the first step we proceed tomorrow.