// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function UniswapV3Pool$Abi() pure returns (Abi memory) {
    return Abi("UniswapV3Pool");
}
struct UniswapV3Pool$BurnFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
}

struct UniswapV3Pool$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3Pool$CollectFunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct UniswapV3Pool$CollectFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct UniswapV3Pool$CollectProtocolFunctionInputs {
    address recipient;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct UniswapV3Pool$CollectProtocolFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct UniswapV3Pool$FactoryFunctionOutputs {
    address outArg0;
}

struct UniswapV3Pool$FeeFunctionOutputs {
    uint24 outArg0;
}

struct UniswapV3Pool$FeeGrowthGlobal0X128FunctionOutputs {
    uint256 outArg0;
}

struct UniswapV3Pool$FeeGrowthGlobal1X128FunctionOutputs {
    uint256 outArg0;
}

struct UniswapV3Pool$FlashFunctionInputs {
    address recipient;
    uint256 amount0;
    uint256 amount1;
    bytes data;
}

struct UniswapV3Pool$IncreaseObservationCardinalityNextFunctionInputs {
    uint16 observationCardinalityNext;
}

struct UniswapV3Pool$InitializeFunctionInputs {
    uint160 sqrtPriceX96;
}

struct UniswapV3Pool$LiquidityFunctionOutputs {
    uint128 outArg0;
}

struct UniswapV3Pool$MaxLiquidityPerTickFunctionOutputs {
    uint128 outArg0;
}

struct UniswapV3Pool$MintFunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    bytes data;
}

struct UniswapV3Pool$MintFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3Pool$ObservationsFunctionInputs {
    uint256 outArg0;
}

struct UniswapV3Pool$ObservationsFunctionOutputs {
    uint32 blockTimestamp;
    int56 tickCumulative;
    uint160 secondsPerLiquidityCumulativeX128;
    bool initialized;
}

struct UniswapV3Pool$ObserveFunctionInputs {
    uint32[] secondsAgos;
}

struct UniswapV3Pool$ObserveFunctionOutputs {
    int56[] tickCumulatives;
    uint160[] secondsPerLiquidityCumulativeX128s;
}

struct UniswapV3Pool$PositionsFunctionInputs {
    bytes32 outArg0;
}

struct UniswapV3Pool$PositionsFunctionOutputs {
    uint128 liquidity;
    uint256 feeGrowthInside0LastX128;
    uint256 feeGrowthInside1LastX128;
    uint128 tokensOwed0;
    uint128 tokensOwed1;
}

struct UniswapV3Pool$ProtocolFeesFunctionOutputs {
    uint128 token0;
    uint128 token1;
}

struct UniswapV3Pool$SetFeeProtocolFunctionInputs {
    uint8 feeProtocol0;
    uint8 feeProtocol1;
}

struct UniswapV3Pool$Slot0FunctionOutputs {
    uint160 sqrtPriceX96;
    int24 tick;
    uint16 observationIndex;
    uint16 observationCardinality;
    uint16 observationCardinalityNext;
    uint8 feeProtocol;
    bool unlocked;
}

struct UniswapV3Pool$SnapshotCumulativesInsideFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
}

struct UniswapV3Pool$SnapshotCumulativesInsideFunctionOutputs {
    int56 tickCumulativeInside;
    uint160 secondsPerLiquidityInsideX128;
    uint32 secondsInside;
}

struct UniswapV3Pool$SwapFunctionInputs {
    address recipient;
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
    bytes data;
}

struct UniswapV3Pool$SwapFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct UniswapV3Pool$TickBitmapFunctionInputs {
    int16 outArg0;
}

struct UniswapV3Pool$TickBitmapFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV3Pool$TickSpacingFunctionOutputs {
    int24 outArg0;
}

struct UniswapV3Pool$TicksFunctionInputs {
    int24 outArg0;
}

struct UniswapV3Pool$TicksFunctionOutputs {
    uint128 liquidityGross;
    int128 liquidityNet;
    uint256 feeGrowthOutside0X128;
    uint256 feeGrowthOutside1X128;
    int56 tickCumulativeOutside;
    uint160 secondsPerLiquidityOutsideX128;
    uint32 secondsOutside;
    bool initialized;
}

struct UniswapV3Pool$Token0FunctionOutputs {
    address outArg0;
}

struct UniswapV3Pool$Token1FunctionOutputs {
    address outArg0;
}

struct UniswapV3Pool$BurnEventParams {
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3Pool$CollectEventParams {
    address owner;
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0;
    uint128 amount1;
}

struct UniswapV3Pool$CollectProtocolEventParams {
    address sender;
    address recipient;
    uint128 amount0;
    uint128 amount1;
}

struct UniswapV3Pool$FlashEventParams {
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
    uint256 paid0;
    uint256 paid1;
}

struct UniswapV3Pool$IncreaseObservationCardinalityNextEventParams {
    uint16 observationCardinalityNextOld;
    uint16 observationCardinalityNextNew;
}

struct UniswapV3Pool$InitializeEventParams {
    uint160 sqrtPriceX96;
    int24 tick;
}

struct UniswapV3Pool$MintEventParams {
    address sender;
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV3Pool$SetFeeProtocolEventParams {
    uint8 feeProtocol0Old;
    uint8 feeProtocol1Old;
    uint8 feeProtocol0New;
    uint8 feeProtocol1New;
}

struct UniswapV3Pool$SwapEventParams {
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
}

abstract contract UniswapV3Pool$OnBurnEvent {
    function UniswapV3Pool$onBurnEvent(EventContext memory ctx, UniswapV3Pool$BurnEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x0c396cd989a39f4459b5fa1aed6a9a8dcdbc45908acfd67e028cd568da98982c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onBurnEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnCollectEvent {
    function UniswapV3Pool$onCollectEvent(EventContext memory ctx, UniswapV3Pool$CollectEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnCollectEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x70935338e69775456a85ddef226c395fb668b63fa0115f5f20610b388e6ca9c0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onCollectEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnCollectProtocolEvent {
    function UniswapV3Pool$onCollectProtocolEvent(EventContext memory ctx, UniswapV3Pool$CollectProtocolEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnCollectProtocolEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x596b573906218d3411850b26a6b437d6c4522fdb43d2d2386263f86d50b8b151),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onCollectProtocolEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFlashEvent {
    function UniswapV3Pool$onFlashEvent(EventContext memory ctx, UniswapV3Pool$FlashEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnFlashEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0xbdbdb71d7860376ba52b25a5028beea23581364a40522f6bcfb86bb1f2dca633),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFlashEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnIncreaseObservationCardinalityNextEvent {
    function UniswapV3Pool$onIncreaseObservationCardinalityNextEvent(EventContext memory ctx, UniswapV3Pool$IncreaseObservationCardinalityNextEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnIncreaseObservationCardinalityNextEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0xac49e518f90a358f652e4400164f05a5d8f7e35e7747279bc3a93dbf584e125a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onIncreaseObservationCardinalityNextEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnInitializeEvent {
    function UniswapV3Pool$onInitializeEvent(EventContext memory ctx, UniswapV3Pool$InitializeEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x98636036cb66a9c19a37435efc1e90142190214e8abeb821bdba3f2990dd4c95),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onInitializeEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnMintEvent {
    function UniswapV3Pool$onMintEvent(EventContext memory ctx, UniswapV3Pool$MintEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x7a53080ba414158be7ec69b987b5fb7d07dee101fe85488f0853ae16239d0bde),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onMintEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSetFeeProtocolEvent {
    function UniswapV3Pool$onSetFeeProtocolEvent(EventContext memory ctx, UniswapV3Pool$SetFeeProtocolEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnSetFeeProtocolEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0x973d8d92bb299f4af6ce49b52a8adb85ae46b9f214c4c4fc06ac77401237b133),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSetFeeProtocolEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSwapEvent {
    function UniswapV3Pool$onSwapEvent(EventContext memory ctx, UniswapV3Pool$SwapEventParams memory inputs) virtual external;

    function UniswapV3Pool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes32(0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSwapEvent.selector
        });
    }
}

abstract contract UniswapV3Pool$OnBurnFunction {
    function UniswapV3Pool$onBurnFunction(FunctionContext memory ctx, UniswapV3Pool$BurnFunctionInputs memory inputs, UniswapV3Pool$BurnFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onBurnFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreBurnFunction {
    function UniswapV3Pool$preBurnFunction(PreFunctionContext memory ctx, UniswapV3Pool$BurnFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preBurnFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnCollectFunction {
    function UniswapV3Pool$onCollectFunction(FunctionContext memory ctx, UniswapV3Pool$CollectFunctionInputs memory inputs, UniswapV3Pool$CollectFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onCollectFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreCollectFunction {
    function UniswapV3Pool$preCollectFunction(PreFunctionContext memory ctx, UniswapV3Pool$CollectFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preCollectFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnCollectProtocolFunction {
    function UniswapV3Pool$onCollectProtocolFunction(FunctionContext memory ctx, UniswapV3Pool$CollectProtocolFunctionInputs memory inputs, UniswapV3Pool$CollectProtocolFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnCollectProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x85b66729),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onCollectProtocolFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreCollectProtocolFunction {
    function UniswapV3Pool$preCollectProtocolFunction(PreFunctionContext memory ctx, UniswapV3Pool$CollectProtocolFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreCollectProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x85b66729),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preCollectProtocolFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFactoryFunction {
    function UniswapV3Pool$onFactoryFunction(FunctionContext memory ctx, UniswapV3Pool$FactoryFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFactoryFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreFactoryFunction {
    function UniswapV3Pool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preFactoryFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFeeFunction {
    function UniswapV3Pool$onFeeFunction(FunctionContext memory ctx, UniswapV3Pool$FeeFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFeeFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreFeeFunction {
    function UniswapV3Pool$preFeeFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preFeeFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFeeGrowthGlobal0X128Function {
    function UniswapV3Pool$onFeeGrowthGlobal0X128Function(FunctionContext memory ctx, UniswapV3Pool$FeeGrowthGlobal0X128FunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract UniswapV3Pool$PreFeeGrowthGlobal0X128Function {
    function UniswapV3Pool$preFeeGrowthGlobal0X128Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFeeGrowthGlobal1X128Function {
    function UniswapV3Pool$onFeeGrowthGlobal1X128Function(FunctionContext memory ctx, UniswapV3Pool$FeeGrowthGlobal1X128FunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract UniswapV3Pool$PreFeeGrowthGlobal1X128Function {
    function UniswapV3Pool$preFeeGrowthGlobal1X128Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract UniswapV3Pool$OnFlashFunction {
    function UniswapV3Pool$onFlashFunction(FunctionContext memory ctx, UniswapV3Pool$FlashFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerOnFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onFlashFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreFlashFunction {
    function UniswapV3Pool$preFlashFunction(PreFunctionContext memory ctx, UniswapV3Pool$FlashFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preFlashFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnIncreaseObservationCardinalityNextFunction {
    function UniswapV3Pool$onIncreaseObservationCardinalityNextFunction(FunctionContext memory ctx, UniswapV3Pool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerOnIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreIncreaseObservationCardinalityNextFunction {
    function UniswapV3Pool$preIncreaseObservationCardinalityNextFunction(PreFunctionContext memory ctx, UniswapV3Pool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnInitializeFunction {
    function UniswapV3Pool$onInitializeFunction(FunctionContext memory ctx, UniswapV3Pool$InitializeFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onInitializeFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreInitializeFunction {
    function UniswapV3Pool$preInitializeFunction(PreFunctionContext memory ctx, UniswapV3Pool$InitializeFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preInitializeFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnLiquidityFunction {
    function UniswapV3Pool$onLiquidityFunction(FunctionContext memory ctx, UniswapV3Pool$LiquidityFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreLiquidityFunction {
    function UniswapV3Pool$preLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnMaxLiquidityPerTickFunction {
    function UniswapV3Pool$onMaxLiquidityPerTickFunction(FunctionContext memory ctx, UniswapV3Pool$MaxLiquidityPerTickFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreMaxLiquidityPerTickFunction {
    function UniswapV3Pool$preMaxLiquidityPerTickFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnMintFunction {
    function UniswapV3Pool$onMintFunction(FunctionContext memory ctx, UniswapV3Pool$MintFunctionInputs memory inputs, UniswapV3Pool$MintFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onMintFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreMintFunction {
    function UniswapV3Pool$preMintFunction(PreFunctionContext memory ctx, UniswapV3Pool$MintFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preMintFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnObservationsFunction {
    function UniswapV3Pool$onObservationsFunction(FunctionContext memory ctx, UniswapV3Pool$ObservationsFunctionInputs memory inputs, UniswapV3Pool$ObservationsFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onObservationsFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreObservationsFunction {
    function UniswapV3Pool$preObservationsFunction(PreFunctionContext memory ctx, UniswapV3Pool$ObservationsFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preObservationsFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnObserveFunction {
    function UniswapV3Pool$onObserveFunction(FunctionContext memory ctx, UniswapV3Pool$ObserveFunctionInputs memory inputs, UniswapV3Pool$ObserveFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onObserveFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreObserveFunction {
    function UniswapV3Pool$preObserveFunction(PreFunctionContext memory ctx, UniswapV3Pool$ObserveFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preObserveFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnPositionsFunction {
    function UniswapV3Pool$onPositionsFunction(FunctionContext memory ctx, UniswapV3Pool$PositionsFunctionInputs memory inputs, UniswapV3Pool$PositionsFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onPositionsFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PrePositionsFunction {
    function UniswapV3Pool$prePositionsFunction(PreFunctionContext memory ctx, UniswapV3Pool$PositionsFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPrePositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$prePositionsFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnProtocolFeesFunction {
    function UniswapV3Pool$onProtocolFeesFunction(FunctionContext memory ctx, UniswapV3Pool$ProtocolFeesFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x1ad8b03b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onProtocolFeesFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreProtocolFeesFunction {
    function UniswapV3Pool$preProtocolFeesFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x1ad8b03b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preProtocolFeesFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSetFeeProtocolFunction {
    function UniswapV3Pool$onSetFeeProtocolFunction(FunctionContext memory ctx, UniswapV3Pool$SetFeeProtocolFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerOnSetFeeProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x8206a4d1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSetFeeProtocolFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreSetFeeProtocolFunction {
    function UniswapV3Pool$preSetFeeProtocolFunction(PreFunctionContext memory ctx, UniswapV3Pool$SetFeeProtocolFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreSetFeeProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x8206a4d1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preSetFeeProtocolFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSlot0Function {
    function UniswapV3Pool$onSlot0Function(FunctionContext memory ctx, UniswapV3Pool$Slot0FunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSlot0Function.selector
        });
    }
}

abstract contract UniswapV3Pool$PreSlot0Function {
    function UniswapV3Pool$preSlot0Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preSlot0Function.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSnapshotCumulativesInsideFunction {
    function UniswapV3Pool$onSnapshotCumulativesInsideFunction(FunctionContext memory ctx, UniswapV3Pool$SnapshotCumulativesInsideFunctionInputs memory inputs, UniswapV3Pool$SnapshotCumulativesInsideFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreSnapshotCumulativesInsideFunction {
    function UniswapV3Pool$preSnapshotCumulativesInsideFunction(PreFunctionContext memory ctx, UniswapV3Pool$SnapshotCumulativesInsideFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnSwapFunction {
    function UniswapV3Pool$onSwapFunction(FunctionContext memory ctx, UniswapV3Pool$SwapFunctionInputs memory inputs, UniswapV3Pool$SwapFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onSwapFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreSwapFunction {
    function UniswapV3Pool$preSwapFunction(PreFunctionContext memory ctx, UniswapV3Pool$SwapFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preSwapFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnTickBitmapFunction {
    function UniswapV3Pool$onTickBitmapFunction(FunctionContext memory ctx, UniswapV3Pool$TickBitmapFunctionInputs memory inputs, UniswapV3Pool$TickBitmapFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onTickBitmapFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreTickBitmapFunction {
    function UniswapV3Pool$preTickBitmapFunction(PreFunctionContext memory ctx, UniswapV3Pool$TickBitmapFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preTickBitmapFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnTickSpacingFunction {
    function UniswapV3Pool$onTickSpacingFunction(FunctionContext memory ctx, UniswapV3Pool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onTickSpacingFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreTickSpacingFunction {
    function UniswapV3Pool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preTickSpacingFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnTicksFunction {
    function UniswapV3Pool$onTicksFunction(FunctionContext memory ctx, UniswapV3Pool$TicksFunctionInputs memory inputs, UniswapV3Pool$TicksFunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onTicksFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$PreTicksFunction {
    function UniswapV3Pool$preTicksFunction(PreFunctionContext memory ctx, UniswapV3Pool$TicksFunctionInputs memory inputs) virtual external;

    function UniswapV3Pool$triggerPreTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preTicksFunction.selector
        });
    }
}

abstract contract UniswapV3Pool$OnToken0Function {
    function UniswapV3Pool$onToken0Function(FunctionContext memory ctx, UniswapV3Pool$Token0FunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onToken0Function.selector
        });
    }
}

abstract contract UniswapV3Pool$PreToken0Function {
    function UniswapV3Pool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preToken0Function.selector
        });
    }
}

abstract contract UniswapV3Pool$OnToken1Function {
    function UniswapV3Pool$onToken1Function(FunctionContext memory ctx, UniswapV3Pool$Token1FunctionOutputs memory outputs) virtual external;

    function UniswapV3Pool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$onToken1Function.selector
        });
    }
}

abstract contract UniswapV3Pool$PreToken1Function {
    function UniswapV3Pool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Pool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Pool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Pool$preToken1Function.selector
        });
    }
}

contract UniswapV3Pool$EmitAllEvents is
  UniswapV3Pool$OnBurnEvent,
UniswapV3Pool$OnCollectEvent,
UniswapV3Pool$OnCollectProtocolEvent,
UniswapV3Pool$OnFlashEvent,
UniswapV3Pool$OnIncreaseObservationCardinalityNextEvent,
UniswapV3Pool$OnInitializeEvent,
UniswapV3Pool$OnMintEvent,
UniswapV3Pool$OnSetFeeProtocolEvent,
UniswapV3Pool$OnSwapEvent
{
  event Burn(address owner, int24 tickLower, int24 tickUpper, uint128 amount, uint256 amount0, uint256 amount1);
event Collect(address owner, address recipient, int24 tickLower, int24 tickUpper, uint128 amount0, uint128 amount1);
event CollectProtocol(address sender, address recipient, uint128 amount0, uint128 amount1);
event Flash(address sender, address recipient, uint256 amount0, uint256 amount1, uint256 paid0, uint256 paid1);
event IncreaseObservationCardinalityNext(uint16 observationCardinalityNextOld, uint16 observationCardinalityNextNew);
event Initialize(uint160 sqrtPriceX96, int24 tick);
event Mint(address sender, address owner, int24 tickLower, int24 tickUpper, uint128 amount, uint256 amount0, uint256 amount1);
event SetFeeProtocol(uint8 feeProtocol0Old, uint8 feeProtocol1Old, uint8 feeProtocol0New, uint8 feeProtocol1New);
event Swap(address sender, address recipient, int256 amount0, int256 amount1, uint160 sqrtPriceX96, uint128 liquidity, int24 tick);

  function UniswapV3Pool$onBurnEvent(EventContext memory ctx, UniswapV3Pool$BurnEventParams memory inputs) virtual external override {
    emit Burn(inputs.owner, inputs.tickLower, inputs.tickUpper, inputs.amount, inputs.amount0, inputs.amount1);
  }
function UniswapV3Pool$onCollectEvent(EventContext memory ctx, UniswapV3Pool$CollectEventParams memory inputs) virtual external override {
    emit Collect(inputs.owner, inputs.recipient, inputs.tickLower, inputs.tickUpper, inputs.amount0, inputs.amount1);
  }
function UniswapV3Pool$onCollectProtocolEvent(EventContext memory ctx, UniswapV3Pool$CollectProtocolEventParams memory inputs) virtual external override {
    emit CollectProtocol(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1);
  }
function UniswapV3Pool$onFlashEvent(EventContext memory ctx, UniswapV3Pool$FlashEventParams memory inputs) virtual external override {
    emit Flash(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.paid0, inputs.paid1);
  }
function UniswapV3Pool$onIncreaseObservationCardinalityNextEvent(EventContext memory ctx, UniswapV3Pool$IncreaseObservationCardinalityNextEventParams memory inputs) virtual external override {
    emit IncreaseObservationCardinalityNext(inputs.observationCardinalityNextOld, inputs.observationCardinalityNextNew);
  }
function UniswapV3Pool$onInitializeEvent(EventContext memory ctx, UniswapV3Pool$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(inputs.sqrtPriceX96, inputs.tick);
  }
function UniswapV3Pool$onMintEvent(EventContext memory ctx, UniswapV3Pool$MintEventParams memory inputs) virtual external override {
    emit Mint(inputs.sender, inputs.owner, inputs.tickLower, inputs.tickUpper, inputs.amount, inputs.amount0, inputs.amount1);
  }
function UniswapV3Pool$onSetFeeProtocolEvent(EventContext memory ctx, UniswapV3Pool$SetFeeProtocolEventParams memory inputs) virtual external override {
    emit SetFeeProtocol(inputs.feeProtocol0Old, inputs.feeProtocol1Old, inputs.feeProtocol0New, inputs.feeProtocol1New);
  }
function UniswapV3Pool$onSwapEvent(EventContext memory ctx, UniswapV3Pool$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](9);
    triggers[0] = this.UniswapV3Pool$triggerOnBurnEvent();
    triggers[1] = this.UniswapV3Pool$triggerOnCollectEvent();
    triggers[2] = this.UniswapV3Pool$triggerOnCollectProtocolEvent();
    triggers[3] = this.UniswapV3Pool$triggerOnFlashEvent();
    triggers[4] = this.UniswapV3Pool$triggerOnIncreaseObservationCardinalityNextEvent();
    triggers[5] = this.UniswapV3Pool$triggerOnInitializeEvent();
    triggers[6] = this.UniswapV3Pool$triggerOnMintEvent();
    triggers[7] = this.UniswapV3Pool$triggerOnSetFeeProtocolEvent();
    triggers[8] = this.UniswapV3Pool$triggerOnSwapEvent();
    return triggers;
  }
}