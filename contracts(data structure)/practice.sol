// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;



contract StructExample{

    //Example of struct for Student
     struct Student {
       string name;
       uint age;
       bool pass;
    }

    Student[4] public  s1;

    function insert(uint index, string memory _name, uint _age, bool _pass) public {
        // s1[index].name=_name;
        // s1[index].age = _age;
        // s1[index].pass = _pass;

        s1[index]=Student(_name ,_age, _pass);
    }

    function get(uint index) public  view returns (Student memory){
        return s1[index];
    }

    function returnAll() public view returns (Student[4] memory){
        return  s1;
    }
    
    //return age of a student
    function returnAge(uint index) public view returns (uint){
       return   s1[index].age ;
    }

}