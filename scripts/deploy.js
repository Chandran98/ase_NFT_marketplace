
const { ethers } = require("hardhat");
const hre = require("hardhat");

async function main() {

  const Lock = await hre.ethers.getContractFactory("Lock");
  const lock = await Lock.deploy();

  await lock.deployed();

  console.log("Marketplace NFT marketplace$(Nft)"  );
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
