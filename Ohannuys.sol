pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Ohannuys is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Ohannuys(address _owner)  UpgradeableToken(_owner) {
    name = "Ohannuys";
    symbol = "OHY";
    totalSupply = 5000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}