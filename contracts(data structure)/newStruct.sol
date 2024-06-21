// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;

//This contact talks about how to create a new struct inside a function

contract newStruct{

    struct Car{
        string color;
        uint date;
    }

    Car public cars;
    

    //using explicit initialization
    function createNew( string memory _color , uint _date) public  {
        Car memory newCar = Car(_color , _date);

        cars = newCar;
    }
      
    //using key value-pair
      function createNew1( string memory _color , uint _date) public  {
        Car memory newCar = Car({
            color: _color,
            date: _date
        });

        cars = newCar;
    }

   

}