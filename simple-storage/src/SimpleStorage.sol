// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleStorage {
    uint256 storedData;
    address public owner;

    event valueStored(address indexed valueStorer, uint256 indexed storedValue);
    event ownershipTransferred(address indexed oldOwner, address indexed newOwner);

    error NotOwner(address caller);

    constructor() {
        owner = msg.sender;
    }

    function store(uint256 favoriteNumber) public {
        if (owner != msg.sender) revert NotOwner(msg.sender);
        storedData = favoriteNumber;
        
        emit valueStored(msg.sender, favoriteNumber);
    }

    function get() public view returns (uint256) {
        return storedData;
    }

    function transferOwnership(address newAddress) public {
        if (owner != msg.sender) revert NotOwner(msg.sender);
        emit ownershipTransferred(msg.sender, newAddress);
        owner = newAddress;
    }
}