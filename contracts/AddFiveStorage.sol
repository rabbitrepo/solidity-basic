// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // inheritance

    // virtual - parent
    // override - child
    function getNum() public view override returns (uint256) {
        // return super.getNum() + 5;
        return num + 5;
    }

    // expected behavior:
    // store(5) => getNum(10)
}
