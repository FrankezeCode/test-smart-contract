// SPDX-License-Identifier: GPL-3.0


pragma solidity ^0.8.0;

contract DynamicArray {

     /*General syntax for mapping

      type[] public/ internal/ private  arrayName;
    
    */



    // Declare a dynamic array of integers
    uint[] public numbers;

    // Function to add an element to the array
    function addElement(uint num) public {
        numbers.push(num);
    }

    // Function to get an element at a specific index
    function getElement(uint index) public view returns (uint) {
        return numbers[index];
    }

    // Function to get the length of the array
    function getLength() public view returns (uint) {
        return numbers.length;
    }
}