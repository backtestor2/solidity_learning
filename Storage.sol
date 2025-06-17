// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 public number;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier isOwner() {
        require(msg.sender == owner, "Only contract owner can store data");
        _;
    }

    function store(uint256 _number) public isOwner {
        number = _number;
    }
}