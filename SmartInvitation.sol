pragma solidity ^0.4.4;


// import token contract

// Work-in-progress
contract SmartInvitation {
  // Lifespan of Smart Invitation
  unit constant invitationLifespan = 2 weeks;
  // Smart Invitation description
  string invitationDescription;
  // True if Smart Invitation is still active
  bool invitationAlive;
  
  address owner;
  
  Participants[] public participants;
  
  struct Participants {
    // The address of the participanting user
    address participant;
    // The reward amount that the user should get
    unit participationReward;
    
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
