//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Ownable {
address public owner;

event ownershipTransferred (address indexed oldOwner, address indexed newOwner);

error  NotOwner (address caller);

constructor () {
owner = msg.sender;
}

function transferOwnership (address newAddress) public {
 if (owner != msg.sender) revert NotOwner (msg.sender);
 emit ownershipTransferred (msg.sender, newAddress);
 owner = newAddress;
}
}
