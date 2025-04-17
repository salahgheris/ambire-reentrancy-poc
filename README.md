Ambire Reentrancy PoC

Overview

This repository contains a Proof of Concept (PoC) for a Reentrancy vulnerability discovered in the Ambire smart contract system.

The vulnerability allows an attacker to recursively withdraw funds by exploiting the contract’s failure to update user balances before external calls.


---

Files

Ambire_Reentrancy_Attacker_Contract.sol:
A malicious contract used to exploit the vulnerability and perform the reentrancy attack.

Swisstronik_Reentrancy_Report_SalahGheris_Humanized.pdf:
A full professional report detailing the vulnerability, its impact, reproduction steps, and fix recommendations.



---

Vulnerability Impact

If exploited, this bug can allow a malicious user to repeatedly call the vulnerable function and drain all available funds, violating the smart contract's integrity and the users' assets.


---

Proof of Concept

To test the vulnerability, deploy both the target and attacker contracts and invoke the attack function. You will observe repeated withdrawals without proper balance updates.


---

Researcher

Salah Gheris 12
salahgheris2@gmail.com


---

Disclosure

This PoC is part of a responsible disclosure submitted to the Ambire team through the Immunefi bug bounty platform.

