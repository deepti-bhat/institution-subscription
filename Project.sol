//SPDX-License-Identifier: MIT
pragma solidity >=0.6.6 <0.9.0;
contract Project{
    struct People{
        string name;
        string dob;
        uint256 uci;
        uint256 grad;
    }

    People[] public student;
    mapping(uint256 => People) public uciToStudent;
    function storeStudent(string memory _name,string memory _dob, uint256 _uci, uint256 _grad) public{
        student.push(People(_name,_dob,_uci,_grad));
        uciToStudent[_uci]=People(_name,_dob,_uci,_grad);
    }

}
