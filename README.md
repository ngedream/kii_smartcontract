# Kiichain Smart Contract

<p align="center">
  <pre>
   ______  _________ ______   _______  _______  _______ 
  (  ____ \ \__   __/(  ___ \ (  ____ \(  ____ )(  ___  )
  | (    \/    ) (   | (   ) )| (    \/| (    )|| (   ) |
  | |          | |   | (__/ / | (__    | (____)|| (___) |
  | |          | |   |  __ (  |  __)   |     __)|  ___  |
  | |          | |   | (  \ \ | (      | (\ (   | (   ) |
  | (____/\ ___) (___| )___) )| (____/\| ) \ \__| )   ( |
  (_______/ \_______/|______/ (_______/|/   \__/|/     \|
  </pre>
  <i>Advanced Smart Contract Development on KiiChain Ecosystem</i>
</p>

---

## 🌐 Overview
**Kiichain Smart Contract Pro** is a robust, production-ready development template for the KiiChain network. Utilizing the **Foundry** framework, this project demonstrates secure state management, owner-controlled access, and real-time on-chain event logging. 

This repository is optimized for developers who prioritize speed, security, and the "sturdy" aesthetic of terminal-based blockchain engineering.

---

## 🛠 Tech Stack
* **Blockchain:** [KiiChain Testnet](https://docs.kiiglobal.io/)
* **Framework:** [Foundry](https://book.getfoundry.sh/) (Forge, Cast, Anvil)
* **Language:** Solidity ^0.8.19
* **Security:** [OpenZeppelin Contracts](https://openzeppelin.com/contracts/) (Ownable)
* **Environment:** Linux / Termux

---

##  Quick Start

### 1. Prerequisites
Ensure you have Foundry installed. If not, run:
```bash
curl -L [https://foundry.paradigm.xyz](https://foundry.paradigm.xyz) | bash
foundryup
```
### 2. Clone & Installation
```bash
git clone [https://github.com/ngedream/kii_smartcontract.git](https://github.com/ngedream/kii_smartcontract.git)
cd kii_smartcontract
forge install
```
### 3. Environment Config
Create a .env file in the root directory and populate it with your credentials
```bash
RPC_URL=[https://json-rpc.uno.sentry.testnet.v3.kiivalidator.com/](https://json-rpc.uno.sentry.testnet.v3.kiivalidator.com/)
PK=0xYOUR_PRIVATE_KEY
SET_VALUE=888
CA=0x... (Update after deployment)
```
### 📦 Core Features
​* Access Control: Integrated Ownable pattern to prevent unauthorized state modifications.
​* Event Emission: Triggers NumberUpdated events for efficient off-chain indexing (Frontend/Subgraphs).
​* Automated Formatting: Adheres to strict forge fmt standards.
​* Smart Scripting: Single script for both deployment and on-chain interaction.

### Useage

Compile the smart contract : 
```bash
forge build
```
Test 
```bash
forge test
```

Execute and deployment script
```bash
source .env
forge script script/Interaksi.s.sol:Interaksi --rpc-url $RPC_URL --broadcast --legacy
```

### 🛡 Security & Best Practices
​Standardized Code: All contracts are formatted using forge fmt.
​Git Safety: Sensitive data.
​Ownership: State-changing functions are protected by the onlyOwner modifier.
### ​👤 Author
​ngedream (Cibera)
​Content Creator & Web3 Strategist
​Focusing on Blockchain Infrastructure and Decentralized Systems.
​<p align="center">
Generated with 💜 for the KiiChain Community.
</p>
