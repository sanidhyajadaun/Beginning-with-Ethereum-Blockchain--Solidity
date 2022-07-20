// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Demo{
    uint rollno;

    /*
    
    Normal Function

    //setter
    function setRollno(uint _roll) public{
        rollno = _roll;
    }

    //getter
    function getRollno() public view returns(uint){
        return  rollno;
    }
    */

    //setter
    function setRollno(uint _roll) public{
        rollno = _roll;
    }

    //getter
    function getRollno() public view returns(uint){
       // return  rollno;
       //rollno = 1;
       return rollno;
    }

    //getter
    function getRollno1() public pure returns(uint){
        //rollno = 1;
        //return  rollno;

        uint rollno1  = 0;
        return rollno1;
    }
}