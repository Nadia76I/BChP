// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract BillSplitter {
    error NotEven(string message);

    function splitExpense(uint256 totalAmount, uint256 numPeople
    ) external pure returns(uint256 personalShare) {
        require(totalAmount > 0 && numPeople > 0, "Input number more than 0");

        if(totalAmount % numPeople == 0) {
            personalShare = totalAmount / numPeople;
        }
        else {
            revert NotEven("The amount can not be split");
        }
    return personalShare;

    }
}
