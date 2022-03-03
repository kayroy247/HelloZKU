import { expect } from "chai";
import { ethers, network } from "hardhat";

describe("Test uint", function () {
  const WHALE = "0xF977814e90dA44bFA03b6295A0616a897441aceC";
  before(async function () {
    await network.provider.request({
      method: "hardhat_impersonateAccount",
      params: [WHALE],
    });
  });
  describe("Hello Zero knowledge University", function () {
    it("Should return the new uint when changed", async function () {
      const signer = await ethers.getSigner(WHALE);
      console.log(await signer.getBalance());
      const HelloZKU = await ethers.getContractFactory("HelloZKU");
      const helloZKU = await HelloZKU.connect(signer).deploy(1);
      await helloZKU.connect(signer).deployed();
      expect(await helloZKU.getMyNumber()).to.equal(1);
      const setMyNumber = await helloZKU.setMyNumber(3);
      // wait until the transaction is mined
      await setMyNumber.wait();
      expect(await helloZKU.getMyNumber()).to.equal(3);
    });
  });
});
