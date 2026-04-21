SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IAnimal {

function speak (string memory returnedString) external returns (string memory);
function move (string memory stringReturned) external returns (string memory);
}