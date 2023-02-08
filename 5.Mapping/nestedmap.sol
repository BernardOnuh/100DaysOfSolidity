//SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Nestmap {
  mapping(uint256=>mapping(string=>uint256)) public User;

  function adduser(uint256 _Id, string memory _name, uint256 _age) public view returns(uint256) {
    return User[_Id][_name];
  }
}