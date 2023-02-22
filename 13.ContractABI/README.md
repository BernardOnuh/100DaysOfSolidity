# SOLIDITY CONTRACT ABI.

![Alt Solidity](https://media.tenor.com/images/5d74c9ecc9b65ba5df059a3340835b76/tenor.gif)

## SOLIDITY CONTRACT ABI.

The Application Binary Interface (ABI) of a smart contract gives a contract the ability to communicate and interact with external applications and other smart contracts. Receiving data from external sources can be critical for completing the goals of the application and the user.  

In traditional web development, conversations about data happen between applications and servers through API's (Application Program Interface). Servers act as centralized sources of information that feed data to application by request. 

On a blockchain, no such centralization of data exists.  Nodes essentially act as servers and smart contracts are on chain "hosted" functions.  Applications outside of the blockchain (and other smart contracts) need a way to communicate with smart contracts that are on-chain. This is where ABI comes into play. 

## Why ABI?

Before going into more details about what ABI is, it is good to understand why we have it.

Smart contracts are the core applications of the EVM (Ethereum Virtual Machine). The purpose of smart contracts is to execute transactions when certain conditions defined in the contract are met. These conditions can be events both on or off-chain. Smart contracts are written in high-level languages like Solidity but they are stored on the EVM  as executable bytecode, which is in binary format. 

![abitofront](https://hackernoon.com/hn-images/1*Sz1a7G2pQ62UnkHoieve4w.jpeg)

Since this bytecode is not human readable, it requires interpretation to be understood. ABI allows anyone writing a smart contract to be able to communicate between a web application written in a high-level language like Javascript and the bytecode that the EVM understands. 

## What is an ABI?
Like its Web2 cousin, the API, ABI acts as a function selector, defining the specific methods that can be called to a smart contract for execution. These specific methods and their connected data types are listed in a generated JSON RPC file. 

![abitofront](https://static.packt-cdn.com/products/9781789954111/graphics/assets/fe0f2ffc-2f3c-4615-9cb5-43c8e036239b.png)

Unlike an API, we can't just send a request directly in JSON format to a smart contract and expect a response since a contract only communicates in bytecode. To translate this into something the EVM understands, this information is encoded via ABI encoding.  These encodings include function signatures and variable declarations so that the EVM knows exactly which function to execute within the smart contract. 

![abitofront](https://assets-global.website-files.com/5f973c97cf5aea614f93a26c/6229044f10f65856947ea08a_pB8XzfdFXj23gq7jFH_CYiP-HL8hknc4NvqkdUYrkchfFy4AHB2AGgb5PgMlyfWQWd7Wy9-_R3fHL6_gUXrNE3DhvD1-g_kwiBWbBkBQz9oJZibMQ-0I-r547c0nL8vi9TkgzZvM.png)

The responses are also in the bytecode so interpretation is required before it is processed by a web application. The advantage of using bytecode in the response is that we can also expect a certain structure to be returned after calling a contract's function.

## How to use ABI?
If you are using tooling like Hardhart/Truffle or an IDE like Remix, the contract ABI is automatically generated for you. You can also manually create the ABI by using the Solidity Compiler NPM package. After installing the package, you can run the ‘solcjs contractname.sol --abi’ command in a terminal. This will generate an .abi file if performed successfully. 

Now that you have a generated ABI, let's look at some of the elements in this file:

## Executing
As ABI operates as the interpreter between the EVM bytecode and Javascript of a website,  it is needed when you want to execute any functions of a smart contract. In addition to the ABI, the contract's address on the blockchain is required. Here is a small Javascript code snippet to show how this is done:

![contract](https://assets-global.website-files.com/5f973c97cf5aea614f93a26c/6229044fb2476623990ef47b_nOPA2SrKzWmcqgXVA5uH9E-9FnSluKb4is6MG4OZNIpT7jvuDnqW3l8KtTJBPLkAdomE4Rb3wUemcrGDxAUJk34uDO74jKYhs56hDt3xuEoTSuRohiX2AAGvAHBLuok_PrUHsZqm.png)

## Encoding 
Since all communication is done in bytecode, it would be difficult to expect developers to encode these messages themselves. Fortunately, popular compilers like Remix can also handle the encoding for you. These encodings follow a certain pattern, so one can have a better idea of what is going on by reviewing the ABI Specification.

The first four bytes are the function signature which indicates what type of function in the smart contract is being executed. A popular function identifier is a9059cbb which indicates that this is an ERC20 transfer. There is a database directory of function signatures here where you can explore more. 
