// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";



library  PriceConverter {


function getETHPrice()internal view returns (uint256){
        AggregatorV3Interface getprice = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        (,int256 answer,,,) = getprice.latestRoundData();
        return uint256(answer * 1e18);
    }



function GetConversion( uint256 ETHAmount) internal view returns (uint256){
        uint256 ETHprice = getETHPrice();
        uint256 AmountETHinUSD = ( ETHprice * ETHAmount) / 1e18;
        return AmountETHinUSD;
    }


   




}