// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Error1{

    //assert (bool condition) //consume more gas fees
    //require (bool condition) //consume less gas
    //require (bool consition, string memory message)
    //revert()
    //revert(string memory reason)

    uint rollno1;

    function setRoll(uint _roll) public {
        if(_roll>0) {
            rollno1 = _roll;
        } else{
            rollno1 = _roll;
            //assert(false);
            //require(false,"Number cannot be zero");
            revert();
        }
    }

    function getRoll() public view returns(uint) {
        return rollno1;
    }
    

}