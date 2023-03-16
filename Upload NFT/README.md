# UPLOAD NFT TO IPFS with PINATA & THIRDWEB

![Alt Solidity](https://tenor.googleapis.com/v2/media?id=9956588629549939924&format=optimizedgif&client_key=tenor_web&access_token=ya29.a0AVvZVsqZAF2AGG23Qun66OAsp40EhpQElzNgPeJMJZ_90cpI7wcDczIzBUP8T2jqEbI6YMyfgYrGhaQ_Ek1GRP0HLr3zUzb-f6tWh8tSm4VPeSiz9OR3lWhtekn0XQzMTrV1r_takChJAQIbUsSBkh0wa-Hy9yQaCgYKAVgSARMSFQGbdwaIz30wmokSvAAa7PUu6HMIJA0166)

## UPLOAD NFTS WITH PINATA
Before minting an NFT, you'll normally want to have the asset that will be associated with your token uploaded to IPFS. With Pinata, we make this easy.
Simply go to the Pin Manager, click the upload button, choose a file, and upload your file. When the upload is complete, you'll see your file in the grid and can copy the IPFS CID (the string of characters that starts with "Qm"). You'll need this CID later, so keep it handy. You can also come back to the Pin Manage page and copy it again at any time.

## How To Create a JSON Metadata File
While the asset is what you are selling, the blockchain that you mint your token on needs to store a "pointer" to that asset. This pointer takes the form of a JSON file with properties that relate to your NFT. Think of these properties as rows and columns in a spreadsheet. You might have a row called "Name" and in the associated column, you might have "John Doe". That is essentially what a JSON file is doing.
Let's take a look at a very basic example of some JSON specifically designed for NFT metadata:

This is part of a three step tutorial on minting NFTs on Flow. The steps to this tutorial are:

- Creating the Contract 
- Uploading the asset to IPFS with Pinata - This Blog Entry
- Deploying the contract to the Flow Emulator and verifying that the NFT has been minted correctly with the correct content.
Before you mint an NFT, you’ll want to upload the file to the InterPlanetary File System (IPFS). In general, blockchains do not store large quantities of data well. Instead of storing the content of your image or video into the blockchain, you’ll want to store the content on IPFS, and provide the hash to your content in the metadata of the NFT token.

When you add a file to IPFS, the file is split into smaller chunks, which are cryptographically hashed, and given a unique fingerprint called the Content Identifier (CID). When someone goes to access your file via IPFS, they lookup this unique fingerprint. The lookup process will access their peer IPFS nodes to see whether they have access to the CID. Once IPFS finds the CID, then the file will be downloaded for use.

The easiest way to upload your content to IPFS is to make use of Pinata. Not only does Pinata enable you to easily place a file onto your own IPFS account, Pinata also provides you with other handy features so you don’t have to become an IPFS expert, e.g. a Fast Global CDN, IPFS Gateway, etc.

After you sign up for Pinata, upload the file that you’d like to mint as an NFT. Once you’ve uploaded your file, copy the CID to your clipboard.

![Alt Ipfs](https://allcode.com/wp-content/uploads/2021/11/allcode-nft-ipfs-2.png)

When you mint your NFT token, you will store the CID into the metadata of the token like the example below. 

`let metadata : {String : String} = {
          "name": "AllCode Logo",
          "street_address": "Fillmore Street", 
          "phone_number": "415-890-6431", 
          "email": "joel@allcode.com",
          "uri": "ipfs://QmVH5T7MFVU52hTfQdWvu73iFPEF3jizuGfyVLccTmBCX2"`

The NFT doesn’t actually store the image or video on the blockchain. Instead the wallet which renders the NFT will communicate with the smart contract to acquire the uri of the NFT. The wallet will then query IPFS for the file that resides at the uri. The wallet will render the file that resides at the IPFS uri. 

## USING THIRDWEB
ThirdWeb has made it so easy that everything is stored on IPFS (contract and NFTs)

We continue from our previous Contract [here](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/DeployNFT)
Here, we get to enter the metadata of our NFT:
![Alt upload](https://cdn.hashnode.com/res/hashnode/image/upload/v1660287789359/wehQlrOtl.png)

Behind the scenes, this uploads and pins your metadata to IPFS, and mints the NFT you just made! Once it's minted, we can see it show up in the NFTs tab:![Alt meta](https://cdn.hashnode.com/res/hashnode/image/upload/v1660287913519/Pz6ajvOur.png)
Now that we have an NFT minted, let's assign a nickname to it by using the contract explorer, back in the Overview tab!
