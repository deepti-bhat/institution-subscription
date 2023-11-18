# institution-subscription
Institution subscription contract in Solidity to validate students' association and details with an educational institute.

This Solidity contract eases the process of validating student details and whether they were a part of the previous instituiton.

## Test out the code!
<ul>
  <li>Compile and Deploy Subscription.sol in Remix</li>
  <li>Enter institution name and pay 1 Gwei through testnet</li>
  <li>Instution gets its own address which can be be found through <i>instToContract</i> option</li>
  <li>Student details are added/validated using institution address through <i>sfStoreStudent</i></li>
  <li>Student details are viewed/verified using institution address through <i>sfGet</i></li>
  <li>Total amount funded by a payment address is viewed using <i>adressToAmountFunded</i></li>
</ul>
