// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct UniswapV3FactoryPoolCreatedData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address token0;
    address token1;
    uint24 fee;
    int24 tickSpacing;
    address pool;
}

struct UniswapV3FactoryOwnerChangedData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address oldOwner;
    address newOwner;
}

struct UniswapV3FactoryFeeAmountEnabledData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3PoolInitializeData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct UniswapV3PoolMintData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3PoolBurnData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3PoolSwapData {
    bytes32 txHash;
    address txFrom;
    address txTo;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
}

struct UniswapV3PoolCollectData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address owner;
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0;
    uint128 amount1;
}

struct UniswapV3PoolFlashData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
    uint256 paid0;
    uint256 paid1;
}

struct UniswapV3PoolIncreaseObservationCardinalityNextData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint16 observationCardinalityNextOld;
    uint16 observationCardinalityNextNew;
}

struct UniswapV3PoolSetFeeProtocolData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint8 feeProtocol0Old;
    uint8 feeProtocol1Old;
    uint8 feeProtocol0New;
    uint8 feeProtocol1New;
}

struct UniswapV3PoolCollectProtocolData {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    address recipient;
    uint128 amount0;
    uint128 amount1;
}
