// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;



contract MappArray1{
  
  //for fixed array
  
  mapping(address => uint[2] ) public mark;

  function asigValue(address _address, uint _index , uint _mark ) public  {
     mark[_address][_index] = _mark ;
  }

  function getVal(address _address, uint _index) public view returns (uint){
    return mark[_address][_index];
  }

   function getAll(address _address) public view returns (uint[2] memory){
    return mark[_address];
  }
 

}

contract MappArray2{

  //for dynamic array

  
  mapping(address => uint[] ) public mark;

  function asigValue(address _address, uint _mark ) public  {
     mark[_address].push(_mark);
  }

  function getVal(address _address, uint _index) public view returns (uint){
    return mark[_address][_index];
  }

   function getAll(address _address) public view returns (uint[] memory){
    return mark[_address];
  }
 

}