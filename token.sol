// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract SNXPVToken is ERC20, Ownable, ERC20Burnable  {
    uint256 private constant _initialSupply = 2100000000 * 10**6;

    constructor(address initialOwner) ERC20("SNXPV", "SNXPV") Ownable(initialOwner) {
        _mint(initialOwner, _initialSupply);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}
