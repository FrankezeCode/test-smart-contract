// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.26;


pragma solidity ^0.8.0;

contract EnumExample {
    // Define an enum named Status
    enum Status {
        Pending,    // 0
        Shipped,    // 1
        Delivered,  // 2
        Cancelled   // 3
    }

    // Declare a state variable of type Status
    Status public currentStatus;

    // Function to set the status using the enum type
    function setStatus(Status _status) public {
        currentStatus = _status;
    }

    // Function to get the current status as an integer
    function getStatusAsInteger() public view returns (uint) {
        return uint(currentStatus);
    }

    // Function to get the current status as a string
    function getStatus() public view returns (string memory) {
        if (currentStatus == Status.Pending) return "Pending";
        if (currentStatus == Status.Shipped) return "Shipped";
        if (currentStatus == Status.Delivered) return "Delivered";
        if (currentStatus == Status.Cancelled) return "Cancelled";
        return "";
    }
}