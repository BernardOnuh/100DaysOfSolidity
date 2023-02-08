//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Variables {
  //State variable are stored on the blockchain.
  string public text ='Hello';
  uint public num = 123;

  function  doSOmething() public {
    //Local variables are not saved to the blockchain.
    uint i =465;

    //Here are some global variable
    uint timestamp = block.timestamp; //Current block tinestamp
    address sender = msg.sender ; //address of the caller
  }
}