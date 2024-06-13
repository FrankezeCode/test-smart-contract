// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract StructExample{
   //Array of struct is an array containing several struct(this is for fixed array)

    //Example of struct for Student
     struct Student {
       string name;
       uint score;
       bool pass;
    }

    Student[3] public  student1;


    //Function to insert values into the struct data type
    function insertValues(uint index, string memory _name, uint _score , bool _pass) public {
        student1[index] = Student(_name, _score , _pass);
    }


     //Function to get each element from the struct
    function getElement(uint index) public view  returns (Student memory){
        return student1[index];
    }

}


contract StructExample2{
   //Array of struct is an array containing several struct (this is for dynamic array)

    //Example of struct for Student
     struct Student {
       string name;
       uint score;
       bool pass;
    }

    Student[] public  student1;


    //Function to insert values into the struct data type
    function insertValues( string memory _name, uint _score , bool _pass) public {
        student1.push(Student(_name, _score , _pass));
    }


     //Function to get each element from the struct
    function getElement(uint index) public view  returns (Student memory){
        return student1[index];
    }

}