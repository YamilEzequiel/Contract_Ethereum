// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract variables_modifiers {

    // Value intenger (uint)
    // Reserved uint8 a uint256
    // Default 256 
    uint256 a;
    uint8 public b = 3;

    // Value integer sig
    int256 c;
    int8 d = -32;
    int e = 65;

    // String 
    string str;
    string public str_public = "String public";
    string private str_private = "String Private";

    //Boolean
    bool boolean;
    bool public bool_true = true;
    bool private bool_false = false;

    //bytes
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_one;

    // Algoritmo hash
    bytes32 public hashing = keccak256(abi.encodePacked("Hello word"));

    // address
    address my_address;
    address public address_one = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public addres_two = msg.sender; //return address auth user

    // enum
    enum options {ON,OFF}
    options state;
    options constant defaultChoise = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOf() public {
        state = options.OFF;
    }

    function displayState() public view returns (options){
        return state;
    }


}