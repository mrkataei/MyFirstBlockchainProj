pragma solidity ^0.6.0;
contract SampleStorage {
    //this will get initialized to 0!
    uint256 public favoriteNumber;
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
}