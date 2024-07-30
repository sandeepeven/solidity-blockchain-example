// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    function storeFavouriteNumber(uint256 _favouriteNumber) public override {
        favouriteNumber = _favouriteNumber * 2;
    }
}