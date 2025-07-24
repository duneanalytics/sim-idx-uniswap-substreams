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
    event Initialize(UniswapV4Initialize);
    event Swap(UniswapV4Swap);
    event ModifyLiquidity(UniswapV4ModifyLiquidity);
    event Donate(UniswapV4Donate);
    event ProtocolFeeControllerUpdated(UniswapV4ProtocolFeeControllerUpdated);
    event ProtocolFeeUpdated(UniswapV4ProtocolFeeUpdated);

    function PoolManager$onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory params)
        external
        override
    {
        UniswapV4Initialize memory eventData = UniswapV4Initialize({
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

        emit Initialize(eventData);
    }

    function PoolManager$onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory params)
        external
        override
    {
        UniswapV4Swap memory eventData = UniswapV4Swap({
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

        emit Swap(eventData);
    }

    function PoolManager$onModifyLiquidityEvent(
        EventContext memory ctx,
        PoolManager$ModifyLiquidityEventParams memory params
    ) external override {
        UniswapV4ModifyLiquidity memory eventData = UniswapV4ModifyLiquidity({
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

        emit ModifyLiquidity(eventData);
    }

    function PoolManager$onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory params)
        external
        override
    {
        UniswapV4Donate memory eventData = UniswapV4Donate({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            sender: params.sender,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit Donate(eventData);
    }

    function PoolManager$onProtocolFeeControllerUpdatedEvent(
        EventContext memory ctx,
        PoolManager$ProtocolFeeControllerUpdatedEventParams memory params
    ) external override {
        UniswapV4ProtocolFeeControllerUpdated memory eventData = UniswapV4ProtocolFeeControllerUpdated({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            protocolFeeController: params.protocolFeeController
        });

        emit ProtocolFeeControllerUpdated(eventData);
    }

    function PoolManager$onProtocolFeeUpdatedEvent(
        EventContext memory ctx,
        PoolManager$ProtocolFeeUpdatedEventParams memory params
    ) external override {
        UniswapV4ProtocolFeeUpdated memory eventData = UniswapV4ProtocolFeeUpdated({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            id: params.id,
            protocolFee: params.protocolFee
        });

        emit ProtocolFeeUpdated(eventData);
    }
}
