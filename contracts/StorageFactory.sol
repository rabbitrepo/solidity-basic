// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "contracts/SimpleStorage.sol";

// import specific contract

// import "contracts/SimpleStorage.sol";
// import every contract in a file

contract StorageFactory {
    SimpleStorage[] public SSList;

    // type | ... | var name

    function createSimpleStorageContract() public {
        SimpleStorage SS = new SimpleStorage();
        SSList.push(SS);
    }

    function sfStore(uint256 _SSIndex, uint256 _newSSNum) public {
        // need 2 things:
        // Address
        // ABI: Application Binary Interface

        SimpleStorage SS = SSList[_SSIndex];
        SS.store(_newSSNum);
    }

    function sfGet(uint256 _SSIndex) public view returns (uint256) {
        // SimpleStorage SS = SSList[_SSIndex];
        // return SS.getNum();

        return SSList[_SSIndex].getNum();
    }
}
