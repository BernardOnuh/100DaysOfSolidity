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
