// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() public {
        fundMe = new FundMe();
    }

    function testMIN_USDValue() public {
        assertEq(fundMe.MIN_USD(), 5e18);
    }


    function testOwnerSender() public {
        assertEq(fundMe.i_owner(), address(this));
    }
}
