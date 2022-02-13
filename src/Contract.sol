// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

contract Contract{

    error AlreadyInitialized();

    bool initialized = false;

    uint256 z;

    constructor(){
    }

    function init() external {
        if(initialized) {
            revert AlreadyInitialized();
        }
        initialized = true;
    }

    function func1(uint256 _z) external returns(uint256) {
        z = _z;
        return z;
    }

}
