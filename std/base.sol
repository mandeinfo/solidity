pragma solidity ^0.4.0; 

contract base{
   
    address owner ;
    
    modifier owneronly() {
        if (owner == msg.sender){
            _;
        } else {
            throw ; 
        }
    }
    function base(){
        owner = msg.sender;
    }
    
    function kill() owneronly {
        suicide (owner) ; 
    }
    
}
