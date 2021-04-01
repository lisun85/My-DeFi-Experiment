pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import '@openzeppelin/contracts/token/ERC20/iERC20.sol;

contract CollateralBackedToken is ERC20 {
    IERC20 public collateral;
    uint public price = 1;

    constructor (address _collateral) ERC20('Collateral Backed Token', "CBT) {
        collateral = IERC20(_collateral);
    }

    function deposit(uint collateralAmount) external {
        collateral.transferFrom(msg.sender, address(this), collateralAmount);
        _mint(msg.sender, collateralAmount * price)
    }

    function withdraw(uint tokenAMount) external {
        require(balanceOf(msg.sender) >= tokenAMount, "balance)
    }
}
