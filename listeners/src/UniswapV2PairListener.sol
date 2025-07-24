// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/UniswapV2.sol";
import "./utils/FactoryResolver.sol";
import {IUniswapV2Pair} from "./interfaces/UniswapInterfaces.sol";

contract UniswapV2PairListener is
    FactoryResolver,
    UniswapV2Pair$OnSyncEvent,
    UniswapV2Pair$OnMintEvent,
    UniswapV2Pair$OnBurnEvent,
    UniswapV2Pair$OnSwapEvent
{
    event Sync(UniswapV2PairSync);
    event Mint(UniswapV2PairMint);
    event Burn(UniswapV2PairBurn);
    event Swap(UniswapV2PairSwap);

    modifier onlyOfficialPair(address pair) {
        if (IUniswapV2Pair(pair).factory() != getUniswapV2Factory(block.chainid)) {
            return;
        }
        _;
    }

    function UniswapV2Pair$onSyncEvent(EventContext memory ctx, UniswapV2Pair$SyncEventParams memory params)
        external
        override
        onlyOfficialPair(ctx.txn.call.callee)
    {
        UniswapV2PairSync memory eventData = UniswapV2PairSync({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            reserve0: params.reserve0,
            reserve1: params.reserve1
        });

        emit Sync(eventData);
    }

    function UniswapV2Pair$onMintEvent(EventContext memory ctx, UniswapV2Pair$MintEventParams memory params)
        external
        override
        onlyOfficialPair(ctx.txn.call.callee)
    {
        UniswapV2PairMint memory eventData = UniswapV2PairMint({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            amount0: params.amount0,
            amount1: params.amount1
        });

        emit Mint(eventData);
    }

    function UniswapV2Pair$onBurnEvent(EventContext memory ctx, UniswapV2Pair$BurnEventParams memory params)
        external
        override
        onlyOfficialPair(ctx.txn.call.callee)
    {
        UniswapV2PairBurn memory eventData = UniswapV2PairBurn({
            txHash: ctx.txn.hash,
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            amount0: params.amount0,
            amount1: params.amount1,
            to: params.to
        });

        emit Burn(eventData);
    }

    function UniswapV2Pair$onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory params)
        external
        override
        onlyOfficialPair(ctx.txn.call.callee)
    {
        UniswapV2PairSwap memory eventData = UniswapV2PairSwap({
            txHash: ctx.txn.hash,
            txFrom: tx.origin,
            txTo: address(0),
            caller: ctx.txn.call.callee,
            contractAddress: ctx.txn.call.callee,
            ordinal: 0,
            sender: params.sender,
            amount0In: params.amount0In,
            amount1In: params.amount1In,
            amount0Out: params.amount0Out,
            amount1Out: params.amount1Out,
            to: params.to
        });

        emit Swap(eventData);
    }
}
