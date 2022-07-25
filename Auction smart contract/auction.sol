// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.4.0 <0.9.0;

contract Auction{
    mapping(address => uint) biddersdata; 
    uint highestbidamount;
    address highestbidder;

    uint StartTime = block.timestamp;
    uint EndTime;
    address owner;
    bool AuctionEnded = false;
    constructor(){
        owner=msg.sender;
    }

    //put new bid
    function putBid() public payable{
        //verify value is not zero
        uint calculateamount =  biddersdata[msg.sender] + msg.value;

        //check session is not ended
        //require(AuctionEnded==true,"Auction is ended");
        //require(block.timestamp<=EndTime,"Auction is ended");
        //require(msg.value>0,"Bid amount cannot be zero");

        //check highest bid
        //require(calculateamount>highestbidamount,"Highest bid already present");
        biddersdata[msg.sender] = calculateamount;
        highestbidamount = calculateamount;
        highestbidder = msg.sender;

    }

    //get Bidder's bid
    function getBidderBid(address _address) public view returns(uint) {
        return biddersdata[_address];
    }

    //get Highest bidamount
    function HighestBid() public view returns(uint){
        return highestbidamount;
    }

    //get highest bidder address 
    function HighestBidder() public view returns(address){
        return highestbidder;
    }

    //put endtime for the timer
    function PutEndtime(uint _endtime) public {
        EndTime = _endtime;

    }

    //put end auction
    function EndAuction() public{
        if(msg.sender==owner){
            AuctionEnded = true;
        }
    }

    //withdraw bid
    function WithdrawBid(address payable _address) public {
        if(biddersdata[_address]>0){
            _address.transfer(biddersdata[_address]);
        }
    
    }

}