// SPDX-License-Identifier: MIT
pragma solidity >=0.6.6 <0.9.0;
import "./Project.sol";

contract Subscription{
    struct Funders{
        string instname;
        address paymentmode;
    }

    Funders[] public institution;
    

    mapping(address => uint256) public addressToAmountFunded;
    mapping(string => Funders) public instToFunders;

    mapping(string => Project) public instToContract;
    Project[] public instArray;

    

    function transact(string memory _instname) public payable{
        require(msg.value==10**9, "Payment needed is 1 Gwei!!!");
        addressToAmountFunded[msg.sender]+=msg.value;
        instToFunders[_instname]=Funders(_instname,msg.sender);
        institution.push(Funders(_instname,msg.sender));
        Project currOwner = new Project();
        instToContract[_instname]=currOwner;
        instArray.push(currOwner);
    }

    function sfStoreStudent(Project _contractadd,string memory _name,string memory _dob, uint256 _uci, uint256 _grad) public{
        _contractadd.storeStudent(_name,_dob,_uci,_grad);
    }

    function sfGet(address _contractadd, uint256 _key) public view returns(string memory name, string memory dob, uint256 uci, uint256 grad){
        Project p=Project(_contractadd);
        return(p.uciToStudent(_key));
    }
 
}