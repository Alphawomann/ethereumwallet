// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract eth{

address payable public owner;

constructor(){
        owner = payable (msg.sender);
    }
receive () external payable{}

//function getbalance to read the balance
function getbalance() public view returns(uint){
    return address(this).balance;

}
//withdraw function for the owner of the contract
function withdraw(uint amount) public{
    require(msg.sender ==owner, "Thief you are not the owner");

    payable(msg.sender).transfer(amount); 
}
//anybodycanwithdraw function
function Anybodycanwithdraw(uint  _amount, address payable  _to) public {
_to.transfer(_amount); 
} 
  
}
