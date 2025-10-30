# 🧱 ImmutableString Smart Contract

A simple, beginner-friendly **Solidity** smart contract that demonstrates how data is stored, read, and updated on the blockchain.  
It’s designed to help new developers understand **state variables**, **getter functions**, and **transaction-based updates** in Ethereum-compatible networks.

---

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

## 🧩 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title ImmutableString
 * @dev A simple contract demonstrating basic state management in Solidity.
 * It stores a string and a number, and allows users to update these values,
 * showing how data is persisted on the blockchain.
 */
contract ImmutableString {

    // --- State Variables ---
    // State variables are stored permanently on the blockchain.

    // A public string variable initialized with the "Hello World" message.
    // The 'public' keyword automatically creates a getter function named 'storedString'.
    string public storedString = "Hello Blockchain World!";

    // A public unsigned integer (non-negative number) for basic tracking.
    uint public storedNumber = 42;

    // --- Constructor ---
    // The constructor runs once when the contract is deployed.
    // It's optional, but useful for setting initial state or configuration.
    constructor() {
        // You could also initialize state variables here, but for this
        // simple example, we use the inline assignment above.
    }

    // --- Getter Functions (Read-Only) ---
    // Although 'public' state variables create getters, we include a function
    // here to explicitly show the pattern for retrieving state.

    /**
     * @dev Retrieves the current value of the stored number.
     * The 'view' keyword means this function only reads the state and costs no gas
     * when called externally (off-chain).
     * @return The current stored number.
     */
    function getStoredNumber() public view returns (uint) {
        return storedNumber;
    }

    // --- Setter Function (Write/Update) ---

    /**
     * @dev Updates the stored string and number to new values.
     * This function changes the contract state, so it requires a transaction
     * and will consume gas on the Ethereum network.
     * @param _newString The new string to store.
     * @param _newNumber The new number to store.
     */
    function setValues(string memory _newString, uint _newNumber) public {
        // Update the state variables
        storedString = _newString;
        storedNumber = _newNumber;
    }
}


How to Interact

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
