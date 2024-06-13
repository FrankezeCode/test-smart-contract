// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract MappingOfStruct{
   //Mapping of struct is asigning keys to each struct pair)

    //Example of struct for Student
     struct Student {
       string name;
       uint score;
       bool pass;
    }

    mapping(uint => Student) public data;

    //Function to insert values into the struct data type
    function insertValues(uint index, string memory _name, uint _score , bool _pass) public {
        data[index] = Student(_name, _score , _pass);
    }


     //Function to get each element from the struct
    function getElement(uint index) public view  returns (Student memory){
        return data[index];
    }

}


