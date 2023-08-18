

---

# Hemadri Token (Example ERC20 Token)

**Hemadri** is a simple ERC20 token smart contract written in Solidity. It showcases the usage of the `revert`, `require`, and `assert` statements for error handling and control flow in a smart contract. The contract allows the creation of a custom token with the ability to mint new tokens and transfer them between addresses. It also demonstrates the use of modifiers for access control.

## Features

- Mint new tokens by the contract owner using `require` for authorization checks.
- Transfer tokens between addresses while checking for sufficient balance using `assert` and `revert` statements.
- Access control through a `onlyOwner` modifier implemented with `require`.

## Getting Started

1. Install a Solidity development environment, such as [Truffle](https://www.trufflesuite.com/truffle) or [Remix](https://remix.ethereum.org/).
2. Clone or download this repository to your local machine.
3. Compile the `hemadri.sol` file using your Solidity development environment.
4. Deploy the contract to an Ethereum development network of your choice.
5. Interact with the deployed contract using its provided functions.

## Smart Contract Details

The `hemadri.sol` smart contract is based on the ERC20 standard and extends the `ERC20` contract from the OpenZeppelin library. It emphasizes the use of `revert`, `require`, and `assert` statements for various purposes:

- The contract creator is assigned as the initial owner of the token.
- The `onlyOwner` modifier is used with `require` to restrict certain functions to the contract owner.
- The `mint` function uses `require` to ensure that only the owner can mint new tokens.
- The `transferTokens` function utilizes `assert` to check for non-zero transfer amounts and `revert` to handle insufficient balances.

## Usage

1. Deploy the contract to an Ethereum development network.
2. Use a tool like [Remix](https://remix.ethereum.org/) or a web3-enabled application to interact with the deployed contract.
3. Use the functions provided by the contract:
   - `mint(address account, uint amount)`: Mint new tokens and assign them to the specified address. Only the owner can call this function.
   - `transferTokens(address to, uint amount)`: Transfer tokens from the sender's address to the specified address, ensuring valid amounts and balances.
   - Other standard ERC20 functions like `balanceOf`, `allowance`, `transfer`, and `approve` are also available.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

This smart contract is provided as an example for educational purposes. It is not audited and should not be used in production environments without proper security reviews and testing.

---

Feel free to further customize the README as needed for your project.
