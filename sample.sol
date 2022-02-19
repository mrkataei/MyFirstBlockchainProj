pragma solidity ^0.6.0;
contract SampleStorage {
    int ds = 0;
    function set_ds(int _ds) public {
        ds = _ds;
    }
}