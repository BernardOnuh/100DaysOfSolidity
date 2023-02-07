# SOLIDITY VARIABLES
![Alt Variable](https://media1.tenor.com/images/75d17db47f9eaebd603f454f4558f398/tenor.gif?itemid=27529194)
# What is a Solidity Variable
A Variable is basically a placeholder for the data which can be manipulated at runtime. Variables allow users to retrieve and change the stored information. 

# Solidity Variable Syntax
* A variable name should not match with reserved keywords.
* Variable names must start with a letter or an underscore (_) and may contain letters from 'a to z' or 'A to Z' or digits from '0 to  9' and characters also.

* The name of variables are case sensitive 
e.g ` Bernard123 isn't same with bernard123 `

# Decleration of Variables

In Solidity declaratiojnof variables is a little bit different,to declare a variable the user has to specify data type first followed by access modifier.

# Syntax
<type> <access modifier> <variable name> ;

# Example 
`uint public uint_var `

# Types of Variables

Solidity is a statically typed language i.e. each declared variable always has a default value based on its data type, which means there is no concept of ‘null’ or ‘undefined’. Solidity supports three types of variables:

* State Variables:Values of these variables are permanently stored in the contract storage. Each function has its own scope, and state variables should always be defined outside of that scope.
- example : ` uint public state` default of uint is uint256.

* Local Variable: Values of these variables are present till the function executes and it cannot be accessed outside that function. This type of variable is usually used to store temporary values.

* Global Variable: These are some special variables that can be used globally and give information about the transactions and blockChain properties.