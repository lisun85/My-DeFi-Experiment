pragma solidity ^0.8.0;

import '@openzeppelin/contracts/ERC20/ERC20.sol';

contract LpToken is ERC20 {
    constructor() ERC('LP Token', 'LTK') {}
}