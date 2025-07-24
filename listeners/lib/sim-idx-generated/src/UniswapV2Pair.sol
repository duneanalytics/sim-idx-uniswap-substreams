// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function UniswapV2Pair$Abi() pure returns (Abi memory) {
    return Abi("UniswapV2Pair");
}
struct UniswapV2Pair$DomainSeparatorFunctionOutputs {
    bytes32 outArg0;
}

struct UniswapV2Pair$MinimumLiquidityFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$PermitTypehashFunctionOutputs {
    bytes32 outArg0;
}

struct UniswapV2Pair$AllowanceFunctionInputs {
    address outArg0;
    address outArg1;
}

struct UniswapV2Pair$AllowanceFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$ApproveFunctionInputs {
    address spender;
    uint256 value;
}

struct UniswapV2Pair$ApproveFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$BalanceOfFunctionInputs {
    address outArg0;
}

struct UniswapV2Pair$BalanceOfFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$BurnFunctionInputs {
    address to;
}

struct UniswapV2Pair$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV2Pair$DecimalsFunctionOutputs {
    uint8 outArg0;
}

struct UniswapV2Pair$FactoryFunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$GetReservesFunctionOutputs {
    uint112 _reserve0;
    uint112 _reserve1;
    uint32 _blockTimestampLast;
}

struct UniswapV2Pair$InitializeFunctionInputs {
    address _token0;
    address _token1;
}

struct UniswapV2Pair$KLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$MintFunctionInputs {
    address to;
}

struct UniswapV2Pair$MintFunctionOutputs {
    uint256 liquidity;
}

struct UniswapV2Pair$NameFunctionOutputs {
    string outArg0;
}

struct UniswapV2Pair$NoncesFunctionInputs {
    address outArg0;
}

struct UniswapV2Pair$NoncesFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$PermitFunctionInputs {
    address owner;
    address spender;
    uint256 value;
    uint256 deadline;
    uint8 v;
    bytes32 r;
    bytes32 s;
}

struct UniswapV2Pair$Price0CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$Price1CumulativeLastFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$SkimFunctionInputs {
    address to;
}

struct UniswapV2Pair$SwapFunctionInputs {
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
    bytes data;
}

struct UniswapV2Pair$SymbolFunctionOutputs {
    string outArg0;
}

struct UniswapV2Pair$Token0FunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$Token1FunctionOutputs {
    address outArg0;
}

struct UniswapV2Pair$TotalSupplyFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Pair$TransferFunctionInputs {
    address to;
    uint256 value;
}

struct UniswapV2Pair$TransferFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$TransferFromFunctionInputs {
    address from;
    address to;
    uint256 value;
}

struct UniswapV2Pair$TransferFromFunctionOutputs {
    bool outArg0;
}

struct UniswapV2Pair$ApprovalEventParams {
    address owner;
    address spender;
    uint256 value;
}

struct UniswapV2Pair$BurnEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
    address to;
}

struct UniswapV2Pair$MintEventParams {
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct UniswapV2Pair$SwapEventParams {
    address sender;
    uint256 amount0In;
    uint256 amount1In;
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
}

struct UniswapV2Pair$SyncEventParams {
    uint112 reserve0;
    uint112 reserve1;
}

struct UniswapV2Pair$TransferEventParams {
    address from;
    address to;
    uint256 value;
}

abstract contract UniswapV2Pair$OnApprovalEvent {
    function UniswapV2Pair$onApprovalEvent(EventContext memory ctx, UniswapV2Pair$ApprovalEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onApprovalEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBurnEvent {
    function UniswapV2Pair$onBurnEvent(EventContext memory ctx, UniswapV2Pair$BurnEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xdccd412f0b1252819cb1fd330b93224ca42612892bb3f4f789976e6d81936496),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onBurnEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMintEvent {
    function UniswapV2Pair$onMintEvent(EventContext memory ctx, UniswapV2Pair$MintEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x4c209b5fc8ad50758f13e2e1088ba56a560dff690a1c6fef26394f4c03821c4f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onMintEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSwapEvent {
    function UniswapV2Pair$onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xd78ad95fa46c994b6551d0da85fc275fe613ce37657fb8d5e3d130840159d822),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSwapEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSyncEvent {
    function UniswapV2Pair$onSyncEvent(EventContext memory ctx, UniswapV2Pair$SyncEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnSyncEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSyncEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferEvent {
    function UniswapV2Pair$onTransferEvent(EventContext memory ctx, UniswapV2Pair$TransferEventParams memory inputs) virtual external;

    function UniswapV2Pair$triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes32(0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onTransferEvent.selector
        });
    }
}

abstract contract UniswapV2Pair$OnDomainSeparatorFunction {
    function UniswapV2Pair$onDomainSeparatorFunction(FunctionContext memory ctx, UniswapV2Pair$DomainSeparatorFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onDomainSeparatorFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreDomainSeparatorFunction {
    function UniswapV2Pair$preDomainSeparatorFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreDomainSeparatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x3644e515),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preDomainSeparatorFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMinimumLiquidityFunction {
    function UniswapV2Pair$onMinimumLiquidityFunction(FunctionContext memory ctx, UniswapV2Pair$MinimumLiquidityFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnMinimumLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xba9a7a56),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onMinimumLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreMinimumLiquidityFunction {
    function UniswapV2Pair$preMinimumLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreMinimumLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xba9a7a56),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preMinimumLiquidityFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPermitTypehashFunction {
    function UniswapV2Pair$onPermitTypehashFunction(FunctionContext memory ctx, UniswapV2Pair$PermitTypehashFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnPermitTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x30adf81f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onPermitTypehashFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePermitTypehashFunction {
    function UniswapV2Pair$prePermitTypehashFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPrePermitTypehashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x30adf81f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$prePermitTypehashFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnAllowanceFunction {
    function UniswapV2Pair$onAllowanceFunction(FunctionContext memory ctx, UniswapV2Pair$AllowanceFunctionInputs memory inputs, UniswapV2Pair$AllowanceFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onAllowanceFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreAllowanceFunction {
    function UniswapV2Pair$preAllowanceFunction(PreFunctionContext memory ctx, UniswapV2Pair$AllowanceFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xdd62ed3e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preAllowanceFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnApproveFunction {
    function UniswapV2Pair$onApproveFunction(FunctionContext memory ctx, UniswapV2Pair$ApproveFunctionInputs memory inputs, UniswapV2Pair$ApproveFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onApproveFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreApproveFunction {
    function UniswapV2Pair$preApproveFunction(PreFunctionContext memory ctx, UniswapV2Pair$ApproveFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x095ea7b3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preApproveFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBalanceOfFunction {
    function UniswapV2Pair$onBalanceOfFunction(FunctionContext memory ctx, UniswapV2Pair$BalanceOfFunctionInputs memory inputs, UniswapV2Pair$BalanceOfFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onBalanceOfFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreBalanceOfFunction {
    function UniswapV2Pair$preBalanceOfFunction(PreFunctionContext memory ctx, UniswapV2Pair$BalanceOfFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x70a08231),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preBalanceOfFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnBurnFunction {
    function UniswapV2Pair$onBurnFunction(FunctionContext memory ctx, UniswapV2Pair$BurnFunctionInputs memory inputs, UniswapV2Pair$BurnFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onBurnFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreBurnFunction {
    function UniswapV2Pair$preBurnFunction(PreFunctionContext memory ctx, UniswapV2Pair$BurnFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x89afcb44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preBurnFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnDecimalsFunction {
    function UniswapV2Pair$onDecimalsFunction(FunctionContext memory ctx, UniswapV2Pair$DecimalsFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onDecimalsFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreDecimalsFunction {
    function UniswapV2Pair$preDecimalsFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreDecimalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x313ce567),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preDecimalsFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnFactoryFunction {
    function UniswapV2Pair$onFactoryFunction(FunctionContext memory ctx, UniswapV2Pair$FactoryFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onFactoryFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreFactoryFunction {
    function UniswapV2Pair$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preFactoryFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnGetReservesFunction {
    function UniswapV2Pair$onGetReservesFunction(FunctionContext memory ctx, UniswapV2Pair$GetReservesFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onGetReservesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreGetReservesFunction {
    function UniswapV2Pair$preGetReservesFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preGetReservesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnInitializeFunction {
    function UniswapV2Pair$onInitializeFunction(FunctionContext memory ctx, UniswapV2Pair$InitializeFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x485cc955),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onInitializeFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreInitializeFunction {
    function UniswapV2Pair$preInitializeFunction(PreFunctionContext memory ctx, UniswapV2Pair$InitializeFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x485cc955),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preInitializeFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnKLastFunction {
    function UniswapV2Pair$onKLastFunction(FunctionContext memory ctx, UniswapV2Pair$KLastFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnKLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7464fc3d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onKLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreKLastFunction {
    function UniswapV2Pair$preKLastFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreKLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7464fc3d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preKLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnMintFunction {
    function UniswapV2Pair$onMintFunction(FunctionContext memory ctx, UniswapV2Pair$MintFunctionInputs memory inputs, UniswapV2Pair$MintFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onMintFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreMintFunction {
    function UniswapV2Pair$preMintFunction(PreFunctionContext memory ctx, UniswapV2Pair$MintFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x6a627842),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preMintFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnNameFunction {
    function UniswapV2Pair$onNameFunction(FunctionContext memory ctx, UniswapV2Pair$NameFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onNameFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreNameFunction {
    function UniswapV2Pair$preNameFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreNameFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x06fdde03),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preNameFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnNoncesFunction {
    function UniswapV2Pair$onNoncesFunction(FunctionContext memory ctx, UniswapV2Pair$NoncesFunctionInputs memory inputs, UniswapV2Pair$NoncesFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onNoncesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreNoncesFunction {
    function UniswapV2Pair$preNoncesFunction(PreFunctionContext memory ctx, UniswapV2Pair$NoncesFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreNoncesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x7ecebe00),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preNoncesFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPermitFunction {
    function UniswapV2Pair$onPermitFunction(FunctionContext memory ctx, UniswapV2Pair$PermitFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerOnPermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onPermitFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePermitFunction {
    function UniswapV2Pair$prePermitFunction(PreFunctionContext memory ctx, UniswapV2Pair$PermitFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPrePermitFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd505accf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$prePermitFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPrice0CumulativeLastFunction {
    function UniswapV2Pair$onPrice0CumulativeLastFunction(FunctionContext memory ctx, UniswapV2Pair$Price0CumulativeLastFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnPrice0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5909c0d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onPrice0CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePrice0CumulativeLastFunction {
    function UniswapV2Pair$prePrice0CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPrePrice0CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5909c0d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$prePrice0CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnPrice1CumulativeLastFunction {
    function UniswapV2Pair$onPrice1CumulativeLastFunction(FunctionContext memory ctx, UniswapV2Pair$Price1CumulativeLastFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnPrice1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5a3d5493),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onPrice1CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PrePrice1CumulativeLastFunction {
    function UniswapV2Pair$prePrice1CumulativeLastFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPrePrice1CumulativeLastFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x5a3d5493),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$prePrice1CumulativeLastFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSkimFunction {
    function UniswapV2Pair$onSkimFunction(FunctionContext memory ctx, UniswapV2Pair$SkimFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerOnSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSkimFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSkimFunction {
    function UniswapV2Pair$preSkimFunction(PreFunctionContext memory ctx, UniswapV2Pair$SkimFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreSkimFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xbc25cf77),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preSkimFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSwapFunction {
    function UniswapV2Pair$onSwapFunction(FunctionContext memory ctx, UniswapV2Pair$SwapFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSwapFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSwapFunction {
    function UniswapV2Pair$preSwapFunction(PreFunctionContext memory ctx, UniswapV2Pair$SwapFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preSwapFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSymbolFunction {
    function UniswapV2Pair$onSymbolFunction(FunctionContext memory ctx, UniswapV2Pair$SymbolFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSymbolFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSymbolFunction {
    function UniswapV2Pair$preSymbolFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreSymbolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x95d89b41),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preSymbolFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnSyncFunction {
    function UniswapV2Pair$onSyncFunction(FunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onSyncFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreSyncFunction {
    function UniswapV2Pair$preSyncFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xfff6cae9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preSyncFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnToken0Function {
    function UniswapV2Pair$onToken0Function(FunctionContext memory ctx, UniswapV2Pair$Token0FunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onToken0Function.selector
        });
    }
}

abstract contract UniswapV2Pair$PreToken0Function {
    function UniswapV2Pair$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preToken0Function.selector
        });
    }
}

abstract contract UniswapV2Pair$OnToken1Function {
    function UniswapV2Pair$onToken1Function(FunctionContext memory ctx, UniswapV2Pair$Token1FunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onToken1Function.selector
        });
    }
}

abstract contract UniswapV2Pair$PreToken1Function {
    function UniswapV2Pair$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preToken1Function.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTotalSupplyFunction {
    function UniswapV2Pair$onTotalSupplyFunction(FunctionContext memory ctx, UniswapV2Pair$TotalSupplyFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onTotalSupplyFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTotalSupplyFunction {
    function UniswapV2Pair$preTotalSupplyFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Pair$triggerPreTotalSupplyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x18160ddd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preTotalSupplyFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferFunction {
    function UniswapV2Pair$onTransferFunction(FunctionContext memory ctx, UniswapV2Pair$TransferFunctionInputs memory inputs, UniswapV2Pair$TransferFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onTransferFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTransferFunction {
    function UniswapV2Pair$preTransferFunction(PreFunctionContext memory ctx, UniswapV2Pair$TransferFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0xa9059cbb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preTransferFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$OnTransferFromFunction {
    function UniswapV2Pair$onTransferFromFunction(FunctionContext memory ctx, UniswapV2Pair$TransferFromFunctionInputs memory inputs, UniswapV2Pair$TransferFromFunctionOutputs memory outputs) virtual external;

    function UniswapV2Pair$triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$onTransferFromFunction.selector
        });
    }
}

abstract contract UniswapV2Pair$PreTransferFromFunction {
    function UniswapV2Pair$preTransferFromFunction(PreFunctionContext memory ctx, UniswapV2Pair$TransferFromFunctionInputs memory inputs) virtual external;

    function UniswapV2Pair$triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Pair",
            selector: bytes4(0x23b872dd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Pair$preTransferFromFunction.selector
        });
    }
}

contract UniswapV2Pair$EmitAllEvents is
  UniswapV2Pair$OnApprovalEvent,
UniswapV2Pair$OnBurnEvent,
UniswapV2Pair$OnMintEvent,
UniswapV2Pair$OnSwapEvent,
UniswapV2Pair$OnSyncEvent,
UniswapV2Pair$OnTransferEvent
{
  event Approval(address owner, address spender, uint256 value);
event Burn(address sender, uint256 amount0, uint256 amount1, address to);
event Mint(address sender, uint256 amount0, uint256 amount1);
event Swap(address sender, uint256 amount0In, uint256 amount1In, uint256 amount0Out, uint256 amount1Out, address to);
event Sync(uint112 reserve0, uint112 reserve1);
event Transfer(address from, address to, uint256 value);

  function UniswapV2Pair$onApprovalEvent(EventContext memory ctx, UniswapV2Pair$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(inputs.owner, inputs.spender, inputs.value);
  }
function UniswapV2Pair$onBurnEvent(EventContext memory ctx, UniswapV2Pair$BurnEventParams memory inputs) virtual external override {
    emit Burn(inputs.sender, inputs.amount0, inputs.amount1, inputs.to);
  }
function UniswapV2Pair$onMintEvent(EventContext memory ctx, UniswapV2Pair$MintEventParams memory inputs) virtual external override {
    emit Mint(inputs.sender, inputs.amount0, inputs.amount1);
  }
function UniswapV2Pair$onSwapEvent(EventContext memory ctx, UniswapV2Pair$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.sender, inputs.amount0In, inputs.amount1In, inputs.amount0Out, inputs.amount1Out, inputs.to);
  }
function UniswapV2Pair$onSyncEvent(EventContext memory ctx, UniswapV2Pair$SyncEventParams memory inputs) virtual external override {
    emit Sync(inputs.reserve0, inputs.reserve1);
  }
function UniswapV2Pair$onTransferEvent(EventContext memory ctx, UniswapV2Pair$TransferEventParams memory inputs) virtual external override {
    emit Transfer(inputs.from, inputs.to, inputs.value);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](6);
    triggers[0] = this.UniswapV2Pair$triggerOnApprovalEvent();
    triggers[1] = this.UniswapV2Pair$triggerOnBurnEvent();
    triggers[2] = this.UniswapV2Pair$triggerOnMintEvent();
    triggers[3] = this.UniswapV2Pair$triggerOnSwapEvent();
    triggers[4] = this.UniswapV2Pair$triggerOnSyncEvent();
    triggers[5] = this.UniswapV2Pair$triggerOnTransferEvent();
    return triggers;
  }
}