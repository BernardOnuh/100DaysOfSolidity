# SECURITY VULNERABILITIES IN SOLIDITY CONTRACT

![Alt SecurityVulnerability](https://media1.tenor.com/images/aa61a61cbe3e761134b234385d687d8a/tenor.gif?itemid=27627539)


# SECURITY VULNERABILITIES IN SOLIDITY CONTRACT

Solidity is designed for the Ethereum virtual machine. Python, C++, and JavaScript influenced it. With Solidity, you can create contracts for crowdfunding, multi-signature wallets, and blind-voting auctions. As a result, Solidity is gaining more and more popularity.

## Contents
**Top 8 Solidity Smart Contract Vulnerabilities**
- Delegatecall
- Re-Entrancy
- Unexpected Ether Balance
- Arithmetic Over/Under Flows
- External Contract Reference
- Entropy Illusion
- Default Visibilities
- Parameter Attack/Short Address

## Top 8 Solidity Smart Contract Vulnerabilities
Solidity is in its infancy but has become widespread and is used to compile bytecode into various Ethereum smart contracts. Unfortunately, solidity developers often make certain mistakes that should be identified and prevented in time to avoid problems.

- Delegatecall
There is a special variant of calling a message called Delegatecall. It is a low-level function similar to Call. The opcodes of these two functions are very useful because they allow developers to break code into modules. However, code executing at the target address is executed in the context of the calling contract. The function implements libraries where developers create special reusable code for contracts. But unexpected code execution is possible. It should be noted that this is a very common problem.

Forcing libraries to be stateless reduces the complexity of the storage context. Stateless libraries can prevent attacks where criminals change the state of a library.

- Re-Entrancy
The name “re-entry” is chosen because the external malicious contract calls the special function of the vulnerable contract. The main characteristic of smart contracts is the ability to use the external contracts’ code. Contracts typically process Ether and send Ether to an external address.

This operation of sending Ether to the address or calling external contracts assumes that the contract has sent an external call. As known, these external calls can be intercepted by hackers, causing them to force the contract to perform a fallback function (i.e., additional code), including calls back into themselves. Executing the code “re-enters” the contract.

This hack can happen when a contract sends Ether to different unknown addresses. For example, a criminal can create a malicious contract on the external contract addresses that contain malicious code in its fallback function. When the contract sends Ether to a certain address, it causes malicious code.

Example: Decentralized Autonomous Organization.

Solution: You can use the “No re-entry” template or apply it to your privacy features.

- Unexpected Ether Balance
When the Ether is sent to the contract, it is called upon to perform a backup or any other function described in this contract. Therefore, contracts that rely on code execution for each Ether sent to the contract may be vulnerable to different attacks when Ether is forced into the contract.

Never assume that you can store the amount of Ether your contract owns in a state variable in response to received transactions. At best, you can keep the minimum amount he owns.

- Arithmetic Over/Under Flows
It is one of the major security concerns of Solidity at the moment. The EVM can support a fixed size for integer data types, and blockchain specialists can use a certain range of numbers to represent an integer variable. However, precautions must be taken when using variables in Solidity, as criminals can exploit this issue. Loss or overflow problems occur when you try to store a value that is out of range of the data type.

Under/overflow occurs when an operation requires a fixed-size variable to store a number that is out of range of the variable’s data type. These vulnerabilities allow criminals to misuse code and create different unexpected logic flows. A technique to protect against under/overflow vulnerabilities is to use or create math libraries that replace the standard math operators.

- External Contract Reference
It means that any entropy or randomness is impossible inside the blockchain ecosystem. One of the advantages of Ethereum is the ability to reuse code and interact with contracts deployed on the network. As a result, many contracts refer to external contracts and use external message calls to interact with the contracts. Unfortunately, external message calls can sometimes mask the perpetrators’ intentions.

How to Prevent such an Attack?

The code that calls external contracts should be carefully considered. When defining external contracts, you can make the addresses of the contracts public so that users can check which code the contract refers to. If the contract has a private variable address, this may be a sign of criminal behavior by a hacker.

- Entropy Illusion
Ethereum transactions are deterministic state transitions. A transaction changes the global state of the ecosystem. Achieving decentralized entropy is a key challenge.

How to Prevent these Errors? The entropy’s source must be external to the blockchain. It can be simply done among peers by changing the trust model for the members or using a commit-expand system. It can also be done using the centralized object.

Default Visibilities
The visibility of a function is public. So, anyone can execute it. Therefore, implementing a feature that external accounts should not run but forgot to set to private or internal visibility can cause problems.

- Visibility can determine whether a function can be called externally by different users, other derived contracts, externally or internally.

External users can call the functions that do not define visibility. However, the misuse of visibility specifiers can lead to devastating vulnerabilities in smart contracts. The problem arises when developers do not pay attention to visibility specifiers for functions that should be private.

Solution: Always define the visibility of functions and state variables. The contract must specify the visibility of all functions, even if they are public.

- Parameter Attack/Short Address
The hacker’s attack is performed on third-party applications, not solely on the Solidity contracts, which can interact with them. When passing parameters to a smart contract, the parameters are encoded according to the ABI specification. Therefore, sending encoded parameters shorter than the expected parameter length is possible. 

Verifying the inputs before sending them to the blockchain can prevent future hacker attacks. In addition, careful ordering of parameters will help mitigate forms of attack.

## How Can This Vulnerabilities be avoided.

1. Making Use of Audited Contract from trusted source e.g
- [Open Zepplin](https://docs.openzeppelin.com/contracts/4.x/wizard)
- [Third Web](https://portal.thirdweb.com/)

2. Auditing your Smart Contract to fix and ensure there are no vulnerabilities in your smart contract you can use trusted firms or auditing tools. 