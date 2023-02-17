# SOLIDITY EVENTS

![Alt SolidityEventss](https://media1.tenor.com/images/072d017be8066e91fe0019738acb6c69/tenor.gif?itemid=27572264)

Solidity events are crucial for smart contract developers because they allow smart contract to index variables in order to rebuild the storage stage,help to automatically update the user interface, and allow testing of specific variables.

## What is an event in Solidity?

**In Solidity, events are dispatched signals that smart cotract can fire** When you call events, they cause the arguments to be stored in the transaction's log, which is special data structure in the blockchain.

### What is the difference between events and functio in Solidity ?

While both functions and events accept arguments and can be called, functions modify smart contracts directly while events have the role of informing services outside of the blockchain to let users know that something has happened.

**Function in Solidity** allows developers to read, write, change and store data in the contract. You can pass arguments or parameters into a function. You can also call a function whenever it is needed in the code.

**Events** also accept arguments,but these are stored in the transaction's log which is in accesible to smart contracts. Contract data lives i the States trie and event data is stored in the Transaction Receipts trie, meaning contracts cannot read event data. 
Events are simply fired and forgotten.

Like functios, events can be callded. However, the emit keyword is used to call/dispatch events. This allows developers to kow when an event or a function is being called.

### What is the relationship between events and logs? 
The Ethereum Virtual Machine (EVM) has a logging function that is used to write data, including Solidity events, to a structure outside smart contracts. 

Logs and events are often referred to synonymously. Events allow you to ‘print’ information to the logging structure in a way that is more gas-efficient since the information is not stored in a storage variable, which takes up more gas. Events, or logs, live in the Transaction Receipts trie, which is inaccessible to smart contracts. 

### How are events indexed in Solidity?
Solidity events are interfaces with EVM logging functionality. You can add an attribute indexed to up to three parameters. Then they appear in the structure of topics, not the data portion of the log. When parameters do not have the indexed attributes, they are ABI-encoded into the data portion of the log.

### Solidity Event Types
There are two types of Solidity events: those which are indexed and those which are not. 

When parameters do not have the indexed attribute, they are **ABI-encoded** into the data portion of the log. These parameters form the byte array of the event. Data is encoded according to its type and can be decoded according to a schema. 

Indexed parameters are also known as “topics”, are the searchable parameters in events. The indexed parameters will allow you to search for these events using the indexed parameters as filters. You can add an attribute indexed up to 4 parameters or 3 parameters based on whether the events are anonymous or not, respectively. 

### How do events work in Solidity?
Solidity events are declared, emitted, and registered.

1. First, the event type has to be declared with the event keyword in Solidity. 
2. Next, the event has to be emitted with the keyword emit.
3. Anytime something in the blockchain changes, your program will automatically register this change and trigger the event 
**Note:** Emitting an event after declaration allows you to then ‘listen’ for the event from your application using libraries like Web3.js or Ethers.js. 

### How do you declare an event in Solidity?
The declaration of an event contains the name of the event and the parameters that you want to save when you trigger the event.

First, you have to declare an event in Solidity. Then, you emit the event with the keyword emit. 

The following is an example of how to declare an event: 



>event moneySent(address_from, address_to, unit_amount); 

The event, when triggered, will inform the external application that something on the blockchain has changed.

### How are events emitted in Solidity?
After the event is defined, you can trigger the event using the keyword emit. Once an event is emitted, the arguments passed are stored in transaction logs. 

The following syntax shows you how to use emit in Solidity:



>emit transfer(_from, _to, amount);

### How to Listen to Events in Solidity
**Once events are emitted, you can listen for them by subscribing to catch these events using ethers.js**. Then dApps, or anything connected to an Ethereum JSON-RPC API, can listen to these events and act accordingly.

SOLIDITY EVENT EXAMPLES.
[Solidity Event Example](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/10.Events/event.sol)