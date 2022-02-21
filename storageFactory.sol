// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;
// factory pattern
// every storage factory contract will create simple contract
import "./firstContract.sol";

contract StorageFactory {
    SimpleStorage [] public simpleStorageArray;
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);

    }
    function sfStore(uint _simpleStorageIndex, uint256 _simpleStorageNumber) public{
        //Address
        //ABI(application binary interface)
        // store with address
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        // use view function of simple storage object in simpleStorageArray
        // we find it with address key each object return it
        SimpleStorage simpleStorage = SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.retrieve();
    }
}
