// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract FilterOddNumbers {
    /*
        This exercise assumes you understand how to manipulate Array.
        1. Function `filterOdd` takes an array of uint256 as argument. 
        2. Filter and return an array with the odd numbers removed.
        Note: this is tricky because you cannot allocate a dynamic array in memory, 
              you need to count the even numbers then declare an array of that size.
    */

    function filterOdd(
        uint256[] memory _arr
    ) public pure returns (uint256[] memory) {
        // First count the number of even numbers
        uint256 evenCount = 0;
        for (uint256 i = 0; i < _arr.length; i++) {
            if (_arr[i] % 2 == 0) {
                evenCount++;
            }
        }

        // Create array with exact size needed
        uint256[] memory evenNumbers = new uint256[](evenCount);

        // Fill the array with even numbers
        uint256 currentIndex = 0;
        for (uint256 i = 0; i < _arr.length; i++) {
            if (_arr[i] % 2 == 0) {
                evenNumbers[currentIndex] = _arr[i];
                currentIndex++;
            }
        }

        return evenNumbers;
    }
}
