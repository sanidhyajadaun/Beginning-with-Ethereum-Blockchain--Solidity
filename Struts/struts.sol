// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Student{

    struct StudentData{
        uint rollno;
        string name;
        uint contactno;
    }

    StudentData s1 = StudentData(1,'Sanidhya',478);
    StudentData s2 = StudentData(2,'Prakhar',479);

    function getStudent1() public view returns(uint){
        return s2.rollno;
    }

}