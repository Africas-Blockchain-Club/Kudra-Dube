//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./Ownable.sol";

contract SimpleStorage is Ownable {
 uint256 storedData;

event valueStored (address indexed storer, uint256 storedNumber);

function store (uint256 favoriteNumber) public {
 if (owner != msg.sender) revert NotOwner (msg.sender);
 emit valueStored (msg.sender, favoriteNumber);
}

function get () public view returns (uint256) {
 return storedData;
}
}