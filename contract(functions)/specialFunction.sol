// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract specialFunction{
       
       //This function is receive ether by this contract
       receive() external payable { 

       }
       
       /*This function is  used for ether transfer if receiver() function 
       is not available, it also handles non-matching function calls */
       fallback() external payable {

       }


}