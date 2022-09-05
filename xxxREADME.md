# Building a Full Stack Web3 YouTube

We are going to build a full-stack YouTube clone on top of the Polygon blockchain using the below tech stack.


- Frontend framework: Next.js
- Smart contracts: Solidity
- Ethereum web client library: Ethers.js
- File storage: IPFS
- Querying data: The Graph
- CSS Framework: TailwindCSS
- Ethereum development environment: Hardhat
- Layer 2 blockchain: Polygon

## Prerequisites

Before you start with the tutorial make sure you have Node.js v14 or greater, and the Metamask browser extension installed on your machine.

## Setting up Next.js App

Set up a next.js app and install the required dependencies. In order to do that, you would need to run the below command in your terminal.

```
mkdir web3-youtube && cd web3-youtube && npx create-next-app 

```
This line of code will createa new directory `web3-youtube` changes to it then creates a next js app.

Installa few dependencies as follows.

```
npm install react-icons plyr-react moment ipfs-http-client ethers @apollo/client graphql dotenv
```


- react-icons is an icon library that we will be using in the app.
- plyr-react is a video player component with rich plugins and functionalities.
- moment is a JavaScript date library for parsing, validating, manipulating, and formatting dates.
- ipfs-http-client is used to upload videos and thumbnails to IPFS.
- ethers is an Ethereum client literary that will be used to interact with the smart contracts


