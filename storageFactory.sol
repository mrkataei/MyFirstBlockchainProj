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
}
