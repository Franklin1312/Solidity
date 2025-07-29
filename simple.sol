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


    //uint256[] listOfFavNum;        // [73,40,90]  array
    struct Person{
        uint256 favoritenumber;
        string name;
    }
    // static array
    // Person[] public listOfPeople;

    //dynamic array
    Person[] public listOfPeople; //[]
    mapping (string => uint256) public nameToFavNum;
    // Person public myFriend = Person(73,"John"); //object of person; or Person({favoritenumber:73,name:"John"})
    // Person public myFriend = Person({favoritenumber:89,name:"alex"});

    function addPerson(string memory _name, uint256 _favoritenumber) public {
        listOfPeople.push(Person(_favoritenumber,_name));
        nameToFavNum[_name] = _favoritenumber;   //mapping[]
            }
    
   
}
