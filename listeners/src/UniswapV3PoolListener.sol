// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV3.sol";
import "./utils/FactoryResolver.sol";
import {IUniswapV3Pool} from "./interfaces/UniswapInterfaces.sol";

contract UniswapV3PoolListener is
    FactoryResolver,
    UniswapV3Pool$OnSwapEvent,
    UniswapV3Pool$OnMintEvent,
    UniswapV3Pool$OnBurnEvent,
    UniswapV3Pool$OnInitializeEvent,
    UniswapV3Pool$OnCollectEvent,
    UniswapV3Pool$OnFlashEvent,
    UniswapV3Pool$OnIncreaseObservationCardinalityNextEvent,
    UniswapV3Pool$OnSetFeeProtocolEvent,
    UniswapV3Pool$OnCollectProtocolEvent
{
    event UniswapV3PoolSwap(UniswapV3PoolSwapData);
    event UniswapV3PoolMint(UniswapV3PoolMintData);
    event UniswapV3PoolBurn(UniswapV3PoolBurnData);
    event UniswapV3PoolInitialize(UniswapV3PoolInitializeData);
    event UniswapV3PoolCollect(UniswapV3PoolCollectData);
    event UniswapV3PoolFlash(UniswapV3PoolFlashData);
    event UniswapV3PoolIncreaseObservationCardinalityNext(UniswapV3PoolIncreaseObservationCardinalityNextData);
    event UniswapV3PoolSetFeeProtocol(UniswapV3PoolSetFeeProtocolData);
    event UniswapV3PoolCollectProtocol(UniswapV3PoolCollectProtocolData);

    modifier onlyOfficialPool(address pair) {
        if (IUniswapV3Pool(pair).factory() != getUniswapV3Factory(block.chainid)) {
            return;
        }
        _;
    }

    function UniswapV3Pool$onSwapEvent(EventContext memory ctx, UniswapV3Pool$SwapEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolSwapData memory eventData = UniswapV3PoolSwapData({
            txHash: ctx.txn.hash,
            txFrom: tx.origin,
            txTo: address(0),
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            recipient: params.recipient,
            amount0: params.amount0,
            amount1: params.amount1,
            sqrtPriceX96: params.sqrtPriceX96,
            liquidity: params.liquidity,
            tick: params.tick
        });

        emit UniswapV3PoolSwap(eventData);
    }

    function UniswapV3Pool$onMintEvent(EventContext memory ctx, UniswapV3Pool$MintEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolMintData memory eventData = UniswapV3PoolMintData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            owner: params.owner,
            tickLower: params.tickLower,
            tickUpper: params.tickUpper,
            amount: params.amount,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit UniswapV3PoolMint(eventData);
    }

    function UniswapV3Pool$onBurnEvent(EventContext memory ctx, UniswapV3Pool$BurnEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolBurnData memory eventData = UniswapV3PoolBurnData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            owner: params.owner,
            amount: params.amount,
            amount0: params.amount0,
            amount1: params.amount1,
            tickLower: params.tickLower,
            tickUpper: params.tickUpper
        });

        emit UniswapV3PoolBurn(eventData);
    }

    function UniswapV3Pool$onInitializeEvent(EventContext memory ctx, UniswapV3Pool$InitializeEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolInitializeData memory eventData = UniswapV3PoolInitializeData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sqrtPriceX96: params.sqrtPriceX96,
            tick: params.tick
        });

        emit UniswapV3PoolInitialize(eventData);
    }

    function UniswapV3Pool$onCollectEvent(EventContext memory ctx, UniswapV3Pool$CollectEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolCollectData memory eventData = UniswapV3PoolCollectData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            owner: params.owner,
            recipient: params.recipient,
            amount0: params.amount0,
            amount1: params.amount1,
            tickLower: params.tickLower,
            tickUpper: params.tickUpper
        });

        emit UniswapV3PoolCollect(eventData);
    }

    function UniswapV3Pool$onFlashEvent(EventContext memory ctx, UniswapV3Pool$FlashEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolFlashData memory eventData = UniswapV3PoolFlashData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            recipient: params.recipient,
            amount0: params.amount0,
            amount1: params.amount1,
            paid0: params.paid0,
            paid1: params.paid1
        });

        emit UniswapV3PoolFlash(eventData);
    }

    function UniswapV3Pool$onIncreaseObservationCardinalityNextEvent(
        EventContext memory ctx,
        UniswapV3Pool$IncreaseObservationCardinalityNextEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolIncreaseObservationCardinalityNextData memory eventData =
        UniswapV3PoolIncreaseObservationCardinalityNextData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            observationCardinalityNextOld: params.observationCardinalityNextOld,
            observationCardinalityNextNew: params.observationCardinalityNextNew
        });

        emit UniswapV3PoolIncreaseObservationCardinalityNext(eventData);
    }

    function UniswapV3Pool$onSetFeeProtocolEvent(
        EventContext memory ctx,
        UniswapV3Pool$SetFeeProtocolEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolSetFeeProtocolData memory eventData = UniswapV3PoolSetFeeProtocolData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            feeProtocol0Old: params.feeProtocol0Old,
            feeProtocol1Old: params.feeProtocol1Old,
            feeProtocol0New: params.feeProtocol0New,
            feeProtocol1New: params.feeProtocol1New
        });

        emit UniswapV3PoolSetFeeProtocol(eventData);
    }

    function UniswapV3Pool$onCollectProtocolEvent(
        EventContext memory ctx,
        UniswapV3Pool$CollectProtocolEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolCollectProtocolData memory eventData = UniswapV3PoolCollectProtocolData({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            recipient: params.recipient,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit UniswapV3PoolCollectProtocol(eventData);
    }
}
