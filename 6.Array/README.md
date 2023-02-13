# SOLIDITY ARRAY
![Alt Array](https://media.tenor.com/images/e22e34423109766b7a4f7f8629d07b1c/tenor.gif)
## What is Array
Arrays are linear data structures that store a fixed-size of elements of the same data types which are stored in contiguous and adjacent memory locations. Each and every element in the array is specified by its location, commonly known as its index.

Arrays work on an index-based system, starting from 0 to (n-1), where n represents the overall size of the array. As opposed to creating several individual variables of the same type, developers only need to declare one array of their preferred size to store elements which can be accessed using the index.

## What are dynamic and fixed arrays?
**This size of dynamic arrays are not predefined when they are declared, in contrast to fixed arrays which have predefined size**
As elements are systematically added, the size of the dynamic array changes, and during runtime, the actual size of the array will be determined.

In contrast, fixed arrays have a predefined size, and the quantity of elements present in the array should not exceed the size of the array. In rare circumstances where the size of the array is not specified, then an array of ‘enough size’ is created. An array of "enough size" which is ‘enough’ to hold the initialization.

## Storage Arrays vs. Memory Arrays
in Solidity, there are two types of arrats that developers need to consider : Storage and Mermory arrays.

### Storage Arrays
Storage arrays are typically declared as state variables and ca be either fixed or dynamic in size. it's important to note that storage arrays with dynamic length can be resized, which means that they have access to both push() and pop() functions, which enable addition and reduction of elements from the array, respectively.

### Mermory Arrays
Memory Arrays
Memory arrays are declared with memory as their data location. Similar to storage arrays, memory arrays can also have either fixed or dynamic length, however, they cannot be resized. This means that the pop() and pull() Solidity functions cannot be used. In fact, the size of the array needs to be calculated beforehand.

**Note**: always initialize the array before using it so that you can obtain a valid address for use

### Solidity Arrays vs. Mapping 
Mapping in Solidity is similar to an array in that it’s a reference type meant for storing a group of data. The syntax and structure of mappings is quite different, which enables it to serve a unique and important purpose. Mapping is a table of keys and values, each having its own pre-defined type. Mapping can be perceived as initiating an empty table that exists inside of a Solidity smart contract, waiting to be filled with data. 

Unlike an array, a mapping does not have a retrievable length nor does the key or value have to be ‘set’ from the initialization stage. In addition, it’s not possible to loop through a mapping as it is possible to do with Solidity arrays.

However, retrieving a piece of data from a mapping is far more efficient than fetching the same data from an array. To fetch data from an array requires iterating over the whole array until you find the particular element you’re looking for, but a mapping will grab that data immediately.

The performance benefits of retrieving data from mappings can be quite important for saving gas with Ethereum smart contracts, given that transactions that edit data on the blockchain require gas fees. Therefore, storing or retrieving data from a smart contract as efficiently as possible can save developers ETH over time. 

**In summary**, if you need to iterate over a group of data, using let’s say a for loop, then use an array. If there’s no need to iterate over a set of data, and instead you can retrieve values based on a known key, then consider using mapping.    

### Declaring and Initializing an Array 

Declaring an array in Solidity is relatively simple. The data types of the elements and the number of elements should be specified, the size of the array should be a positive integer, and the data type should be valid on Solidity.

For example, the basic instruction below would initialize the array and once data has been inserted, it would appear on the console.log: 

><initialization> = <insert data type> <insert array >name> [size]

Each item in the array is called an element, and each element can be accessed using its numerical index through the function “n - 1”, where n represents the element number.

In general, numbering associated with elements begins at 0. This would mean that the 10th element would be accessed at index 9, the 11th element at index 10, etc.

The restriction related to the same data type is important to remember because arrays are stored in consecutive memory cells, which implies that every cell must be of the same type and therefore, the same size. 

[Example]()

### Mappings
Mappings can be thought of as key and value stores where every possible key exists and any value can be set or retrieved in one move with the key. The KeyType can be any built-in value type (i.e., bytes, string, or any contract/enum type). The ValueType can be any type including mappings, arrays, and structs.

Mappings can be declared as follows: 

mapping(<insert KeyType> ⇒ <insert ValueType>) <insert VariableName>

Note: that the only data location permitted for mapping variables is storage.
[Example](https://github.com/BernardOnuh/100DaysOfSolidity/blob/main/5.Mapping/mapping.sol)
**Members**
To find a specific member of an array means searching the array until the member is found. Developers should be aware of two important functions: length and push.

‍Length - returns the size of the array and can also be used to change the size of a dynamic array.
‍Push - enables developers to append an element directly at the end of a dynamic storage array, and as a result, returns the new length of the array. 

### Troubleshooting Solidity Arrays

Occasionally, developers may encounter compilation errors, which can arise from misunderstanding the rules for declaring, creating, and initializing arrays. Here are some high-level ways to troubleshoot common errors with Solidity arrays: 

1. array.length
The array.length function allows developers to check the number of elements present in the array. The size of the memory array is fixed when they are declared, while in case the dynamic array is defined at runtime so for manipulation, length is required. 

2. abi.encode and abi.encodePacked
When a function is called on an external contract, the EVM computes a bytes buffer which contains the function signature and arguments, and there are two ways to serialize arguments: abi.encode and abi.encodePacked.

Abi.encode encodes its parameters using the ABI specs. Effectively, the ABI was designed to make calls to contracts, where parameters are padded to 32 bytes. If calls are being made to a contract, this function is most likely being used.

Comparatively, abi.encodePacked encodes its parameters using the minimal space required by the type. Encoding an unit8 will use 1 byte, and it is used when you want to save some space and don’t intend to call a contract. 

3. byte[] or bytes
‍Both array types can hold an arbitrary length of raw byte data.The difference between the byte[] and bytes is that byte[] follows the rules of the array type, and elements in memory arrays in Solidity always occupy multiples of 32 bytes. This means that if an element has less than a multiple of 32 bytes, it will be padded until it fits the necessary size. For example, 31 bytes could be wasted for each element in the case of the byte array, which does not occur when using the bytes array or string. 

4. string
‍This particular dynamic array is a UTF-8 data type and dissimilar in functionality when compared to other programming languages, Solidity does not provide functions to get the length of the string or to carry out concatenation or comparison of two strings. A string can be quickly converted to a byte array using bytes[<insert string>].

5. Solidity array null
‍Although the inherent concept of undefined, null, nil, none, etc. exists in other programming languages such as Python and JavaScript, it does not exist in Solidity. Instead, developers can call it zero or default value concept because each value gets a slot in memory once it has been created and therefore, it should contain something. 