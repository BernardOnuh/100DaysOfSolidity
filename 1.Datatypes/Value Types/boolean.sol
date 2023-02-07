//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SampleBool {
    bool public myBool;

    function setMyBool(bool _myBool) public{
        myBool = _myBool;
    }
}