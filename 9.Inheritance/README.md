## INHERITANCE SOLIDITY
![Inheritance Solidity](https://media1.tenor.com/images/1f1ff38d5aabe5cd34e762ce9866e7c3/tenor.gif?itemid=27567652)

### Inheritance
Solidity supports inheritance between smart contracts, where multiple contracts can be inherited into a single contract. The contract from which other contracts inherit features is known as a **base** contract, while the contract which inherits the features is called a **derived** contract. Simply, they are referred to as parent-child contracts. The scope of inheritance in Solidity is limited to public and internal modifiers only. Some of the key highlights of Solidity are:
- A derived contract can access all non-private members including state variables and internal methods. But using this is not allowed.
- Function overriding is allowed provided function signature remains the same. In case of the difference of output parameters, the compilation will fail.
- We can call a super contract’s function using a super keyword or using a super contract name.
- In the case of multiple inheritances, function calls using super gives preference to most derived contracts.

### Solidity provides different types of inheritance.

1. **Single Inheritance**
In Single or single level inheritance the functions and variables of one base contract are inherited to only one derived contract.

Example: in this example, the contract parent is inherited by the contract child, to demonstrate [SINGLEINHERITANCE](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/9.Inheritance/singleinheritance.sol)

2. **Multi-level Inheritance**
It is very similar to single inheritance, but the difference is that it has levels of the relationship between the parent and the child. The child contract derived from a parent also acts as a parent for the contract which is derived from it.

Example: In this example, contract A is inherited by contract B, contract B is inherited by contract C, to demonstrate [Multi-levelInheritance.](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/9.Inheritance/MultiLevelinheritance.sol).

3. **Hierarchical Inheritance**
In Hierarchical inheritance, a parent contract has more than one child contracts. It is mostly used when a common functionality is to be used in different places.

Example: In this example, contract A is inherited by contract B, contract A is inherited by contract C, thus demonstrating [HierarchicalInheritance](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/9.Inheritance/heiricalinheritance.sol).

4. **Multiple Inheritance**
In Multiple Inheritance, a single contract can be inherited from many contracts. A parent contract can have more than one child while a child contract can have more than one parent.

Example: In the below example, contract A is inherited by contract B, contract C is inheriting contract A, and contract B, thus demonstrating [MultipleInheritance.](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/9.Inheritance/multipleinheri.sol)