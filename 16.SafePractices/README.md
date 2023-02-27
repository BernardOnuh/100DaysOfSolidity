# BEST PRACTICES FOR WRITING SOLIDITY CONTRACT

![Alt Solidity](https://media1.tenor.com/images/5ad02021126f6b96135d0ea9d0e0b1b6/tenor.gif?itemid=27622719)

## BEST PRACTICES FOR WRITING SMART CONTRACT SECURITY

If you’ve taken the **smart contract security mindset** to heart and are getting a handle on the **EVM’s idiosyncrasies,** it’s time to consider some security patterns that are specific to the Solidity programming language. In this roundup, we’ll focus on secure development recommendations for Solidity that may also be instructive for developing smart contracts in other languages. 

Okay, let’s jump in,

## Use assert(), require(), revert() properly

The convenience functions assert and require can be used to check for conditions and throw an exception if the condition is not met.

- The **assert** function should only be used to test for internal errors, and to check invariants.
- The **require** function should be used to ensure valid conditions, such as inputs, or contract state variables are met, or to validate return values from calls to external contracts. 

Following this paradigm allows formal analysis tools to verify that the invalid opcode can never be reached: meaning no invariants in the code are violated and that the code is formally verified.

[Example](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/12.HandleErrors)

## Use modifiers only for checks

The code inside a modifier is usually executed before the function body, so any state changes or external calls will violate the Checks-Effects-Interactions pattern. Moreover, these statements may also remain unnoticed by the developer, as the code for modifier may be far from the function declaration.
[Best Way to Use Modifiers](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/11.Modifiers)

## Be aware of the tradeoffs between abstract contracts and interfaces
Both interfaces and abstract contracts provide one with a customizable and re-usable approach for smart contracts. Interfaces, which were introduced in Solidity 0.4.11, are similar to abstract contracts but cannot have any functions implemented. Interfaces also have limitations such as not being able to access storage or inherit from other interfaces which generally makes abstract contracts more practical. Although, interfaces are certainly useful for designing contracts prior to implementation. Additionally, it is important to keep in mind that if a contract inherits from an abstract contract it must implement all non-implemented functions via overriding or it will be abstract as well.

## Fallback functions
Keep fallback functions simple
Fallback functions are called when a contract is sent a message with no arguments (or when no function matches), and only has access to 2,300 gas when called from a .send() or .transfer(). If you wish to be able to receive Ether from a .send() or .transfer(), the most you can do in a fallback function is log an event. Use a proper function if a computation of more gas is required.
[Best way to use Fall back Function](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/2.SolidityFunctions)


## Explicitly mark visibility in functions and state variables
Explicitly label the visibility of functions and state variables. Functions can be specified as being external, public, internal or private. Please understand the differences between them, for example, external may be sufficient instead of public. For state variables, external is not possible. Labeling the visibility explicitly will make it easier to catch incorrect assumptions about who can call the function or access the variable.

- External functions are part of the contract interface. An external function f cannot be called internally (i.e. f() does not work, but this.f() works). External functions are sometimes more efficient when they receive large arrays of data.
- Public functions are part of the contract interface and can be either called internally or via messages. For public state variables, an automatic getter function (see below) is generated.
- Internal functions and state variables can only be accessed internally, without using this.
- Private functions and state variables are only visible for the contract they are defined in and not in derived contracts. Note: Everything that is inside a contract is visible to all observers external to the blockchain, even Private variables.

[Best way to use Visibility for your SmartContract](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/7.Visibility)

## Lock pragmas to specific compiler version
Contracts should be deployed with the same compiler version and flags that they have been tested the most with. Locking the pragma helps ensure that contracts do not accidentally get deployed using, for example, the latest compiler which may have higher risks of undiscovered bugs. Contracts may also be deployed by others and the pragma indicates the compiler version intended by the original authors.

## Use events to monitor contract activity
It can be useful to have a way to monitor the contract’s activity after it was deployed. One way to accomplish this is to look at all transactions of the contract, however that may be insufficient, as message calls between contracts are not recorded in the blockchain. Moreover, it shows only the input parameters, not the actual changes being made to the state. Also events could be used to trigger functions in the user interface.
[Best Way to Use Events](https://github.com/BernardOnuh/100DaysOfSolidity/tree/main/10.Events)