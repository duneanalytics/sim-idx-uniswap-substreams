// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct UniswapV4InitializeData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    bytes32 id;
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct UniswapV4SwapData {
    bytes32 txHash;
    address txFrom;
    address txTo;
    address caller;
    address contractAddress;
    uint64 ordinal;
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
    uint24 fee;
}

struct UniswapV4ModifyLiquidityData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    bytes32 id;
    address sender;
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct UniswapV4DonateData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    bytes32 id;
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV4ProtocolFeeControllerUpdatedData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address protocolFeeController;
}

struct UniswapV4ProtocolFeeUpdatedData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    bytes32 id;
    uint24 protocolFee;
}
