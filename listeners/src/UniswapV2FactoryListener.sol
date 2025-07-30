// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV2.sol";

contract UniswapV2FactoryListener is UniswapV2Factory$OnPairCreatedEvent {
    event UniswapV2FactoryPairCreated(UniswapV2FactoryPairCreatedData);

    function UniswapV2Factory$onPairCreatedEvent(
        EventContext memory ctx,
        UniswapV2Factory$PairCreatedEventParams memory params
    ) external override {
        UniswapV2FactoryPairCreatedData memory eventData = UniswapV2FactoryPairCreatedData({
            txHash: ctx.txn.hash(),
            caller: ctx.txn.call.callee(),
            contractAddress: ctx.txn.call.callee(),
            ordinal: 0,
            token0: params.token0,
            token1: params.token1,
            pair: params.pair,
            allPairsLength: params.outArg3
        });

        emit UniswapV2FactoryPairCreated(eventData);
    }
}
