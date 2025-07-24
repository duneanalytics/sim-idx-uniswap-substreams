// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

struct UniswapV3FactoryPoolCreated {
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

struct UniswapV3FactoryOwnerChanged {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address oldOwner;
    address newOwner;
}

struct UniswapV3FactoryFeeAmountEnabled {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3PoolInitialize {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct UniswapV3PoolMint {
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

struct UniswapV3PoolBurn {
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

struct UniswapV3PoolSwap {
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

struct UniswapV3PoolCollect {
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

struct UniswapV3PoolFlash {
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

struct UniswapV3PoolIncreaseObservationCardinalityNext {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint16 observationCardinalityNextOld;
    uint16 observationCardinalityNextNew;
}

struct UniswapV3PoolSetFeeProtocol {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    uint8 feeProtocol0Old;
    uint8 feeProtocol1Old;
    uint8 feeProtocol0New;
    uint8 feeProtocol1New;
}

struct UniswapV3PoolCollectProtocol {
    bytes32 txHash;
    address caller;
    address contractAddress;
    uint64 ordinal;
    address sender;
    address recipient;
    uint128 amount0;
    uint128 amount1;
}
