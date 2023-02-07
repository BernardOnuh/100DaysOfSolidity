//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SampleUint {
    uint public myUint;
//Default uint = uint256 but there is uint8,16,32    
    uint8 public myUint8 =250;


    function setMyUint(uint _myUint) public {
        myUint = _myUint; 
    }
 //Uint8 accept values that are  less than 256   
    function incrementUint8() public{
        myUint8++;
    }
}