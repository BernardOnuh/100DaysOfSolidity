# Error Handling

![Alt HandlErrors](https://media1.tenor.com/images/534927f71d8395601c3a91993d1d4666/tenor.gif?itemid=27592714)

## Error Handling
Solidity uses state-reverting exceptions to handle errors, and such an exception will undo all changes made to the state in the current call and simultaneously flag an error to the caller.

## What are the three main Solidity error handling functions?

**Error handling in Solidity is managed in principle by three special functions: assert, require, and revert.**
Until version 4.10, a single throw statementwas available in Solidity.

Solidity has been designed to target the Ethereum Virtual Machine (EVM) and is influenced by C++, Javascript, and Python, due to its curly-bracket language. Using Solidity, developers can create contracts for uses such as voting, crowdfunding, multi-signature wallets, and even blind auctions.

In practice, this means that a developer had to write several test functions in order to check underlying values and throw errors, which is not optimized for gas. In the release of Solidity version 4.10, new error handling constructs, asset, require, and revert, were introduced and the throw was made absolute.

### What is the require function?
The require function is used to verify inputs and conditions before execution. For instance, if the condition is false, then the require function immediately stops execution. In other words, require acts as a gate check modifier, preventing logic from accessing further execution of function and thereby producing an error. Require is ideal for logic flow gating and validating user inputs on functions.  

Require statements declare prerequisites for running the function, which should be satisfied prior to code execution. The require function accepts a single argument and after evaluation, require returns a boolean value of true or false. In the event that the execution is terminated due to a false condition, the unused gas is returned to the caller and the state is reversed to the original state. Customer string messages can also be added.

Here is an example of a require statement in Solidity:

> require(sum ==10,'Incorrect number passed in! Try again');

> require(msg.sender == owner, 'Only the owner of this contract can call this function!');

**Require Statement Use Cases**
For pragmatic reasons, developers could use require for the following scenarios:

1. Validating responses from an external contract 
2. Verify state conditions before final execution
3. Authenticate user inputs

### What is revert statement?
**Revert does not evaluate any condition and does not depend on any state or statement.**
The revert statement is similar to the require statement in that the revert function can handle the same error types as the require function, but it is more appropraite for complex logic gates.

if a revert ststement is called, the unused gas is returned and the state reverts to its original state.
The ability to add custom message is the  same as the require function.

Here is an example of a revert statement in Solidity:
> revert('Something funky has occured');

### What is the assert function? 
Assert is a function that is used to check for code that should never be false, and plays an important role in preventing impossible scenarios. If the assert function returns a boolean value of true, then a terminal bug will be displayed and the programs will not execute.

In contrast to the require and revert functions, assert does not return any unused gas and instead, the assert function will consume the gas supply before proceeding to reverse the program to its original state. Interestingly, prior to the Byzantium fork, both the require and assert functions behaved in an identical manner, however, compiled to distinct opcodes.

**Assert Type Exceptions**
1. A value is modulo or divided by zero
2. A zero-initialized variable of a function is called 
3. A negative or large value is converted to an enum 
4. Accessing an array within an index that is negative or larger than expected 

> assert(num >=0);

**Assert Statement Use Cases**
In theory, assert should be used less frequently compared to the require function. Developers should consider using the assert function for the following use cases: 

1. Validating the contract state after making changes 
2. Avoiding conditions which should never be possible 
3. Checking for overflow and underflow parameters 
4. Examining invariants

### Require vs. Revert vs. Assert
Here is a summary that provides a succinct description of all all three Solidity error handling functions: require, revert, and assert.

**Require**
- Used at the beginning of a function 
- Validates against illegal input 
- Verifies state conditions prior to execution
- Refunds leftover gas 

**Revert**
- Identical to require 
- Useful for more complex logic flow gates (i.e., complicated if-then blocks) 
- Refunds leftover gas
**Assert**
- Used at the end of a function
- Validates something that is impossible 
- Critical for static code analysis tools 
- Does not refund leftover gas