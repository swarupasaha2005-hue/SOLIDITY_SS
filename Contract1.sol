//SPDX-License-Identifier: MIT
pragma solidity 0.8.30; //version

contract SimpleStorage{
    
    uint public favoriteNumber; //bu default the value will be 0
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        favoriteNumber = favoriteNumber+12;
    }
}