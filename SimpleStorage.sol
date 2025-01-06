// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18

contract SimpleStorage {
    uint256 myFavoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function Store (uint256 _myfavoriteNumber) public virtual{
        myFavoriteNumber = _myfavoriteNumber;
    }
    function retrieve () public view returns(uint256) {
        return myFavoriteNumber;
    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}