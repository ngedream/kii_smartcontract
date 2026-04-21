// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;
import "@openzeppelin/contracts/access/Ownable.sol";

contract Kiikontrak is Ownable {
    uint256 private _number;
    event NumberUpdated(address indexed operator, uint256 oldValue, uint256 newValue);
    constructor() Ownable(msg.sender) {}
            function setNumber(uint256 newNumber) public onlyOwner {
                uint256 oldNumber = _number;
                _number = newNumber;
                emit NumberUpdated(msg.sender, oldNumber, newNumber);
            }
            function getNumber() public view returns (uint256) {
                return _number;
            }
        }
