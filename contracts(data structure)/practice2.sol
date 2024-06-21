// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;



contract mapstructArray{

    //Example of struct for Student
     struct Tweet {
       address user;
       string  content;
       uint timestamp;
    }

    mapping(address => Tweet[5]) public tweets;

    function creatTweet(string memory _content, uint index) public {
    //    Tweet memory  newTweet = Tweet({
    //      user : msg.sender,
    //      timestamp : block.timestamp,
    //      content: _content
    // });

    Tweet memory  newTweet = Tweet(msg.sender, _content, block.timestamp );

       
      // tweets[msg.sender].push(newTweet);
      tweets[msg.sender][index]= newTweet ;
    }

   

}