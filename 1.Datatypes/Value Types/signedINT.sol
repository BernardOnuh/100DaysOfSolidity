//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SampleInt {
    int public myInt;
//Default int = uint256 but there is int8,16,32    
    int public myInt1 = -10;


    function setMyInt(int _myInt) public {
        myInt = _myInt; 
    }
 //int8 accept negative values 
    function incrementInt() public{
        myInt1++;
    }
}