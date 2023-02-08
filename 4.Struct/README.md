# SOLIDITY STRUCT
![Alt STRUCT](https://media1.tenor.com/images/7529babca1c017f7ad113ece89a09272/tenor.gif?itemid=27531161)

# What is Solidity struct ?
A struct is a creative data structure format in Solidity where variables of diverse data types can be bundled into one variable or a custom-made type.Once the data types are grouped into a struct, the struct name represents the subsets of variables in it.

**Imagine structs to be containers that contain different types of objects so when you move the container, all the items within it also move. Therefore, when a Solidity developer declares or calls the name of a struct, the struct responds in line with the data types within it.**

The following is an example of Solidity struct
>contract MyVault{
>		struct Vault{
>    		address creator;
>        string name;
>        address users;
>        uint amount;
>    }
>}

# How to Define and Create a struct in Solidity
Struct code is similar to how object decleration works in javascript, While the semblance is striking. the syntaxes work differently. A Solidity struct is always in the following format:

> struct name{
    string theWord;
    uint theFigure;
    bool polar;
}
>
## Here is how to define and create a Solidity struct
* Create a struct by writing the **struct keyword** which tells the Solidity complier that the preceding type is a custom type.

* Name the struct, which will be co-referential to the packed variables in the struct.

* Use curly brackets, because any other form of brackets such as a box or round brackets won't compile.
* Declare your data types along with their corresponding variables

**In the above example, these were string theWord, uint theFigure, and bool polarData. This is where you get to declare the subsets of your structs. After the struct is declared in the smart contract, we are able to call the name of the struct later in the code.**

# How to Declare a Solidity Struct
There are two places where you can declare structs: within a contract or outside a contract. Knowing where to declare your Solidity structs depends on what you want to do. Let us take a look at the two options of struct declaration.


## Declare a Struct Inside a Contract

in the above example , the  struct was declared inside the **Smart Contract** 
[Inside Struct](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/4.Struct/insideStruct.sol)

## Declare a Struct Outside a Contract

[Outside Struct](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/4.Struct/outsideStruct.sol)

In the above example, the struct was declared outside the smart contract, and all the contracts in the codebase can call it. It is best to declare a struct outside of a smart contract to create a more applicable struct for all of your contracts in contrast to individual contracts, which may have specific structs just for them. 

## How to Import a Solidity Struct 

Structs can be imported from one smart contract to another, which helps developers save time and create reusable code.
[importing Struct](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/4.Struct/import.sol)
