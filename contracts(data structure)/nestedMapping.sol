// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract nestedMapping {

    /*General syntax for nested mapping

    mapping(keyType => mapping(keyType => valueType) public/ internal/ private mappingName;
    
    */

    
    // Define a mapping from address to uint
    mapping(address => mapping (string => bool)) public   permision;

    // Function to set the permission for a specific address to a resourse
    function setPermission(address _address, string memory _resourse, bool _hasPermision) public {
        permision[_address][_resourse] = _hasPermision;
    }

    // Function to get the permision of a specific address and resourse
    function getPermission(address _address, string memory _resourse) public view returns (bool) {
        return permision[_address][_resourse];
    }

}