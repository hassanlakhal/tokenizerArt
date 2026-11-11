// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFTSLak7al42 is ERC721URIStorage  {

    uint256  private  _tokenIdCounter;

   constructor() ERC721("Lak7al42", "HST42") {
    
   }
   function minNFT(string memory jsonURI) external  returns(uint256){
        
        uint256 newTokenId = _tokenIdCounter;
        _mint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, jsonURI);
        _tokenIdCounter += 1;
        return  newTokenId;
   }
}