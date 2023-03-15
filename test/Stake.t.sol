// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Stake.sol";
import "./mocks/MockERC20.sol";

contract StakeContractTest is DSTest {
    //instances of testing contracts
    StakeContract public stakeContract;
    MockERC20 public mockToken;

    // setUp is basically 'beforeEach' of Mocha Testfile
    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new MockERC20();
    }

    // function anem prefixed with 'test' are run as test (reserved keyword)
    function test_staking_tokens_fuzz(uint256 amount) public {
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }
}
