pragma solidity ^0.6.0;
contract SampleStorage {
    //this will get initialized to 0!
    // define var -> type visibility name
    uint256 favoriteNumber;
    struct People {
        // like object , different types
        uint256 favoriteNumber;
        string name;
    }
    People public person = People({favoriteNumber:2, name: "kourosh"}); // create object
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