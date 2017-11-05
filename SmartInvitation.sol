pragma solidity ^0.4.4;


// import token contract

// Work-in-progress
contract SmartInvitation {
  address public owner;
  uint256 public participantCount;
  
  // Lifespan of Smart Invitation
  unit constant invitationLifespan = 2 weeks;
  // Smart Invitation description
  string invitationDescription;
  // True if Smart Invitation is still active
  bool invitationAlive;
  
  Participants[] public participants;
  
  struct Participants {
    // The address of the participanting user
    address participant;
    // The reward amount that the user should get
    unit participationReward;
    
  }
  
  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }
  
  function SmartInvitation(){
    owner = msg.sender;
  
    // allows payment to smart invitation for specific user participation modes
    function() payable{
    };
    
    //allows owner to withdraw ETH balance back to Aditus
    function kill(){
      if (msg.sender == owner){
        suicide(owner);
      }
    }
  }

}
