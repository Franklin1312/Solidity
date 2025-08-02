// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./simple.sol";

contract AddFiveStorage is Simple {
        //now all the functions from simple can be used here
        function store(uint256 _number) public override {
            favnum = _number + 5;
        }
}
