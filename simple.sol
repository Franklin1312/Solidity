// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;   //solidity version  or >=0.8.30 <0.8.35 .... '^' represents all version above 30

contract Simple{
    //bool unit int address ntes
   // bool hasfavnum = true ;
   // uint256 favnum = 88 ;  //has 256 bytes
   // int Favnum = -73;  //+ve or -ve
   // string num = "88 - eighty eight" ;
   // int256 no = 88;
    //address myaddress = 0xd9145CCE52D386f254917e481eB44e9943F39138;
   // bytes32 favbytes = "cat";  //only till 32    
    uint256 public favnum; //initialize as 0

    function store(uint256 favoritenum) public{
        favnum = favoritenum;
    }
    function retrieve() public view returns (uint256){  //view does not  allow write
        return favnum;
    }   

}