// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// contract BUNN_ICO_TOKEN {
contract ONWUAJUESE is ERC20 {
    uint256 private MAX_SUPPLY;
    address public owner;

    constructor() ERC20("ico_test1", "b_ico") {
        owner = msg.sender;
        MAX_SUPPLY = 10_000_000_000 * (10 ** decimals());
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Unauthorized Entity");

        _;
    }

    function mint(address account, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= MAX_SUPPLY, "MAX SUPPLY EXCEEDED");
        super._mint(account, amount);
    }

    function name() public view virtual override returns (string memory) {
        return "ONWUAJUESE";
    }

    function symbol() public view virtual override returns (string memory) {
        return "BUNN";
    }
}
