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
    event Swap(UniswapV3PoolSwap);
    event Mint(UniswapV3PoolMint);
    event Burn(UniswapV3PoolBurn);
    event Initialize(UniswapV3PoolInitialize);
    event Collect(UniswapV3PoolCollect);
    event Flash(UniswapV3PoolFlash);
    event IncreaseObservationCardinalityNext(UniswapV3PoolIncreaseObservationCardinalityNext);
    event SetFeeProtocol(UniswapV3PoolSetFeeProtocol);
    event CollectProtocol(UniswapV3PoolCollectProtocol);

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
        UniswapV3PoolSwap memory eventData = UniswapV3PoolSwap({
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

        emit Swap(eventData);
    }

    function UniswapV3Pool$onMintEvent(EventContext memory ctx, UniswapV3Pool$MintEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolMint memory eventData = UniswapV3PoolMint({
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

        emit Mint(eventData);
    }

    function UniswapV3Pool$onBurnEvent(EventContext memory ctx, UniswapV3Pool$BurnEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolBurn memory eventData = UniswapV3PoolBurn({
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

        emit Burn(eventData);
    }

    function UniswapV3Pool$onInitializeEvent(EventContext memory ctx, UniswapV3Pool$InitializeEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolInitialize memory eventData = UniswapV3PoolInitialize({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sqrtPriceX96: params.sqrtPriceX96,
            tick: params.tick
        });

        emit Initialize(eventData);
    }

    function UniswapV3Pool$onCollectEvent(EventContext memory ctx, UniswapV3Pool$CollectEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolCollect memory eventData = UniswapV3PoolCollect({
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

        emit Collect(eventData);
    }

    function UniswapV3Pool$onFlashEvent(EventContext memory ctx, UniswapV3Pool$FlashEventParams memory params)
        external
        override
        onlyOfficialPool(ctx.txn.call.callee)
    {
        UniswapV3PoolFlash memory eventData = UniswapV3PoolFlash({
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

        emit Flash(eventData);
    }

    function UniswapV3Pool$onIncreaseObservationCardinalityNextEvent(
        EventContext memory ctx,
        UniswapV3Pool$IncreaseObservationCardinalityNextEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolIncreaseObservationCardinalityNext memory eventData =
        UniswapV3PoolIncreaseObservationCardinalityNext({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            observationCardinalityNextOld: params.observationCardinalityNextOld,
            observationCardinalityNextNew: params.observationCardinalityNextNew
        });

        emit IncreaseObservationCardinalityNext(eventData);
    }

    function UniswapV3Pool$onSetFeeProtocolEvent(
        EventContext memory ctx,
        UniswapV3Pool$SetFeeProtocolEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolSetFeeProtocol memory eventData = UniswapV3PoolSetFeeProtocol({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            feeProtocol0Old: params.feeProtocol0Old,
            feeProtocol1Old: params.feeProtocol1Old,
            feeProtocol0New: params.feeProtocol0New,
            feeProtocol1New: params.feeProtocol1New
        });

        emit SetFeeProtocol(eventData);
    }

    function UniswapV3Pool$onCollectProtocolEvent(
        EventContext memory ctx,
        UniswapV3Pool$CollectProtocolEventParams memory params
    ) external override onlyOfficialPool(ctx.txn.call.callee) {
        UniswapV3PoolCollectProtocol memory eventData = UniswapV3PoolCollectProtocol({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            recipient: params.recipient,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit CollectProtocol(eventData);
    }
}
