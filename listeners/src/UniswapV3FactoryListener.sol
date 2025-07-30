// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV3.sol";

contract UniswapV3FactoryListener is
    UniswapV3Factory$OnPoolCreatedEvent,
    UniswapV3Factory$OnOwnerChangedEvent,
    UniswapV3Factory$OnFeeAmountEnabledEvent
{
    event UniswapV3FactoryPoolCreated(UniswapV3FactoryPoolCreatedData);
    event UniswapV3FactoryOwnerChanged(UniswapV3FactoryOwnerChangedData);
    event UniswapV3FactoryFeeAmountEnabled(UniswapV3FactoryFeeAmountEnabledData);

    function UniswapV3Factory$onPoolCreatedEvent(
        EventContext memory ctx,
        UniswapV3Factory$PoolCreatedEventParams memory params
    ) external override {
        UniswapV3FactoryPoolCreatedData memory eventData = UniswapV3FactoryPoolCreatedData({
            txHash: ctx.txn.hash(),
            caller: ctx.txn.call.callee(),
            contractAddress: ctx.txn.call.callee(),
            ordinal: 0,
            token0: params.token0,
            token1: params.token1,
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            pool: params.pool
        });

        emit UniswapV3FactoryPoolCreated(eventData);
    }

    function UniswapV3Factory$onOwnerChangedEvent(
        EventContext memory ctx,
        UniswapV3Factory$OwnerChangedEventParams memory params
    ) external override {
        UniswapV3FactoryOwnerChangedData memory eventData = UniswapV3FactoryOwnerChangedData({
            txHash: ctx.txn.hash(),
            caller: ctx.txn.call.callee(),
            contractAddress: ctx.txn.call.callee(),
            ordinal: 0,
            oldOwner: params.oldOwner,
            newOwner: params.newOwner
        });

        emit UniswapV3FactoryOwnerChanged(eventData);
    }

    function UniswapV3Factory$onFeeAmountEnabledEvent(
        EventContext memory ctx,
        UniswapV3Factory$FeeAmountEnabledEventParams memory params
    ) external override {
        UniswapV3FactoryFeeAmountEnabledData memory eventData = UniswapV3FactoryFeeAmountEnabledData({
            txHash: ctx.txn.hash(),
            caller: ctx.txn.call.callee(),
            contractAddress: ctx.txn.call.callee(),
            ordinal: 0,
            fee: params.fee,
            tickSpacing: params.tickSpacing
        });

        emit UniswapV3FactoryFeeAmountEnabled(eventData);
    }
}
