// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract InterestCalculator {
    function calculateCompoundInterest(
        uint256 principal,
        uint256 rate,
        uint256 num_years
    ) external pure returns (uint256 CompoundInterest){
        require(principal != 0 && rate != 0, "Pricipal and rate must not ne 0");

        uint256 factor = 1e18;
        uint256 scaledRate = (rate * factor) / 100;
        CompoundInterest = principal;

        for (uint256 i=0; i < num_years; i++) {
            CompoundInterest = (CompoundInterest * (factor + scaledRate)) / factor;
        }
        return CompoundInterest;
    }
}
