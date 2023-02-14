## SOLIDITY FUNCTION VISIBILITY
![Visibility](https://media.tenor.com/images/d8bdf7c3b50752bb63ce514355f20efc/tenor.gif)
### What is Function visibility ?
The Function visibility feature in Solidity smart contract is used to ensure that when functions are specified,their level of accessibility, including public,external,internal and private are maintained as they were intended by the developers.

If a developer doesn’t use the right function visibility type, or if no visibility model is specified in their code, the contract's default public visibility is exposed to potentially exploitable security vulnerabilities. Apart from the security implications of not having function visibility specified, smart contracts might not work as intended since the functions will be working without proper instructions

### Who can call a smart contract function 
**There are three kid of contract that can call a function : the main contract itself, a contract inherited from the main contract (DerivedContract),and a third-party contract (OutsideContract).**

1. MainContract
>contract DerivedContract is MainContract {
      function newFunction() external {
          // call a function derived from the MainContract
          store(15);
     }
}
>
2. DerivedCotract
>contract DerivedContract is MainContract {
      function newFunction() external {
          // call a function derived from the MainContract
          store(15);
     }
}
>
3. OutsideContract
>contract OutsideContract {
      function functionOutside(address mainContractAddress) external {
            // here we send a message call to main contract 
            MainContract(mainContractAddress).store(15);
      }
}
>

### How do function visibility modifiers and inheritance work together ?

inheritance is when the contents of one contract are copied into another contract (a "derived contract") by using the "is" keyword, and the function modifier visibility works with a derived child contact according to the type of visibility a contract is Signed.
The relationship between function visibility modifiers and inheritance is explained below:

If the modifier of the ParentContract function is public, a ChildContract can access it.
If the modifier of the ParentContract function is internal, the ChildContract can access it.
If the modifier of the ParentContract function is private, the inheriting ChildContract cannot access it. 
If the modifier of the ParentContract function is external, the inheriting ChildContract cannot access it.

### How can function visibility modifiers help gas optimization 
**Because the parameters for external function visibility modifier are not saved to mermory, but read directly from calldata**In contrast public functions use input parameters are saved to mermory, which costs more gas to deploy a smart contract.

### What are function visibility modifiers
1. **Public**:A public function can be accessed by any of the three types of calling contracts: main contract, derived contract, and a third party contract. A function is public by default.
2. **External**:An external function is a function that can only be called by a third party. With the external function visibility, a contract that can call the function must be independent of the main contract and can not be a derived contract.
3. **Internal**:An internal function can be called by the main contract and any of its derived contracts. Internal functions are accessible from the main contract in which they were initially declared and by the contracts that extend from this main contract through inheritance.
4. **Private**:A private function can only be called by the main contract in which it was specified. Private functions are used initially according to common practice, but if the scope is wider than this modifier type, any other plausible modifier should be used.
[Example]()

### What is the difference between function and state variable visibility modifiers
The difference between function visibility modifiers and state variable visibility modifiers is that state variables do not have the external visibility modifier option. 

State variables are variables whose values are permanently stored in contract storage, which holds data persistently between function calls. Like function visibility modifiers, state variables also have visibility modifiers which are Public, Private and Internal. 

### State Variable Visibility Modifiers
1. **Public**
A state variable with the public modifier can be accessed by any contract in the application. If a variable is declared as public, the data stored in it can be read by the main contract, a derived contract, or an external contract. 

2. **Internal**
State variables declared with the internal modifier can only be accessed within the contract in which they were defined and by a derived contract. A third party or another external contract cannot access the storage of the data defined as an internal variable. 

3. **Private**
If a state variable is private, only the main contract in which they were declared can call them. The private visibility modifier restricts access from other parties apart from the main contract so that the data it holds is protected.

### What is the default variable visibility in Solidity?
When the variable visibility is not defined, the default value is internal. It is best practice to declare a variable as private until the scope widens.