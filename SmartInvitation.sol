pragma solidity ^0.4.4;

// Work-in-progress
contract SmartInvitation {
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
  
  function SmartInvitation(){
  
    // allows payment to smart invitation for specific user participation modes
    function() payable{
    };
  }

}
