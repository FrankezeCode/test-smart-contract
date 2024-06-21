// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

   /*This contract involve sending Ether from one EOA acount to another or to
    a contract account
   */

   
   contract SendEther {

    //function to send ether using 'transfer"
     function sendViaTransfer( address payable  to) public payable {
          to.transfer(msg.value);
     }
    
    //function to send ether using 'send"
      function sendViaSend( address payable  to) public payable {
         bool success = to.send(msg.value);
         require(success, "failed to send");
     }

    //function to send ether using 'call"
      function sendViaCall( address payable  to ) public payable {
        (bool success, ) = to.call {value : msg.value}("") ;
        require(success, "Failed to send");
     }
   }