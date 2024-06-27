# MyToken Contract

## Overview

`MyToken` is an ERC20 token implementation based on the OpenZeppelin library. This contract includes additional functionalities such as token burning and ownership control.

## Features

- **ERC20 Standard**: Implements the basic ERC20 token functionality.
- **Burnable Tokens**: Allows tokens to be burned (destroyed), reducing the total supply.
- **Ownable**: Provides basic authorization control functions, simplifying the implementation of user permissions.
- **Minting**: Allows the owner to mint new tokens.
- **Custom Transfer**: Overrides the default transfer functionality with a hardcoded sender address.
- **Public Burn**: Allows anyone to burn tokens from a specific address.

## Requirements

- Solidity ^0.8.0
- OpenZeppelin Contracts

## Installation

To use this contract, you will need to install OpenZeppelin contracts:

```bash
npm install @openzeppelin/contracts
```

## Usage

### Deployment

The contract constructor requires an address for the initial owner:

```solidity
constructor(address payable initialOwner)
    ERC20("nice", "NYC")
    Ownable(initialOwner)
{}
```

### Minting Tokens

Only the owner can mint new tokens:

```solidity
function mint(uint256 amount) public onlyOwner {
    _mint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, amount);
}
```

### Transfer Tokens

Overrides the default transfer function, with a hardcoded sender address:

```solidity
function transfer(address recipient, uint256 amount) public override returns (bool) {
    _transfer(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, recipient, amount);
    return true;
}
```

### Burn Tokens

Anyone can burn tokens from a specific address:

```solidity
function anyoneBurn(uint256 amount) public {
    _burn(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, amount);
}
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## Note

- Ensure you understand the implications of having hardcoded addresses in your contract.
- Review and test the contract thoroughly before deploying it to a production environment.

