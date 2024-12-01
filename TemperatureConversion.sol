// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract TemperatureConversion {
   
function toFahrenheit(uint256 Celsiusdeg) external pure returns (uint256 Fahrenheitdeg) {
    if(Celsiusdeg == 0) {
        Fahrenheitdeg = 32;
    } else {
        Fahrenheitdeg = Celsiusdeg * 9 / 5 + 32;
    }
}

function toCelsius(uint256 Fahrenheitdeg) external pure returns (uint256 Celsiusdeg) {
    if(Fahrenheitdeg == 0) {
        Celsiusdeg = 32;
    } else {
        Celsiusdeg = (Fahrenheitdeg - 32) * 5 / 9;
    }
}
}
