# SimpleStorage

A foundational Solidity contract built as part of a structured study program toward a junior blockchain developer role.

The contract covers core Solidity concepts written from memory, including state variables, constructors, custom errors, events, access control, and ownership transfer.

**What the contract does:**

- Stores a number on-chain, restricted to the contract owner
- Emits an event recording who stored a value and what value was stored
- Allows ownership to be transferred, with the old and new owner logged on-chain
- Rejects unauthorised callers using a custom error that returns the caller's address

**Concepts demonstrated:**

`state variables` `constructor` `msg.sender` `events` `emit` `custom errors` `revert` `access control` `ownership transfer`

---

