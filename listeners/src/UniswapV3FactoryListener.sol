// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV3.sol";

contract UniswapV3FactoryListener is
    UniswapV3Factory$OnPoolCreatedEvent,
    UniswapV3Factory$OnOwnerChangedEvent,
    UniswapV3Factory$OnFeeAmountEnabledEvent
{
    event PoolCreated(UniswapV3FactoryPoolCreated);
    event OwnerChanged(UniswapV3FactoryOwnerChanged);
    event FeeAmountEnabled(UniswapV3FactoryFeeAmountEnabled);

    function UniswapV3Factory$onPoolCreatedEvent(
        EventContext memory ctx,
        UniswapV3Factory$PoolCreatedEventParams memory params
    ) external override {
        UniswapV3FactoryPoolCreated memory eventData = UniswapV3FactoryPoolCreated({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            token0: params.token0,
            token1: params.token1,
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            pool: params.pool
        });

        emit PoolCreated(eventData);
    }

    function UniswapV3Factory$onOwnerChangedEvent(
        EventContext memory ctx,
        UniswapV3Factory$OwnerChangedEventParams memory params
    ) external override {
        UniswapV3FactoryOwnerChanged memory eventData = UniswapV3FactoryOwnerChanged({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            oldOwner: params.oldOwner,
            newOwner: params.newOwner
        });

        emit OwnerChanged(eventData);
    }

    function UniswapV3Factory$onFeeAmountEnabledEvent(
        EventContext memory ctx,
        UniswapV3Factory$FeeAmountEnabledEventParams memory params
    ) external override {
        UniswapV3FactoryFeeAmountEnabled memory eventData = UniswapV3FactoryFeeAmountEnabled({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            fee: params.fee,
            tickSpacing: params.tickSpacing
        });

        emit FeeAmountEnabled(eventData);
    }
}
