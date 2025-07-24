// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV4.sol";

contract PoolManagerListener is
    PoolManager$OnInitializeEvent,
    PoolManager$OnSwapEvent,
    PoolManager$OnModifyLiquidityEvent,
    PoolManager$OnDonateEvent,
    PoolManager$OnProtocolFeeControllerUpdatedEvent,
    PoolManager$OnProtocolFeeUpdatedEvent
{
    // Event declarations
    event UniswapV4Initialize(UniswapV4InitializeData);
    event UniswapV4Swap(UniswapV4SwapData);
    event UniswapV4ModifyLiquidity(UniswapV4ModifyLiquidityData);
    event UniswapV4Donate(UniswapV4DonateData);
    event UniswapV4ProtocolFeeControllerUpdated(UniswapV4ProtocolFeeControllerUpdatedData);
    event UniswapV4ProtocolFeeUpdated(UniswapV4ProtocolFeeUpdatedData);

    function PoolManager$onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory params)
        external
        override
    {
        UniswapV4InitializeData memory eventData = UniswapV4InitializeData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            currency0: params.currency0,
            currency1: params.currency1,
            fee: params.fee,
            tickSpacing: params.tickSpacing,
            hooks: params.hooks,
            sqrtPriceX96: params.sqrtPriceX96,
            tick: params.tick
        });

        emit UniswapV4Initialize(eventData);
    }

    function PoolManager$onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory params)
        external
        override
    {
        UniswapV4SwapData memory eventData = UniswapV4SwapData({
            txHash: ctx.txn.hash,
            txFrom: tx.origin,
            txTo: address(0),
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            sender: params.sender,
            amount0: params.amount0,
            amount1: params.amount1,
            sqrtPriceX96: params.sqrtPriceX96,
            liquidity: params.liquidity,
            tick: params.tick,
            fee: params.fee
        });

        emit UniswapV4Swap(eventData);
    }

    function PoolManager$onModifyLiquidityEvent(
        EventContext memory ctx,
        PoolManager$ModifyLiquidityEventParams memory params
    ) external override {
        UniswapV4ModifyLiquidityData memory eventData = UniswapV4ModifyLiquidityData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            sender: params.sender,
            tickLower: params.tickLower,
            tickUpper: params.tickUpper,
            liquidityDelta: params.liquidityDelta,
            salt: params.salt
        });

        emit UniswapV4ModifyLiquidity(eventData);
    }

    function PoolManager$onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory params)
        external
        override
    {
        UniswapV4DonateData memory eventData = UniswapV4DonateData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            sender: params.sender,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit UniswapV4Donate(eventData);
    }

    function PoolManager$onProtocolFeeControllerUpdatedEvent(
        EventContext memory ctx,
        PoolManager$ProtocolFeeControllerUpdatedEventParams memory params
    ) external override {
        UniswapV4ProtocolFeeControllerUpdatedData memory eventData = UniswapV4ProtocolFeeControllerUpdatedData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            protocolFeeController: params.protocolFeeController
        });

        emit UniswapV4ProtocolFeeControllerUpdated(eventData);
    }

    function PoolManager$onProtocolFeeUpdatedEvent(
        EventContext memory ctx,
        PoolManager$ProtocolFeeUpdatedEventParams memory params
    ) external override {
        UniswapV4ProtocolFeeUpdatedData memory eventData = UniswapV4ProtocolFeeUpdatedData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            protocolFee: params.protocolFee
        });

        emit UniswapV4ProtocolFeeUpdated(eventData);
    }
}
