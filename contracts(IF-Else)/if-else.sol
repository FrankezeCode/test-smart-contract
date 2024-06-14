// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract Conditionals{
  
  //generally if/else statement must be written inside a function

  function compare( uint a, uint b) public  pure returns(uint)  {
     if(a>b){
       return 10;

     }else if( a==b){
      return 5;
     }
     else return 0;
  }

}