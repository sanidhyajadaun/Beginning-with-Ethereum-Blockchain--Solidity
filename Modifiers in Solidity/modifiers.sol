// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract modifier1{
    address owner;
    constructor(){
        owner = msg.sender;
    }

    /*function mulfunction() public view returns(uint){
       if(msg.sender == owner){
           return 1;
       }else{
           return 0;
       }
    }*/

    function addfunction(uint a,uint b) public view CheckOwnerShip(a,b){
     //  uint ans = a+b;
    }

    function mulfunction(uint a,uint b) public view CheckOwnerShip(a,b) CheckOwnerShip1(a,b){
      // uint ans = a*b;
    }

    modifier CheckOwnerShip(uint a, uint b){
        if(msg.sender == owner){
            if(a>0&&b>0){
                _;
            }else{
                require(a<0&&b>0,"Variables cannot be zero");
            }
       }else{
           require(msg.sender==owner,"Only Owner can call this");
           
       }
    }

    modifier CheckOwnerShip1(uint a, uint b){
        if(msg.sender == owner){
            if(a>0&&b>0){
                _;
            }else{
                require(a<0&&b>0,"Variables cannot be zero");
            }
       }else{
           require(msg.sender==owner,"Only Owner can call this");
           
       }
    }
    
}