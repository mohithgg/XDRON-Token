# XDRON token

I have created Xdron token using ERC20 contract which has been imported from openzeppelin. The interactions with the functions have been demonstrated in the video

## Description

* Token Name - Xdron

* Token Symbol - XDR

Functions - 

* Mint tokens into the recepient address
* Burn tokens from msg.sender
* Transfer from msg.sender to recepient address
* Checking the balance of the account


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Xdron.sol). Copy and paste the following code into the file:

```
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Xdron.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Xdron" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

Mohith G
[email-m0hithgggg@gmail.com]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
