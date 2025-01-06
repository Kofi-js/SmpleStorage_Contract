// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18

import {SimpleStorage} from "./SimpleStorage.sol"

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContracts() public {
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);

    }

    function sfGet (_simpleStorageIndex) public view returns(uint256){
        listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }

}