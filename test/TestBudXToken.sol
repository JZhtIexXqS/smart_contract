import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/BudXToken.sol";

contract TestBudXToken {

  function testInitialBalanceUsingDeployedContract() {
    BudXToken token = BudXToken(DeployedAddresses.BudXToken());

    uint expected = 100000000;

    Assert.equal(token.balanceOf(tx.origin), expected, "Owner should have 10000 BudXToken initially");
  }

}
