// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

error TransferFailed();

contract StakeContract {
    mapping(address => uint256) public userBalance;

    function stake(uint256 amount, address token) external returns (bool) {
        userBalance[msg.sender] += amount;
        bool success = IERC20(token).transferFrom(
            msg.sender,
            address(this),
            amount
        );
        if (!success) revert TransferFailed();
        return success;
    }
}
