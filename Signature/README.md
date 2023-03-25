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

- Copy your code and paste in contract.sol now you have an audited and trusted contract like the one we have [here](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/NFTCONTRACT/nftcontract.sol)

## Create Signature Mint Contract
We would be creating signature mint contract with the help of thirdweb SDK,
use the following command from the CLI

```bash
npx thirdweb create contract
```
This command runs an interactive setup process for us to get started. Give your project a name,select `Hardhat` for the framework, and finally choose the `ERC721Base` contract to get started with.

![Alt image1](https://blog.thirdweb.com/content/images/2023/03/0ll5amhAi.png)

Once your project has been initialized, change directories into the newly created project and open it in your text editor!

```bash
cd my-awesome-nft         # the name of your project
```

### Understanding the Starter Code
To begin with, we have a single smart contract file called Contract.sol, that looks like this:

```bash
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC721Base.sol";

contract Contract is ERC721Base {

      constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {}

}
```
To break this down, this code is:

1. Importing the ERC721Base base contract from the contracts SDK
2. Making our contract implement that base contract
3. Writing any required functions for that implementation (e.g. constructor)


The result is our contract successfully extends the ERC721Base contract, meaning we get all of its functionality out of the box, and can also add or override any custom logic on top.

Let's do that now!

### Adding Custom Smart Contract Logic
One great thing about the contracts SDK is that you can incorporate any custom logic you like into your custom smart contracts, which wasn't possible before with the pre-built contracts.

In this example, I'll add some on-chain information about each NFT, where each NFT can have a nickname.

Let's see how that code looks:
```bash
contract Contract is ERC721Base {
    // Mapping of token ID to nickname string
    mapping (uint => string) public nicknames;

    // Set a new nickname for a token
    function setNickname(uint _tokenId, string calldata _nickname) public {
        nicknames[_tokenId] = _nickname;
    }

    // ... constructor
}
```
Above, we create a mapping of the NFT Token ID to the nickname, meaning each token ID can have one nickname at a time. We also create a function called setNickname, that takes in both a token ID and nickname, and adds the "key-value" pair into the mapping.

Great! There's only one problem... Anyone can call this function! This means anybody can change our NFT nicknames! What if we wanted to restrict access so that only we (the creator) could update this data?

Let's see how we can make use of the contract extensions available in the contracts SDK to add permission controls to our contract so that only the creator of the contract can call this function.

### Using Contract Extensions
If we take a look at the Permissions contract extension, we can see that it allows us to call the _setupRole function and provide a wallet address to give that wallet the role we define.

We can use this to create a role called nicknamer and create a function modifier to restrict access to our setNickname function.

First, we need to import the PermissionsEnumerable contract extension from the contracts SDK.
```bash
import "@thirdweb-dev/contracts/extension/PermissionsEnumerable.sol";
```
Then, we need to make our contract extend this contract extension:
```bash
contract Contract is ERC721Base, PermissionsEnumerable {
  ```
Now we're ready to define our role within our contract. Roles must be in the type of bytes32, so let's define a variable for our role that looks like this:
```bash
bytes32 public constant NICKNAMER_ROLE = keccak256("NICKNAMER_ROLE");
```
We can now modify our function using the onlyRole function modifier provided by the PermissionsEnumerable contract extension like so:
```bash
// Set a new nickname for a token
function setNickname(uint _tokenId, string calldata _nickname) public onlyRole(NICKNAMER_ROLE) {
    nicknames[_tokenId] = _nickname;
}
```
Finally, let's give the wallet that deploys this contract the role. We'll also give them the ADMIN role which comes included as part of the permissions contract extension too:

```bash
    constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    )
        ERC721Base(
            _name,
            _symbol,
            _royaltyRecipient,
            _royaltyBps
        )
    {
        // Give the contract deployer these roles when the contract is deployed.
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(NICKNAMER_ROLE, msg.sender);
    }
```
Awesome! Now when we deploy this contract, we'll be set up with both roles and only we will be able to call the setNickname function.

Let's deploy it now!


## Deploy Smart Contract

Now lets deploy our Smart Contract to the blockchain

```bash
yarn deploy
# or
npx deploy latest
```
your contract would be sent to IPFS where we would get it back with Thirdweb and deploy it to the blockchain.

![Alt image2](https://cdn.hashnode.com/res/hashnode/image/upload/v1659940293615/TY91k9izf.png)

copy the link in blue

This is my link [here](https://thirdweb.com/mumbai/0x78A7a9301aD93047bC7Bb527c9dd5f3deb9f98AE/code)

Go ahead and Click the URL or Copy and paste on your browser

Here  you will you'll fill in the constructors which are

- Project Name
- Royalty address
- Royalty Percentage

Select the chain you would like to use, I will advice first try it on a test network e.g
- Sepolia
- Mumbai
- Arbitrum Goerli
- Note Goerli ETH isn't working functionally now.

![Alt image3](https://cdn.hashnode.com/res/hashnode/image/upload/v1659940689686/s3sAYjzz0.png)


After Deploying your contract and adding to dashboard we can now to add our Metadata,Upload our NFTs and Interact with our Smart Contract.

Head over to **SOURCE** and fill in detais and metadata of your NFTs.
![Alt image4](https://cdn.hashnode.com/res/hashnode/image/upload/v1660287789359/wehQlrOtl.png)

after you are done you should have something like this: [here](https://thirdweb.com/mumbai/0x78A7a9301aD93047bC7Bb527c9dd5f3deb9f98AE/code)
[](https://thirdweb.com/mumbai/0x78A7a9301aD93047bC7Bb527c9dd5f3deb9f98AE/code)

We've Finally created our minting site check it out [here](https://signature-amber.vercel.app/)