// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HemadriContract {
    function division(uint numerator, uint denominator) public pure returns (uint) {
        // Using require and assert
        assert(denominator != 0);
        require(denominator >5 , "denominator should be greater than 5");
        uint result = numerator / denominator;
       
        if (result > 1000) {
            revert("Result is too large");//using revert
        }

        return result;
    }
}