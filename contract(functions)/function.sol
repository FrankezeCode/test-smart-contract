// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


contract newFunction{
     
     
     uint public  number  =  2 ;

     /*This is a setter function, because it has a parameter or argument. 
      It means that you can input values into this function , 
      Also this kind of function without a "view or pure" indicates that it is modifying the 
      state variable which is stored in the blockchain thereby incuring a gas charges for the 
      transaction.
     */ 
     function setter(uint _number) public {
           number = _number;

     }
      
     /*This is a getter function , because it has no paramenter or arguement .
       It means that you cannot input values into this function, therefore you are only reading from
       the state variable which is stored in the blockchain ie you are viewing what is stored in the blockchain . the state of the blockchain
       is not changed. This kind of transaction does not cost gas.

       The 'view' indicate that you are reading from the state variabe
     */ 
     function getter() public view  returns (uint){
         return   number;
     }
     
    /* The "pure" indicate you are not reading / modifying the state variable which is stored 
    in the blockchain , thereby not incuring gas cost for the operation*/ 
    
     function setterPure( uint a, uint b) public pure  returns (uint){
         return   a + b ;
     }

}