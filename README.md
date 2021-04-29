# Decentralized_Image_Sharing

It is a Decentralized Image Sharing App using Smart Contracts written in Solidity and used web3 and Reactjs on The Front End

# How it Works:-

1. Smart Contracts are Compiled using Truffle and Deployed on The Blockchain That is On Ganache Network
2. So When A User Uploads a Image It is actually Uploaded to IPFS(A Decentralized File System) and not to our Test Network , This is Because Uploading a Image To Our Blockchain
   is Costly it Takes more Ether.Instead If it is Uploaded to IPFS, It gives us a Hash for every Image So We Can Store That Hash Which is Efficient.
3. You Have To Give Some Ether to Upload a Image and also You Can Tip Others 
4. All the Images are Ordered in The Desecending Order of The Tips Each Image Got. This makes The Highest Tipped Image To be On The Top
