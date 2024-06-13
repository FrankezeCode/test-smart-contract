// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;



contract StructExample{
   
   /*General syntax for Struct

    struct StructName {
       type1 fieldName1;
       type2 fieldName2;
    }

     struct_type public var_name;
    
    */

    //Example of struct for Student
     struct Student {
       string name;
       uint score;
       bool pass;
    }

    Student public  student1;


    //Function to insert values into the struct data type

    function insertValues(string memory _name, uint _score , bool _pass) public {
        student1 = Student(_name, _score , _pass);
    }

    //Function to get each element from the struct
    function getElement() public view  returns (string memory, uint, bool){
        return(student1.name, student1.score, student1.pass);
    }
   
}



contract StructExample2{
   

    //Example of struct for Student
     struct Car {
       string color;
       uint number;
       bool working;
    }

    Car public  car1;


    //Function to insert values into the struct data type

    function insertValues(string memory _color, uint _number , bool _working) public  {
        car1.color = _color;
        car1.number = _number;
        car1.working = _working;
    }

    //Function to get each element from the struct
    function getElement() public view  returns (Car memory){
      return  car1;
    }
   
}

