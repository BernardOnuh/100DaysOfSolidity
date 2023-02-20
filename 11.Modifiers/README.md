# SOLIDITY MODIFIERS

![Alt Modifiers](https://media1.tenor.com/images/9975421816f7247c9f75f25a76ab074f/tenor.gif?itemid=27587373)

## What is a Solidity Modifier ?
A modifier is a special type of Solidity function that is used to modify the behavior of other functions. For example, developers can use a modifier to check that a certain condition is met before allowing the function to execute. 

Modifiers are similar to functions, in that they can take arguments and have a return type. Modifiers can also be chained together, meaning that you can have multiple modifiers on a single function. 

However, modifiers can only modify contract logic, and they cannot modify a contract’s storage, which includes structs. Modifiers reduce the amount of boilerplate code that developers have to write, and can make your Solidity code more readable.

## Can you have multiple modifiers on Solidity functions?
Yes, **developers can use multiple modifiers on a single Solidity function**. Multiple modifiers are separated by commas. One important thing to note about using multiple modifiers is that the order of modifiers matters. The first modifier in the list will be executed first, the second modifier will be applied second, and so on. 

For example, if you have a modifier that checks if a user is authenticated and another modifier that checks if a user is authorized to view a certain resource, then the order in which those modifiers are applied will determine whether or not a user is able to view the resource. 

## What are the different types of Solidity modifiers?
There are four broad categories of Solidity modifiers: gate checks, prerequisites, filters, and reentrancy attack prevention.

1. Gate Checks
**A "gate check" is a modifier that checks if a certain condition is true before allowing a function to execute.** 

For example, you might have a function that allows a user to withdraw money from their account, but before the function executes, a developer might want to check if the user has enough money in their account to make the withdrawal. That check is considered a gate check modifier. 

Another example of a gate check is a function that checks if a user is authenticated before allowing them to view a certain resource. 

2. Prerequisites
**A "prerequisite" is a modifier that sets up the environment for a function to execute, rather than checking if a certain condition is true.**

For example, a Solidity developer might use a function that requires a certain amount of Ether to be sent along with it in order to execute. In that case, the prerequisite would be the function that sets up the Ether balance. 

3. Filters
**A "filter" is a modifier that checks if a certain condition is true, and, if it is, allows the function to execute. If the condition is not true, then the function will not execute.**

Unlike a gate check, which will not automatically allow the function to execute even if the condition is true, a filter will allow the function to execute if the condition is true. 

4. Reentrancy Attack Prevention
**A reentrancy attack is a type of attack where a malicious actor tries to execute a function multiple times, via a recursive call, in order to exploit it.**

For example, imagine that you have a function that allows a user to withdraw money from their account. A reentrancy attacker might try to call that function multiple times to withdraw more money than they actually have in their account. 

To prevent reentrancy attacks, you can use a modifier that checks if the function is being called recursively. If it is, then the function will not execute.

## What is the relationship between require and Solidity modifiers?
Require is often used interchangeably with modifiers, since they both allow you to check if a certain condition is true before allowing a function to execute. If the specified condition is not true, then the compiler with throw an error.

For instance, the following statement uses the require keyword so that only an owner can interact with a function:



>require(msg.sender == owner)

Using a modifier can achieve the exact same result, which would look like this: 

>modifier onlyOwner() {
 >   require(msg.sender == owner);
>  _;
>}

There are some important differences between require and Solidity modifiers:

1. Modifiers can be used to set up the environment for a function to execute (as in the case of prerequisites)
2. Require can only be used to check if a certain condition is true
3. Modifiers can be overridden‍
4. Require cannot be overridden

## What is modifier overriding?
**The keyword "virtual" can be used to indicate that a modifier can be overridden in a derived contract.** For example, imagine that you have a contract "Base Contract" with a modifier "myModifier". You also have a contract "Derived Contract" that inherits from "Base Contract". 

If "Base Contract" is marked as "virtual", then it can be overridden in the derived contract. This is often used in the context of libraries, where a contract allows for customization. 

## How do modifiers work with inheritance?
Inheritance lets you extend a contract's attributes and properties, and in the context of modifiers, inheritance allows you to add new modifiers, or override existing ones. This can be done with the keyword virtual which was discussed in the previous section. 

The simple implementation below demonstrates how inheritance and modifiers work together:



>contract A {
>modifier X virtual {
>}
>}

>contract B is A {
>modifier X override {
>}
>}

In this example, contract B inherits from contract A. Both contracts have a modifier called "X". However, in contract B, the modifier is marked as "override", which indicates that it overrides the modifier in contract A.

## How to Use a Modifier in Solidity
When using a modifier, you first need to define the modifier function in a contract. Modifiers use a special symbol “_;” where the function body is inserted only if the condition of the modifier is satisfied.

The contract below demonstrates how to use a modifier:

[Example](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/11.Modifiers)