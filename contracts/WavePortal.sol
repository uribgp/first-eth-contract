// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    string public lastWave;

    constructor() {
        console.log("My First Contract");
    }

    function set(string memory _lastWave) public {
        lastWave = _lastWave;
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        console.log("The last wave was on %s", lastWave);
        return totalWaves;
    }
}