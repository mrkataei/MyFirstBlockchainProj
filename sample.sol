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
    People [] public people; // dynamic array - fix array people[2]
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256){
        return favoriteNumber; // read some state - getter function like
    }
    function process(uint256 _favoriteNumber) public pure{
        _favoriteNumber + _favoriteNumber; // not saving state anywhere
    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        // push to array
        // people.push(People({ _favoriteNumber, _name}));
        // memory , storage  keys for save data on memory(only during the exe contract call)
        //or storage(data exists after exe on storage) -> for strings because of they are
        // objects (array of bytes)
    }
}