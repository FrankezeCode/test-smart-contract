// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract Mapping {

    
    // Define a mapping from address to uint
    mapping(address => uint) public   balances;

    // Function to set the balance for a specific address
    function setBalance(address _address, uint _balance) public {
        balances[_address] = _balance;
    }

    // Function to get the balance of a specific address
    function getBalance(address _address) public view returns (uint) {
        return balances[_address];
    }

}