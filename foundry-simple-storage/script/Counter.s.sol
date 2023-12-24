// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeScript is Script {
    function setUp() public {}

    function run() external returns(FundMe) {
        vm.startBroadcast();
        FundMe counter = new FundMe();
        vm.stopBroadcast();
        return counter;
    }
}
