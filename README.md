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
- **Contract Address: https://celo-sepolia.blockscout.com/address/0xC6a4Df3e3c65ab6930FF99ade096302429e618cC

---

## 📜 Smart Contract

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PresenceTracker {
    struct Presence {
        address user;
        uint256 timestamp;
    }

    Presence[] public presences;

    event CheckedIn(address indexed user, uint256 timestamp);

    function checkIn() public {
        presences.push(Presence(msg.sender, block.timestamp));
        emit CheckedIn(msg.sender, block.timestamp);
    }

    function totalCheckIns() public view returns (uint256) {
        return presences.length;
    }
}
🧩 Features
Records each user’s presence with an immutable timestamp

Emits an event on every check-in

Anyone can check the total number of check-ins on-chain

🧠 Tech Stack
Language: Solidity ^0.8.0

Network: Celo Sepolia Testnet

Tooling: Remix IDE / MetaMask / Blockscout

🪄 Future Improvements
Add role-based access control

Enable off-chain data logging (via The Graph / Oracles)

Integrate front-end UI for live presence tracking

👤 Author
Arnab Kr Pal
AI & ML Student | Tech Enthusiast | Blockchain Learner

📫 Connect with me:

GitHub

LinkedIn

yaml
Copy code

---

This format:
- Adds emojis and spacing for readability  
- Separates code from text clearly  
- Includes headings (`##`) for structure  
- Makes links clickable  
- Looks great in **dark or light GitHub themes**

---

Would you like me to make it look **like a professional open-source template** (with badges, license, and deployment instructions section)? I can generate that version too.






