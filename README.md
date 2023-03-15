Advantages of Foundry?

1. Fast (even faster than DappTools)
2. Built-in Fuzzing (Random parameters for testing edge cases)
3. Solidity-based testing (Bye bye Mocha & Chai)
4. "EVM Cheat codes"
5. Scripts based in bash / shell

Usage of Foundry Framework?

To Build/Test/Deploy/Interact Smart Contracts

# Setup

1. Setups New Forge project

```
forge init --force
```

This creates bunch of folders :

- lib : treat it as dependencies folder for the project
- script : written in solidity to deploy or interacting with the contracts with extension -> .s.sol
- src : similar to contracts of Hardhat , containing Solidity contra cts of the project
- test : as the name says (but in solidity, no more JS) with extension -> .t.sol

also some files

- .gitmodules : url lists of any github repo's you want to use in the contracts and will thus be saved in lib folder
- foundry.toml : configuration file (similar to hardhat.config)

## Installations

- Install Foundry

```
curl -L https://foundry.paradigm.xyz | bash
```

Then, run foundryup in a new terminal session or after reloading your PATH.

Confirm successfull installation by checking forge --version & caszt --version

## Basic commands

1. Install any dependency
1. Compile contracts
1. Run tests

```
forge install 'PACKAGE-NAME'
forge build
forge test
```
