// SPDX-License-Identifier: GPL-3.0

//pragma solidity >0.4.0 <0.8.14;

contract helloworld {
    string public message = "God is great";

    function setMessage(string memory _message) public {
        message = _message;
    }

    function setMessage1(string memory _message) public pure {
        string memory message1 = "God is great";
        message1 = _message;
    }

    function getGlobalvalues() public view returns(uint) {
        return block.number;
    }

    function getMessage() public view returns(string memory) {
        return message;
    }
}
