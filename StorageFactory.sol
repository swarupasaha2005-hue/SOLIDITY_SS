//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./SimpleStorage.sol";  
//import {SimpleStorage} from "./SimpleStorage.sol"; incase you want any specific contract from the prev one

contract StorageFactory{

    //uint256 public favoriteNumber
    //type visibility name
    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
        simpleStorage = new SimpleStorage();
    }
}

