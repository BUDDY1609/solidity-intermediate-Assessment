// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract AssessmentOne {
    mapping(address => uint) public balances;

    function deposit(address _address, uint _amount) public payable returns (string memory) {
        if (_amount <= 500) {
            revert("Minimum amount required to deposit is 500");
        }
        balances[_address] += _amount;
        return "Amount deposited";
        
    }
    function withdraw(address _address, uint _amount) public {
        assert(balances[_address] >= _amount);
        balances[_address] -= _amount;
    }

    function admission(uint _marks) public payable {
        require(_marks >= 55, "Minimum marks required to admission is 55");
    }

}
