// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract CrossContract {
    /**
     * The function below is to call the price function of PriceOracle1 and PriceOracle2 contracts below and return the lower of the two prices
     */

    function getLowerPrice(
        address _priceOracle1,
        address _priceOracle2
    ) external view returns (uint256) {
        // your code here
        PriceOracle1 oracle1 = PriceOracle1(_priceOracle1);
        uint256 price1 = oracle1.price();

        PriceOracle2 oracle2 = PriceOracle2(_priceOracle2);
        uint256 price2 = oracle2.price();

        if (price1 < price2) {
            return price1;
        } else {
            return price2;
        }
    }
}

contract PriceOracle1 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}

contract PriceOracle2 {
    uint256 private _price;

    function setPrice(uint256 newPrice) public {
        _price = newPrice;
    }

    function price() external view returns (uint256) {
        return _price;
    }
}
