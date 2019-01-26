pragma solidity ^ 0.4.21;

contract VaccineRegistration {

    address owner;
    address secondary;
    address tertiary;

    constructor(address _secondary, address _tertiary) public {
        owner = msg.sender;
        secondary = _secondary;
        tertiary = _tertiary;
    }

    modifier onlyOwners() {
        require(msg.sender == owner ||
            msg.sender == secondary ||
            msg.sender == tertiary);
        _;
    }

    string[] vaccines;

    function registerData(string _data) public onlyOwners {
        vaccines.push(_data);
    }

    function getData(uint _index) public view returns(string _data) {
        return vaccines[_index];
    }

    function getLength() public view returns(uint _length) {
        return vaccines.length;
    }

}
