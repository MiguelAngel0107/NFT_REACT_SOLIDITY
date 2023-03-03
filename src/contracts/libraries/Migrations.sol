// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Migrations {
    address public owner = msg.sender;
    uint public last_completed_migrations;

    modifier restricted() {
        require(
            msg.sender == owner,
            ""
        );
        _;
    }
}
