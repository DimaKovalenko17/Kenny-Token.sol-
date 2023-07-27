// Learn more: https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html#pragma
pragma solidity >=0.7.3;


contract Register {
    string public github;
    address public owner;

    struct Referral {
        address referralAddress;
        string referralString;
    }

    Referral[] public referrals;

    constructor() {
        github = "DimaKovalenko17";
        owner = msg.sender;
    }

    function addReferral(address _referralAddress, string memory _referralString) public {
        require(msg.sender == owner, "Only the owner can call this function");
        Referral memory newReferral = Referral(_referralAddress, _referralString);
        referrals.push(newReferral);
    }

    function totalReferrals() public view returns (uint256) {
        return referrals.length;
    }
}