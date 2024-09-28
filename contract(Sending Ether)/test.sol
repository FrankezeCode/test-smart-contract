// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Values {
    
    uint256  public total_values ;
    uint256 public reward;

    /**
     * @notice This funtion Adds a new value to the total and calculates the reward.
     * @dev The reward is calculated before the new value is added to the total.
     * This mimics a situation where rewards are calculated before adding more staked token to the contract
     * thereby, not reflecting the newly added value immediately in the reward.
     * @param value The new value to be added to the total.
     */
    function add_more_value(uint value) public   {
        
        calculate_reward(value);
        add_to_total_value(value);
       
    }

    function calculate_reward(uint value) public  returns(uint) {
       return  reward += total_values/value ;
    }

   
    function  add_to_total_value(uint value) public   returns (uint) {
        return total_values += value ;
    }

   
}
