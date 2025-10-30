# 🧱 ImmutableString Smart Contract

A simple, beginner-friendly **Solidity** smart contract that demonstrates how data is stored, read, and updated on the blockchain.  
It’s designed to help new developers understand **state variables**, **getter functions**, and **transaction-based updates** in Ethereum-compatible networks.

---

<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/a0cca9ee-f412-450b-8a1e-b4c3a2a115b2" />


## 🚀 Project Description

The **ImmutableString** contract showcases the fundamentals of **state management in Solidity**.  
It allows users to:
- Store a simple text message and a number on the blockchain.
- Retrieve them anytime for free (read-only calls).
- Update them via a transaction (which consumes gas).

This contract is deployed on the **Celo Sepolia Testnet**, providing an accessible way for learners to interact with and observe live blockchain transactions.

---

## 💡 What It Does

- Initializes a string (`storedString`) with `"Hello Blockchain World!"`  
- Initializes a number (`storedNumber`) with `42`  
- Lets anyone **view** the stored data without paying gas  
- Allows users to **update** the values (requires a blockchain transaction)

---

## ✨ Features

✅ Simple and clean Solidity code structure  
✅ Beginner-friendly inline documentation  
✅ Demonstrates both **view (read)** and **state-changing (write)** functions  
✅ Fully deployed and verifiable on **Celo Sepolia**  
✅ Ideal for those starting with smart contracts and blockchain data storage

---

## 🌍 Deployed Smart Contract

**Network:** Celo Sepolia Testnet  
**Contract Address:** [`0x519130E8FCb363B7eF8bfDf1b2c5A29CE2591DDb`](https://celo-sepolia.blockscout.com/address/0x519130E8FCb363B7eF8bfDf1b2c5A29CE2591DDb)  
**Block Explorer:** [Celo Blockscout Explorer](https://celo-sepolia.blockscout.com)

---


## How to Interact

You can interact with the contract using:

Remix IDE: Load the contract, connect to Celo Testnet, and call functions.

Blockscout: Use the “Read/Write Contract” tab to interact directly.

Celo Wallet or Metamask (Testnet): Send transactions to update values.

📚 Learning Takeaways

Difference between view and non-view functions

How state variables are stored and updated

Understanding gas usage and transactions

Working with public variables and function modifiers

👨‍💻 Author

Developed by Soumyadip Chatterjee
B.Tech CSE | Blockchain & Web3 Enthusiast | Learning Solidity
