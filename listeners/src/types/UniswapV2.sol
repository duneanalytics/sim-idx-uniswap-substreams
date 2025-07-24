// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct UniswapV2FactoryPairCreated {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address token0;
    address token1;
    address pair;
    uint256 allPairsLength;
}

struct UniswapV2PairSync {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint112 reserve0;
    uint112 reserve1;
}

struct UniswapV2PairSwap {
    bytes32 txHash;
    address txFrom;
    address txTo;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    uint256 amount0In;
    uint256 amount1In;
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
}

struct UniswapV2PairMint {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV2PairBurn {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    uint256 amount0;
    uint256 amount1;
    address to;
}
