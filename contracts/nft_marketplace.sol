// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "hardhat/console.sol";

contract KFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenid; // ID for every nft created
    Counters.Counter private _itemssold; // Need to take the sold item count

    mapping(uint256 => Marketitematy) private idToMarketItem;
    address payable owner; // owner address

    uint256 listingprice = 0.0025 ether;

    struct Marketitematy {
        // Info about marketitems
        uint256 tokenid;
        address payable seller;
        address owner;
        uint256 price;
        bool issold;
    }

    // infomarketitem is used to send info to frontend
    event infoMarketitem(
        uint256 indexed tokenid,
        address sender,
        address owner,
        uint price,
        bool issold
    );
    modifier onlyOwner() {
        require(address(this) == owner, "Only owner can access it");
        _;
    }

    constructor() ERC721("NFTBOAT", "NFB") {
        owner = payable(msg.sender);
    }

    function updatelisting(uint256 _listingprice) public payable onlyOwner {
        listingprice = _listingprice;
    }

    function getlisting() public view returns (uint256) {
        return listingprice;
    }

    function mintnft(string memory tokenuri, uint256 price)
        public
        returns (uint256)
    {
        _tokenid.increment();
        uint256 newtokenid = _tokenid.current();
        _min

    }
}
