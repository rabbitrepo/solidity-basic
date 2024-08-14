// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; // Solidity Version / (or above) ^0.8.18 / (between) >=0.8.18 <0.9.0

contract SimpleStorage {
    // Basic Data Types: Boolean, Uint, Integer, Address, String, and Bytes

    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 88;
    // string favoriteNumberInText = "eighty-eight";
    // int256 favoriteInt = -88;
    // address myAddress = 0xCeB2a822d49A37B3348948B6C35d62b3020Ef638;
    // bytes32 favoriteBytes32 = "cat";

    // uint256 num; // default: 0
    // // Visibility:
    // // public
    // // private
    // // external
    // // internal (default): public can't see

    // function store(uint256 _num) public {
    //     num = _num;
    //     // getNum(); <== cost gas
    // }

    // function getNum() public view returns (uint256) {
    //     return num;
    // }
    // user can directly call without paying gas
    // cost gas when called by contract, func
    // view (return variable) | pure (return value)



    struct Person {
        string name;
        uint256 favNum;
    }

    // Person public John = Person("John", 100);
    // Person public Jane = Person({name: "Jane", favNum: 150});

    Person[] favNums; // <== Dynamic Array
    // Person[3] <== Static Array

    mapping(string => uint256) public nameFavNum;

    function addFavNum(string memory _name, uint256 _favNum) public {
        favNums.push(Person(_name, _favNum));
        nameFavNum[_name] = _favNum;
    }

    // function getFavNum()
    // Temp: calldata (can't be mod), memory (can be mod)
    // storage


}
