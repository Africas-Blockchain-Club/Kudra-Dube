###SimpleStorage###

A foundational Solidity contract built as part of a structured study program toward a junior blockchain developer role.
Contracts are written from memory as part of a Socratic study method — no copy-pasting, no AI-generated code.
What the contracts do:

Ownable — parent contract handling ownership tracking, access control, and ownership transfer with on-chain logging
SimpleStorage — child contract inheriting from Ownable, storing and retrieving a number on-chain restricted to the owner

Concepts demonstrated:
state variables constructor msg.sender events emit custom errors revert access control ownership transfer inheritance