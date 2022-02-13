// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.11;

import "ds-test/test.sol";
import "forge-std/Vm.sol";

import "../Contract.sol";

contract ContractTest is DSTest {

    Vm constant vm = Vm(HEVM_ADDRESS);

    Contract c1;

    function setUp() public {
        c1 = new Contract();
    }

    function testStateFailure(uint256 r) public {
        c1.init();
        assertTrue(false);
        c1.func1(r);
    }

}
