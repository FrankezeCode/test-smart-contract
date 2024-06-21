// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.26;

   /*This contract involve widthdrawing/Sending Ether from a contact balance to another
    contract address or an EOA
   */
contract WithdrawEther{


    //using transfer to withdraw
     function withdrawTransfer(uint amount  , address payable  recipient) public {
        require(amount <= address(this).balance, "insufficient fund");
        recipient.transfer(amount);
     }
     
    //using send to withdraw
     function withdrawSend(uint amount  , address payable  recipient) public {
        require(amount <= address(this).balance, "insufficient fund");
          bool success = recipient.send(amount);
          require(success, "send failed");
     }
    
    //using call to withdraw
     function withdrawCall(uint amount  , address payable  recipient) public {
        require(amount <= address(this).balance, "insufficient fund");
          (bool success,) = recipient.call{value: amount}("");
          require(success, "send failed");
   }


}
