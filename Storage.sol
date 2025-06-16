// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Storage {
    uint256 public number;

    function store(uint256 _number) public {
        number = _number;
    }
}