// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract AritmeticCalculator {

function addition(int256 a, int256 b) external pure returns (int256) {
    return a + b;
}

function substraction(int256 a, int256 b) external pure returns (int256) {
    return a - b;
}

function multiplication(int256 a, int256 b) external pure returns (int256) {
    return a * b;
}

function division(int256 a, int256 b) external pure returns (int256) {
    require(b != 0, "Can not divide to 0");
    return a / b;
}

}
