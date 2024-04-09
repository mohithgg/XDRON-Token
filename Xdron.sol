// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract xdron is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Xdron", "XDR") 
        Ownable(initialOwner)
      
    {}

    function mint(address reciever_address, uint256 mint_value) public onlyOwner {
        _mint(reciever_address, mint_value);
    }

    function burn(uint256 burn_value) public {
        _burn(msg.sender,burn_value);
        
    }   

    function transfer(address reciever_address, uint256 transfer_value) public override  returns(bool){
        _transfer(msg.sender, reciever_address, transfer_value);
        return true;
    }    

}
