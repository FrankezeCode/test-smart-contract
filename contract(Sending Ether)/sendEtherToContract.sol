// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

   /*This contract involve sending Ether from an EOA account to the contract account
    that declared the function.
   */



contract SendEther {
     
    //Function to send Ether using transfer
     function sendViaTransfer() public payable {
          payable (address(this)).transfer(msg.value);
     }
       
    //function to send Ether using send
      function sendViaSend() public payable {
         bool success = payable(address(this)).send(msg.value);
         require(success, "failed to send");
     }
      
    //function to send Ether using Call
     function sendViaCall( ) public payable {
        (bool success, ) = payable(address(this)).call {value : msg.value}("") ;
        require(success, "Failed to send");
     }

    

 }