// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
    address public owner = msg.sender;
    uint public last_completed_migrations;

    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract owner"
        );
        _;
    }

    function setCompleted(uint completed) public restricted {
        last_completed_migrations = completed;
    }

    function upgrade(address new_address) public restricted {
        Migrations upgraded = Migrations(new_address);
        upgraded.setCompleted(last_completed_migrations);
    }
}