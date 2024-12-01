// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract VotingChecker {
    
    function checkEligibility(uint256 age) external view returns (bool Eligibility) {
      require(age >= 18, "Too young to vote");
      if (age >= 18) {
        Eligibility = true;
      }
    }

}
