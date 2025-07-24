// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract FactoryResolver {
    mapping(uint256 => address) public uniswapV2Factories;
    mapping(uint256 => address) public uniswapV3Factories;

    constructor() {
        uniswapV2Factories[1] = 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f;
        uniswapV2Factories[8453] = 0x8909Dc15e40173Ff4699343b6eB8132c65e18eC6;
        uniswapV3Factories[1] = 0x1F98431c8aD98523631AE4a59f267346ea31F984;
        uniswapV3Factories[8453] = 0x33128a8fC17869897dcE68Ed026d694621f6FDfD;
    }

    function getUniswapV2Factory(uint256 chainId) public view returns (address) {
        return uniswapV2Factories[chainId];
    }

    function getUniswapV3Factory(uint256 chainId) public view returns (address) {
        return uniswapV3Factories[chainId];
    }
}
