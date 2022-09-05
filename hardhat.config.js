require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();
const { PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.0",
  networks: {
    mumbai: {
      url: "https://rpc-mumbai.maticvigil.com",
      accounts: [`0x${PRIVATE_KEY}`]
    },
  },
  paths: {
    artifacts: "./artifacts",
  },
};
