# 🧑‍💻 Arnab – Presence Tracker  

A **Solidity smart contract** to record user presence immutably on the blockchain with timestamps.  
Deployed on **Celo Sepolia Testnet**.

---

## 🚀 Overview
This project demonstrates how to record attendance or presence data on-chain using Solidity.  
Each check-in is stored immutably on the blockchain with a timestamp.

---

## 🌐 Transaction Details
- **Network:** Celo Sepolia Testnet  
- **Transaction Hash:** [`0xa79bf83f6b61a781fa2e6a2501bd5d506e8c075adf641689aa49e4ed67c45b`](https://celo-sepolia.blockscout.com/tx/0xa79bf83f6b61a781fa2e6a2501bd5d506e8c075adf641689aa49e4ed67c45b)  
- **Status:** ✅ Success  
- **Block Number:** 8,442,004  
- **Timestamp:** Oct 29, 2025  
- **Deployed By:** `0xC6a4Df3e3c65ab6930FF99ade096302429e618cC`  
- **Contract Address:** https://celo-sepolia.blockscout.com/tx/0xa79bf83f6b61a781fa2e6a2501bd5d506e8c075adf6f441689aa49e4ed67c45b

---

## 📜 Smart Contract

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
## 🚀 Deployment Info
Environment: Celo Remix IDE + MetaMask
Compiler Version: 0.8.0
Network Used: Celo Sepolia (Testnet)
Deployed Successfully: ✅ Transaction confirmed and verified on Blockscout Explorer.

📷 Screenshot
<img width="1470" height="956" alt="Screenshot 2025-10-29 at 16 26 03" src="https://github.com/user-attachments/assets/c7731fe6-c629-40b6-9064-31f8b8078ca4" />



💡 Future Enhancements
Add user authentication using wallet signatures.
Integrate with a frontend dApp to visualize check-ins.
Store records using IPFS or The Graph for decentralized analytics.

👨‍💻 **Author**  
**Arnab Kr Pal**  <br>
🎓 AI & ML Student | Narula Institute of Technology

