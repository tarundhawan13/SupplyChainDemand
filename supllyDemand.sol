pragma solidity >=0.4.22 <0.6.0;

contract Bidder {
   
     
     uint public Totalstock;
     uint public ToatalSale;
     uint public DSratio;
     string public req;
   
     
     
   
   
    function setStockAmount(uint shop1, uint shop2) public returns(uint) {
       Totalstock  = shop1 + shop2;
       return Totalstock;
    }
   
    function setSaleAmount(uint shop1, uint shop2) public returns(uint) {
       ToatalSale  = shop1 + shop2;
       return ToatalSale;
    }
 
    function findDemand() public {
       DSratio=ToatalSale/Totalstock;
    }
 
   function requirement() public {
       if (DSratio >= 60){
           req = "high demand";
       }
       else if (DSratio < 60 && DSratio >= 40){
           req = "average demand";
       }
       else
       {
           req = "low demand";
       }
        
       
   }
}
