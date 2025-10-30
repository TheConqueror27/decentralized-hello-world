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

