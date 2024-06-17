// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

contract FixedSizeArray {

    /*General syntax for fixed size array

    type[size] public/ internal/ private  arrayName;

    OR

    type[size] public/ internal/ private  arrayName = [values];
    
    */



    // Declare a fixed-size array of integers with 3 elements
    uint[3] public numbers;
    uint[3] public oddNumbers =[5,10,15];
    uint[3] public evenNumbers;


    

    //Initialize the fixed array in the constructor
    constructor() {
        numbers[0] = 1;
        numbers[1] = 2;
        numbers[2] = 3;

        evenNumbers = [2, 4 ,6 ];
    }


    //Function to insert value into the numbers array
    function insertElement(uint index, uint _numbers) public{
         numbers[index] = _numbers;
    }
    
    //Function to return all the element of numbers array
    function getAllelement() public view returns (uint[3] memory){
        return numbers;
    }

    // Function to get an element at a specific index
    function getElement(uint index1, uint index2, uint index3) public view returns (uint, uint, uint) {
        return (numbers[index1], oddNumbers[index2] , evenNumbers[index3]);
        
    }
}