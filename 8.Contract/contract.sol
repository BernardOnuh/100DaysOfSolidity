//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract aboutUS{
    //cotract name aboutUS  declared.
    string  name;
    //The string will take the name value
    uint age;
    // The uint will take the age

    function setName (string memory myname) public{
        //string is a refrence datatype it is stored in the mermory
        name=myname;
        }
     function getName() view public returns (string memory){
         return name;
     }   

    function setAge(uint _age) public{
        age=_age;
    }
    function getAge() view public returns (uint) {
        return age;
    }
}