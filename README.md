# UX Testnet + DFuse

This repository contains a collection of scripts, contracts, and configs necessary to manage an EOSIO testnet using the [dfuseeos](https://github.com/dfuse-io/dfuse-eosio) binary. After executing the necessary steps, you will have a functional EOSIO testnet based on the [UX Network](https://github.com/UXNetwork/ux.contracts/) set of contracts.

### Dependencies
- [Docker](https://www.docker.com/)

### Installation and Setup
- clone this repository
- run the [build.sh](build.sh) script to build the `uxtestnet-dfuse` image
- execute the [run.sh](run.sh) script to launch the `uxtestnet1` container

### Ports
- `apiproxy` (8080)
- `dashboard` (8081)
- `eosws` (8888)

### Notes
- this process uses ports 8080, 8081, and 8888 on the host computer
	- change them to your custom values in [run.sh](run.sh) if necessary
- keys used in development (DO NOT USE THESE KEYS IN PRODUCTION)
  - system: 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
  - user: 5JUzsJi7rARZy2rT5eHhcdUKTyVPvaksnEKtNWzyiBbifJA1dUW
