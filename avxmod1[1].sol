// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract hemadri is ERC20 {
    address public owner;
    constructor(string memory name, string memory symbol, uint initialSupply) ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");//using require
        _;
    }
    function mint(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }
    function transferTokens(address to, uint amount) public {
        assert(amount!=0);//using assert
        if (amount > balanceOf(msg.sender)) {
            revert("Not enough balance to transfer");//using revert function
        }
        _transfer(msg.sender, to, amount);
    }
}
