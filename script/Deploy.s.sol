// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "fevmate/token/WFIL.sol";

contract WFILScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        WFIL wFIL = new WFIL();
    }
}
