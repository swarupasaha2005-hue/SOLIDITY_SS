//SPDX-License-Identifier: MIT
pragma solidity 0.8.30; //version

contract SimpleStorage{
    
    uint public myfavoriteNumber; //by default the value will be 0

    //uint256[] listOfFavoriteNumbers;
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople;

    //gives(maps) the favorite number of the given string
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public swa = Person({favoriteNumber:8, name:"Swarupa"});
    // Person public aba = Person(10, "Abantika");
    
    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    //view, pure
    function retrieve() public view returns(uint256){
        return myfavoriteNumber;
    }

      function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));  
        nameToFavoriteNumber[_name] =_favoriteNumber;
      }
}