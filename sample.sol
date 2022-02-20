pragma solidity ^0.6.0;
contract SampleStorage {
    //this will get initialized to 0!
    uint256 favoriteNumber;
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256){
        return favoriteNumber; // read some state - getter function like
    }
    function process(uint256 _favoriteNumber) public pure{
        favoriteNumber + _favoriteNumber; // not saving state anywhere
    }
}