// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "./simple.sol";

contract Storage{
    
    // Simple public  simplestorage;

    // function createSimpleStorageContract() public {
    //     simplestorage = new Simple();}

    Simple[] public  listofsimplestoragecontracts;

    function createSimpleStorageContract() public {
        Simple newSimpleStorageContract = new Simple();
        listofsimplestoragecontracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _newSimpleStorageNumber) public {
        Simple mySimpleStorage= listofsimplestoragecontracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);

    }
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        return listofsimplestoragecontracts[_simpleStorageIndex].retrieve();
    }
}
