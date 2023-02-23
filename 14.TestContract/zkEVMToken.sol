// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract zkToken is ERC20, Ownable {
    constructor() ERC20("zkToken", "ZKT") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }
    function mint(address to, uint256 amount) public onlyOwner {
            _mint(to, amount);
    }
    
}