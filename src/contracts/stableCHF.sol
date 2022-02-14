pragma solidity >=0.4.22 <0.9.0;

contract stableCHF{
    string public name = "dummy Franc coin";
    string public symbol = "Franc";
    unit public totalSupply = 1000000000000000000000000;
    uit public decimal = 18;

    event Transfer(
        address indexed _from;
        address indexed _to;
        uint _value;
    )

    event Approve(
        address indexed _owner;
        address indexed _spender;
        uint _value;

    )

    mapping(address => uint256) public balance;
    mapping(address => mapping(address=>uint256)) public allowance;

    constructor() public{
        balance[msg.sender] = totalSupply;
    }

    function transfer(address _to, uint256 _valueb) public returns(bool){
        require(balance[msg.sender] >= _value);
    }
}