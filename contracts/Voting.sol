// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting{

    struct Canditate{
        uint id;
        string name;
        uint totalvotes;
    }

    mapping (uint => Canditate) public canditateList;

    mapping (address => bool) public isVote;

    function addCanditate(uint _id,string memory _name) public{

        Canditate storage canditateDetails = canditateList[_id];

        canditateDetails.id = _id;
        canditateDetails.name = _name;
    }

    function vote(uint _canditateId) public {
        
        require(isVote[msg.sender] == false , "You already voted");
        Canditate storage canditateVote = canditateList[_canditateId];
        
        canditateVote.totalvotes++;
        isVote[msg.sender] = true;
    }
}