// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {

    uint256 favouriteNumber;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;

    mapping (string => uint256) public nameToFavouriteNumber;

    function storeFavouriteNumber(uint256 _favouriteNumber) public virtual  {
        favouriteNumber = _favouriteNumber;
    }

    function addPerson(uint256 _favNumber, string memory name) public {
        people.push(People(_favNumber, name));
        nameToFavouriteNumber[name] = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }
}
