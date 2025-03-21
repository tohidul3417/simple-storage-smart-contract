// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; // Solidity version

contract SimpleStorage {
    // Favorite number
    uint256 public myFavoriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    mapping(string => uint256) public personToFavoriteNumber;

    Person[] public listOfPeople;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        retrieve();
    }

    function retrieve() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_name, _favoriteNumber));
        personToFavoriteNumber[_name] = _favoriteNumber;
    }
}