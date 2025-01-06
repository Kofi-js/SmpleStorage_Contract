// SPDX-License-Identifier: MIT

import {SimpleStorage} from "./SimpleStorage.sol"

pragma solidity ^0.8.18

contract AddThree is SimpleStorage{

    function store(uint256 _newFavoriteNumber) public override {
        myFavoriteNumber = _newFavoriteNumber + 3;
    }


}