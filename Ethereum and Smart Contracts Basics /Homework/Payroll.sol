// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract payroll {
    error PositiveSalary(string message);
    error Rating(string message);

    function calculatePaycheck(uint256 salary, uint256 rating)
        external pure returns (uint256 TotalPaycheck) {
            if (salary < 1) {
                revert PositiveSalary("The payroll must be a positive number");
            }
            if (rating < 0 || rating > 10) {
                revert Rating("The rating must be between 0 and 10");
            }
            else if (rating < 8) {
                TotalPaycheck = salary;
            }
            else {
                TotalPaycheck = salary + salary * 10/100;
            }
            
        return TotalPaycheck;
        }

}
