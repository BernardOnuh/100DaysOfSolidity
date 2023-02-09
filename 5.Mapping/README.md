# SOLIDITY MAPPING

![Alt Mapping](https://media.tenor.com/images/f30ee8bed73e86da490741dacb532c3c/tenor.gif)

# What is Solidity Mapping

Mappings in Solidity are hash tables that store data as key-value pairs, where the key can be any of the built-in data types supported by Ethereum. Mappings are a fundamental concept to understand when learning Solidity development.

This article explains what mappings are, how mappings work, the differences between mappings and arrays, and provides examples of mappings so you can develop the best smart contracts on Ethereum and Solidity-compatible blockchains like Optimism and Arbitrum

## What is a hash table?
**A hash table is a data structure that stores data associatively. Data is kept in an array format in a hash table, with each data value having its own unique index value.**
Hash Tables use an array as a storage medium and employ the hash technique to establish an index from which an element is to be inserted or located.
![Alt Mapping](https://miro.medium.com/max/640/1*H415ldFYnS2aRTx1YIQiKg.webp)

When the index of the needed data is known, it can get returned extremely quickly. As a result, hash tables are data structures in which insertion and search operations are extremely quick, regardless of the quantity of the data.

## What is the difference between hash tables and Solidity mappings?
Mappings function as hash tables, with key types and corresponding value type pairs, and mappings are valuable because they can hold a large number of _KeyTypes to _ValueTypes. Mappings do not have a length, nor do they have the concept of setting a key or a value. Mappings are only applicable to state variables that serve as store reference types. When mappings are initialized, they include every possible key, and are mapped to values whose byte-representations are all zeros.

Mappings are defined in Solidity in the same way as any other variable type: `mapping(address => uint) public userLevel;`

## What is the difference between Solidity arrays and mappings?

Solidity arrays are better for iterating through a group of data (e.g. using a for loop), compared to mappings which are better when you will be able to obtain values based on a known key (i.e. you don't need to go over data).

Because iterating over an array in Solidity can be expensive compared to fetching data from mappings, and developers may want to store both a value and its key within a smart contract, developers sometimes create an array of keys that serve as a reference to data that can then be retrieved from inside a mapping.

Developers should never let an array in Solidity grow too large because iterating through a large array could cost more in Solidity gas fees than the transaction's value, making **mappings a more gas efficient smart contract implementation.**

### Here are some additional qualities about mappings:

* Mappings have no length.
* Mappings also don't understand the concept of a key or a value being set.
* Mappings can only be used for state variables that serve as storage reference types

## What is a nested mapping? 

Nested mapping is mapping from one mapping to another. For example, if we have a username and age and want to store this information with the assistance of a special ID so that others can only get it with the aid of that ID, this is known as double mapping in Solidity.

Here is one nested mapping example:
[Nested](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/5.Mapping/nestedmap.solhttps://github.com/BernardOnuh/100DaysOfSolidity/blob/main/5.Mapping/nestedmap.sol)

In this contract, we built one nested mapping, which is referred to as a User. In that mapping, we linked two mappings:

* one for recording the information about the id of the specific user
* one for storing the name and age of the specific user.

# How to Use Mapping in Solidity
Here is an example of using mappings in Solidity. The following code snippet functions are:

* Mapping from address to uint and ensures the mapping always returns a value
* If the value was never set, it will return the default value.
* Updating the value at the mapped address
* Resetting the value to the default value.
* Creating a nested mapping from address to another mapping
* Getting values from a nested mapping even when it is not initialized

[Mapping Example](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/5.Mapping/mapping.sol)