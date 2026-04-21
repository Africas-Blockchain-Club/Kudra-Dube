SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

abstract contract BaseAnimal {
string public name;

constructor (string memory _name) {
name = _name;
}

function describe () public view returns (string memory) {
return name;
}

function eat () external virtual;

}