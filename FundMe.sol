// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {PriceConverter} from "./PriceConverter.sol";
contract FundMe{
    using PriceConverter for uint256;
    uint256 public minimumUSD = 2 * 10**18;

    address[] public funders;
    mapping ( address funder => uint256 amountFunded ) public addressToAmountFunded;
    function fund() public payable {
        
        require(msg.value.getConversionRate() >= minimumUSD, "You need to spend more ETH!");  // 1e18 = 1ETH = 10**18
        //msg.sender.transfer(msg.value); 
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender]+msg.value;

    }

    function withdraw() public{
        //for loop
        uint256 fundersLength = funders.length;
        for(uint256 funderIndex = 0; funderIndex < fundersLength; funderIndex++) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        funders = new address[](0);
    } 
   
}
