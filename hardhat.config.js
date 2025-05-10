require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",
  networks:{
    sepolia : {
      url : "https://eth-sepolia.public.blastapi.io",
      accounts:[
        "22fe4002f76d545857cbb69abc05ec9fe5e389f780a2af958c0fe3d982983ce5",
      ]
    }
  }
};
