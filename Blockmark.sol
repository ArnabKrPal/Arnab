Presence Tracker 🕒



A simple Solidity smart contract to record user presence immutably on the blockchain with timestamps.
Deployed on Celo Sepolia Testnet.

🌐 Transaction Details
Network: Celo Sepolia Testnet
Transaction Hash: 0xa79bf83f6b61a781fa2e6a2501bd5d506e8c075adf6f441689aa49e4ed67c45b
Status: ✅ Success
Block Number: 8,442,004
Timestamp: Oct 29, 2025 – Confirmed within 1 second
Deployed By: 0xC6a4DF3e3c65ab6930FF99ade096302429e8168C
📜 Smart Contract Code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// A simple smart contract to record presence immutably on blockchain
contract PresenceTracker {
    // Struct to store presence record
    struct Presence {
        address user;
        uint256 timestamp;
    }

    // Array to store all presence records
    Presence[] public presences;

    // Event for logging when someone checks in
    event CheckedIn(address indexed user, uint256 timestamp);

    // Function to mark presence
    function checkIn() public {
        presences.push(Presence(msg.sender, block.timestamp));
        emit CheckedIn(msg.sender, block.timestamp);
    }

    // Function to get total number of check-ins
    function totalCheckIns() public view returns (uint256) {
        return presences.length;
    }

    // Function to get all presence records
    function getAllPresences() public view returns (Presence[] memory) {
        return presences;
    }
}
