pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract BudXToken is StandardToken {

	string public name = "BudX Token";
	string public symbol = "BUDX";
	uint8 public decimals = 2;
	uint public INITIAL_SUPPLY = 100000000;

	constructor() public {
	  totalSupply_ = INITIAL_SUPPLY;
	  balances[msg.sender] = INITIAL_SUPPLY;
	}

}
