const hardhat = require("hardhat");

async function main(){
    const contract = await hardhat.ethers.getContractFactory("Voting");
    const deployContract = await contract.deploy();

    console.log(deployContract);
}

main().catch((error)=>{
    console.log(error)
});