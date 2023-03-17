// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "fevmate/token/WFIL.sol";

contract WFILScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        address deployerAddr = vm.addr(deployerPrivateKey);
        address wFILOwner = vm.envAddr("WFIL_OWNER");

        vm.startBroadcast(deployerPrivateKey);
        WFIL wFIL = new WFIL(wFILOwner);

        vm.stopBroadcast();
    }
}
