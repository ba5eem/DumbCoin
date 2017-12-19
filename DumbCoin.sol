pragma solidity ^0.4.0;

contract DumbCoin{
    
    address deployer;
    mapping(address=>uint) balances;
    
    function DumbCoin() public{
        
        deployer = msg.sender;
    }
    
    function giveCoins(uint amount, address reciever) public{
        
        if(msg.sender == deployer){
            //give coins to reciever
            balances[reciever] += amount;
        }
        else{
            revert();
        }
    }
    
    function viewBalance() public constant returns (uint) {
        
        return balances[msg.sender];
    }
    
}