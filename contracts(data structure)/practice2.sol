// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;



contract StructExample{


  mapping(uint => uint[] ) public mark;

  function asignva(uint index, uint[] memory item ) public  {
     mark[index] = item;
  }
 

}