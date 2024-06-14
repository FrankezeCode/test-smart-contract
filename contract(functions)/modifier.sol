// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract modifierFunction{
    
     modifier isEven(uint number){
         require (number % 2 == 0,  "This is not even number");
         _;
     }


     function get( uint number ) public pure isEven(number) returns (bool)  {
          return true;
         
     }


}