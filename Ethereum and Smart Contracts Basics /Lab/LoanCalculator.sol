// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract LoanCalculator {

    error InterestRate(string message);
    error LoanPeriod(string message);

    function calculateTotalPayable(
        uint256 principal, uint256 interestRate, uint256 loanPeriod
        ) external pure returns (uint256 TotalAmount) {
            if (loanPeriod < 1) {
                revert LoanPeriod("Period should be at least 1 year");
            } else if (interestRate > 100) {
                revert InterestRate("Rate should be below 100");
            }
            // require(principal > 0, "Initial sum should be bigger than 0");
            // require(interestRate > 0, "Rate shouldn't be negative");
            // require(loanPeriod > 0, "Years should be bigger than 0");
           
            TotalAmount = principal + (principal * interestRate * loanPeriod / 100);
        // uint256 factor = 1e18;
        // uint256 scalledInterestPercentage = principal * interestRate * loanPeriod * factor / 100;
        // TotalAmount = principal + (scalledInterestPercentage / factor);

        return TotalAmount;
    }
}
