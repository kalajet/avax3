// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor(address payable initialOwner)
        ERC20("nice", "NYC")
        Ownable(initialOwner)
    {}

    function mint(uint256 amount) public onlyOwner {
        _mint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, recipient, amount);
        return true;
    }
    function anyoneBurn(uint256 amount) public {
        _burn(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,amount);
    }
}
