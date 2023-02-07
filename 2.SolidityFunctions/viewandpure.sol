//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ViewAndPure {
    uint public x = 1;

    // Promise not to modify the state.
    //Public a type of visibilityFunction.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    //Public a type of visibilityFunction.
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}