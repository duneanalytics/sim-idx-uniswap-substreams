// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function PoolManager$Abi() pure returns (Abi memory) {
    return Abi("PoolManager");
}
struct PoolManager$AllowanceFunctionInputs {
    address owner;
    address spender;
    uint256 id;
}

struct PoolManager$AllowanceFunctionOutputs {
    uint256 amount;
}

struct PoolManager$ApproveFunctionInputs {
    address spender;
    uint256 id;
    uint256 amount;
}

struct PoolManager$ApproveFunctionOutputs {
    bool outArg0;
}

struct PoolManager$BalanceOfFunctionInputs {
    address owner;
    uint256 id;
}

struct PoolManager$BalanceOfFunctionOutputs {
    uint256 balance;
}

struct PoolManager$BurnFunctionInputs {
    address from;
    uint256 id;
    uint256 amount;
}

struct PoolManager$ClearFunctionInputs {
    address currency;
    uint256 amount;
}

struct PoolManager$CollectProtocolFeesFunctionInputs {
    address recipient;
    address currency;
    uint256 amount;
}

struct PoolManager$CollectProtocolFeesFunctionOutputs {
    uint256 amountCollected;
}

struct PoolManager$PoolKey {
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
}

struct PoolManager$DonateFunctionInputs {
    PoolManager$PoolKey key;
    uint256 amount0;
    uint256 amount1;
    bytes hookData;
}

struct PoolManager$DonateFunctionOutputs {
    int256 delta;
}

struct PoolManager$Extsload0x1E2EAEAFFunctionInputs {
    bytes32 slot;
}

struct PoolManager$Extsload0x1E2EAEAFFunctionOutputs {
    bytes32 outArg0;
}

struct PoolManager$Extsload0x35FD631AFunctionInputs {
    bytes32 startSlot;
    uint256 nSlots;
}

struct PoolManager$Extsload0x35FD631AFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Extsload0xDBD035FFFunctionInputs {
    bytes32[] slots;
}

struct PoolManager$Extsload0xDBD035FFFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Exttload0x9BF6645FFunctionInputs {
    bytes32[] slots;
}

struct PoolManager$Exttload0x9BF6645FFunctionOutputs {
    bytes32[] outArg0;
}

struct PoolManager$Exttload0xF135BAAAFunctionInputs {
    bytes32 slot;
}

struct PoolManager$Exttload0xF135BAAAFunctionOutputs {
    bytes32 outArg0;
}

struct PoolManager$InitializeFunctionInputs {
    PoolManager$PoolKey key;
    uint160 sqrtPriceX96;
}

struct PoolManager$InitializeFunctionOutputs {
    int24 tick;
}

struct PoolManager$IsOperatorFunctionInputs {
    address owner;
    address operator;
}

struct PoolManager$IsOperatorFunctionOutputs {
    bool isOperator;
}

struct PoolManager$MintFunctionInputs {
    address to;
    uint256 id;
    uint256 amount;
}

struct PoolManager$IPoolManager$ModifyLiquidityParams {
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct PoolManager$ModifyLiquidityFunctionInputs {
    PoolManager$PoolKey key;
    PoolManager$IPoolManager$ModifyLiquidityParams params;
    bytes hookData;
}

struct PoolManager$ModifyLiquidityFunctionOutputs {
    int256 callerDelta;
    int256 feesAccrued;
}

struct PoolManager$OwnerFunctionOutputs {
    address outArg0;
}

struct PoolManager$ProtocolFeeControllerFunctionOutputs {
    address outArg0;
}

struct PoolManager$ProtocolFeesAccruedFunctionInputs {
    address currency;
}

struct PoolManager$ProtocolFeesAccruedFunctionOutputs {
    uint256 amount;
}

struct PoolManager$SetOperatorFunctionInputs {
    address operator;
    bool approved;
}

struct PoolManager$SetOperatorFunctionOutputs {
    bool outArg0;
}

struct PoolManager$SetProtocolFeeFunctionInputs {
    PoolManager$PoolKey key;
    uint24 newProtocolFee;
}

struct PoolManager$SetProtocolFeeControllerFunctionInputs {
    address controller;
}

struct PoolManager$SettleFunctionOutputs {
    uint256 outArg0;
}

struct PoolManager$SettleForFunctionInputs {
    address recipient;
}

struct PoolManager$SettleForFunctionOutputs {
    uint256 outArg0;
}

struct PoolManager$SupportsInterfaceFunctionInputs {
    bytes4 interfaceId;
}

struct PoolManager$SupportsInterfaceFunctionOutputs {
    bool outArg0;
}

struct PoolManager$IPoolManager$SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
}

struct PoolManager$SwapFunctionInputs {
    PoolManager$PoolKey key;
    PoolManager$IPoolManager$SwapParams params;
    bytes hookData;
}

struct PoolManager$SwapFunctionOutputs {
    int256 swapDelta;
}

struct PoolManager$SyncFunctionInputs {
    address currency;
}

struct PoolManager$TakeFunctionInputs {
    address currency;
    address to;
    uint256 amount;
}

struct PoolManager$TransferFunctionInputs {
    address receiver;
    uint256 id;
    uint256 amount;
}

struct PoolManager$TransferFunctionOutputs {
    bool outArg0;
}

struct PoolManager$TransferFromFunctionInputs {
    address sender;
    address receiver;
    uint256 id;
    uint256 amount;
}

struct PoolManager$TransferFromFunctionOutputs {
    bool outArg0;
}

struct PoolManager$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct PoolManager$UnlockFunctionInputs {
    bytes data;
}

struct PoolManager$UnlockFunctionOutputs {
    bytes result;
}

struct PoolManager$UpdateDynamicLpFeeFunctionInputs {
    PoolManager$PoolKey key;
    uint24 newDynamicLPFee;
}

struct PoolManager$ApprovalEventParams {
    address owner;
    address spender;
    uint256 id;
    uint256 amount;
}

struct PoolManager$DonateEventParams {
    bytes32 id;
    address sender;
    uint256 amount0;
    uint256 amount1;
}

struct PoolManager$InitializeEventParams {
    bytes32 id;
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct PoolManager$ModifyLiquidityEventParams {
    bytes32 id;
    address sender;
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct PoolManager$OperatorSetEventParams {
    address owner;
    address operator;
    bool approved;
}

struct PoolManager$OwnershipTransferredEventParams {
    address user;
    address newOwner;
}

struct PoolManager$ProtocolFeeControllerUpdatedEventParams {
    address protocolFeeController;
}

struct PoolManager$ProtocolFeeUpdatedEventParams {
    bytes32 id;
    uint24 protocolFee;
}

struct PoolManager$SwapEventParams {
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
    uint24 fee;
}

struct PoolManager$TransferEventParams {
    address caller;
    address from;
    address to;
    uint256 id;
    uint256 amount;
}

abstract contract PoolManager$OnApprovalEvent {
    function PoolManager$onApprovalEvent(EventContext memory ctx, PoolManager$ApprovalEventParams memory inputs) virtual external;

    function PoolManager$triggerOnApprovalEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xb3fd5071835887567a0671151121894ddccc2842f1d10bedad13e0d17cace9a7),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onApprovalEvent.selector
        });
    }
}

abstract contract PoolManager$OnDonateEvent {
    function PoolManager$onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory inputs) virtual external;

    function PoolManager$triggerOnDonateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x29ef05caaff9404b7cb6d1c0e9bbae9eaa7ab2541feba1a9c4248594c08156cb),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onDonateEvent.selector
        });
    }
}

abstract contract PoolManager$OnInitializeEvent {
    function PoolManager$onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory inputs) virtual external;

    function PoolManager$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xdd466e674ea557f56295e2d0218a125ea4b4f0f6f3307b95f85e6110838d6438),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onInitializeEvent.selector
        });
    }
}

abstract contract PoolManager$OnModifyLiquidityEvent {
    function PoolManager$onModifyLiquidityEvent(EventContext memory ctx, PoolManager$ModifyLiquidityEventParams memory inputs) virtual external;

    function PoolManager$triggerOnModifyLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xf208f4912782fd25c7f114ca3723a2d5dd6f3bcc3ac8db5af63baa85f711d5ec),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onModifyLiquidityEvent.selector
        });
    }
}

abstract contract PoolManager$OnOperatorSetEvent {
    function PoolManager$onOperatorSetEvent(EventContext memory ctx, PoolManager$OperatorSetEventParams memory inputs) virtual external;

    function PoolManager$triggerOnOperatorSetEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xceb576d9f15e4e200fdb5096d64d5dfd667e16def20c1eefd14256d8e3faa267),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onOperatorSetEvent.selector
        });
    }
}

abstract contract PoolManager$OnOwnershipTransferredEvent {
    function PoolManager$onOwnershipTransferredEvent(EventContext memory ctx, PoolManager$OwnershipTransferredEventParams memory inputs) virtual external;

    function PoolManager$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeControllerUpdatedEvent {
    function PoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external;

    function PoolManager$triggerOnProtocolFeeControllerUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xb4bd8ef53df690b9943d3318996006dbb82a25f54719d8c8035b516a2a5b8acc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onProtocolFeeControllerUpdatedEvent.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeUpdatedEvent {
    function PoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external;

    function PoolManager$triggerOnProtocolFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0xe9c42593e71f84403b84352cd168d693e2c9fcd1fdbcc3feb21d92b43e6696f9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onProtocolFeeUpdatedEvent.selector
        });
    }
}

abstract contract PoolManager$OnSwapEvent {
    function PoolManager$onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory inputs) virtual external;

    function PoolManager$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x40e9cecb9f5f1f1c5b9c97dec2917b7ee92e57ba5563708daca94dd84ad7112f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSwapEvent.selector
        });
    }
}

abstract contract PoolManager$OnTransferEvent {
    function PoolManager$onTransferEvent(EventContext memory ctx, PoolManager$TransferEventParams memory inputs) virtual external;

    function PoolManager$triggerOnTransferEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes32(0x1b3d7edb2e9c0b0e7c525b20aaaef0f5940d2ed71663c7d39266ecafac728859),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onTransferEvent.selector
        });
    }
}

abstract contract PoolManager$OnAllowanceFunction {
    function PoolManager$onAllowanceFunction(FunctionContext memory ctx, PoolManager$AllowanceFunctionInputs memory inputs, PoolManager$AllowanceFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x598af9e7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onAllowanceFunction.selector
        });
    }
}

abstract contract PoolManager$PreAllowanceFunction {
    function PoolManager$preAllowanceFunction(PreFunctionContext memory ctx, PoolManager$AllowanceFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreAllowanceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x598af9e7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preAllowanceFunction.selector
        });
    }
}

abstract contract PoolManager$OnApproveFunction {
    function PoolManager$onApproveFunction(FunctionContext memory ctx, PoolManager$ApproveFunctionInputs memory inputs, PoolManager$ApproveFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x426a8493),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onApproveFunction.selector
        });
    }
}

abstract contract PoolManager$PreApproveFunction {
    function PoolManager$preApproveFunction(PreFunctionContext memory ctx, PoolManager$ApproveFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreApproveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x426a8493),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preApproveFunction.selector
        });
    }
}

abstract contract PoolManager$OnBalanceOfFunction {
    function PoolManager$onBalanceOfFunction(FunctionContext memory ctx, PoolManager$BalanceOfFunctionInputs memory inputs, PoolManager$BalanceOfFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x00fdd58e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onBalanceOfFunction.selector
        });
    }
}

abstract contract PoolManager$PreBalanceOfFunction {
    function PoolManager$preBalanceOfFunction(PreFunctionContext memory ctx, PoolManager$BalanceOfFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x00fdd58e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preBalanceOfFunction.selector
        });
    }
}

abstract contract PoolManager$OnBurnFunction {
    function PoolManager$onBurnFunction(FunctionContext memory ctx, PoolManager$BurnFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf5298aca),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onBurnFunction.selector
        });
    }
}

abstract contract PoolManager$PreBurnFunction {
    function PoolManager$preBurnFunction(PreFunctionContext memory ctx, PoolManager$BurnFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf5298aca),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preBurnFunction.selector
        });
    }
}

abstract contract PoolManager$OnClearFunction {
    function PoolManager$onClearFunction(FunctionContext memory ctx, PoolManager$ClearFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnClearFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x80f0b44c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onClearFunction.selector
        });
    }
}

abstract contract PoolManager$PreClearFunction {
    function PoolManager$preClearFunction(PreFunctionContext memory ctx, PoolManager$ClearFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreClearFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x80f0b44c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preClearFunction.selector
        });
    }
}

abstract contract PoolManager$OnCollectProtocolFeesFunction {
    function PoolManager$onCollectProtocolFeesFunction(FunctionContext memory ctx, PoolManager$CollectProtocolFeesFunctionInputs memory inputs, PoolManager$CollectProtocolFeesFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract PoolManager$PreCollectProtocolFeesFunction {
    function PoolManager$preCollectProtocolFeesFunction(PreFunctionContext memory ctx, PoolManager$CollectProtocolFeesFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract PoolManager$OnDonateFunction {
    function PoolManager$onDonateFunction(FunctionContext memory ctx, PoolManager$DonateFunctionInputs memory inputs, PoolManager$DonateFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x234266d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onDonateFunction.selector
        });
    }
}

abstract contract PoolManager$PreDonateFunction {
    function PoolManager$preDonateFunction(PreFunctionContext memory ctx, PoolManager$DonateFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x234266d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preDonateFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0x1E2EAEAFFunction {
    function PoolManager$onExtsload0x1E2EAEAFFunction(FunctionContext memory ctx, PoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs, PoolManager$Extsload0x1E2EAEAFFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0x1E2EAEAFFunction {
    function PoolManager$preExtsload0x1E2EAEAFFunction(PreFunctionContext memory ctx, PoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0x35FD631AFunction {
    function PoolManager$onExtsload0x35FD631AFunction(FunctionContext memory ctx, PoolManager$Extsload0x35FD631AFunctionInputs memory inputs, PoolManager$Extsload0x35FD631AFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnExtsload0x35FD631AFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x35fd631a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onExtsload0x35FD631AFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0x35FD631AFunction {
    function PoolManager$preExtsload0x35FD631AFunction(PreFunctionContext memory ctx, PoolManager$Extsload0x35FD631AFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreExtsload0x35FD631AFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x35fd631a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preExtsload0x35FD631AFunction.selector
        });
    }
}

abstract contract PoolManager$OnExtsload0xDBD035FFFunction {
    function PoolManager$onExtsload0xDBD035FFFunction(FunctionContext memory ctx, PoolManager$Extsload0xDBD035FFFunctionInputs memory inputs, PoolManager$Extsload0xDBD035FFFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract PoolManager$PreExtsload0xDBD035FFFunction {
    function PoolManager$preExtsload0xDBD035FFFunction(PreFunctionContext memory ctx, PoolManager$Extsload0xDBD035FFFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract PoolManager$OnExttload0x9BF6645FFunction {
    function PoolManager$onExttload0x9BF6645FFunction(FunctionContext memory ctx, PoolManager$Exttload0x9BF6645FFunctionInputs memory inputs, PoolManager$Exttload0x9BF6645FFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnExttload0x9BF6645FFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x9bf6645f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onExttload0x9BF6645FFunction.selector
        });
    }
}

abstract contract PoolManager$PreExttload0x9BF6645FFunction {
    function PoolManager$preExttload0x9BF6645FFunction(PreFunctionContext memory ctx, PoolManager$Exttload0x9BF6645FFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreExttload0x9BF6645FFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x9bf6645f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preExttload0x9BF6645FFunction.selector
        });
    }
}

abstract contract PoolManager$OnExttload0xF135BAAAFunction {
    function PoolManager$onExttload0xF135BAAAFunction(FunctionContext memory ctx, PoolManager$Exttload0xF135BAAAFunctionInputs memory inputs, PoolManager$Exttload0xF135BAAAFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnExttload0xF135BAAAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf135baaa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onExttload0xF135BAAAFunction.selector
        });
    }
}

abstract contract PoolManager$PreExttload0xF135BAAAFunction {
    function PoolManager$preExttload0xF135BAAAFunction(PreFunctionContext memory ctx, PoolManager$Exttload0xF135BAAAFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreExttload0xF135BAAAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf135baaa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preExttload0xF135BAAAFunction.selector
        });
    }
}

abstract contract PoolManager$OnInitializeFunction {
    function PoolManager$onInitializeFunction(FunctionContext memory ctx, PoolManager$InitializeFunctionInputs memory inputs, PoolManager$InitializeFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x6276cbbe),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onInitializeFunction.selector
        });
    }
}

abstract contract PoolManager$PreInitializeFunction {
    function PoolManager$preInitializeFunction(PreFunctionContext memory ctx, PoolManager$InitializeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x6276cbbe),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preInitializeFunction.selector
        });
    }
}

abstract contract PoolManager$OnIsOperatorFunction {
    function PoolManager$onIsOperatorFunction(FunctionContext memory ctx, PoolManager$IsOperatorFunctionInputs memory inputs, PoolManager$IsOperatorFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnIsOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xb6363cf2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onIsOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$PreIsOperatorFunction {
    function PoolManager$preIsOperatorFunction(PreFunctionContext memory ctx, PoolManager$IsOperatorFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreIsOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xb6363cf2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preIsOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$OnMintFunction {
    function PoolManager$onMintFunction(FunctionContext memory ctx, PoolManager$MintFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x156e29f6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onMintFunction.selector
        });
    }
}

abstract contract PoolManager$PreMintFunction {
    function PoolManager$preMintFunction(PreFunctionContext memory ctx, PoolManager$MintFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x156e29f6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preMintFunction.selector
        });
    }
}

abstract contract PoolManager$OnModifyLiquidityFunction {
    function PoolManager$onModifyLiquidityFunction(FunctionContext memory ctx, PoolManager$ModifyLiquidityFunctionInputs memory inputs, PoolManager$ModifyLiquidityFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x5a6bcfda),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onModifyLiquidityFunction.selector
        });
    }
}

abstract contract PoolManager$PreModifyLiquidityFunction {
    function PoolManager$preModifyLiquidityFunction(PreFunctionContext memory ctx, PoolManager$ModifyLiquidityFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x5a6bcfda),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preModifyLiquidityFunction.selector
        });
    }
}

abstract contract PoolManager$OnOwnerFunction {
    function PoolManager$onOwnerFunction(FunctionContext memory ctx, PoolManager$OwnerFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onOwnerFunction.selector
        });
    }
}

abstract contract PoolManager$PreOwnerFunction {
    function PoolManager$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function PoolManager$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preOwnerFunction.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeeControllerFunction {
    function PoolManager$onProtocolFeeControllerFunction(FunctionContext memory ctx, PoolManager$ProtocolFeeControllerFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$PreProtocolFeeControllerFunction {
    function PoolManager$preProtocolFeeControllerFunction(PreFunctionContext memory ctx) virtual external;

    function PoolManager$triggerPreProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$OnProtocolFeesAccruedFunction {
    function PoolManager$onProtocolFeesAccruedFunction(FunctionContext memory ctx, PoolManager$ProtocolFeesAccruedFunctionInputs memory inputs, PoolManager$ProtocolFeesAccruedFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract PoolManager$PreProtocolFeesAccruedFunction {
    function PoolManager$preProtocolFeesAccruedFunction(PreFunctionContext memory ctx, PoolManager$ProtocolFeesAccruedFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetOperatorFunction {
    function PoolManager$onSetOperatorFunction(FunctionContext memory ctx, PoolManager$SetOperatorFunctionInputs memory inputs, PoolManager$SetOperatorFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x558a7297),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSetOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetOperatorFunction {
    function PoolManager$preSetOperatorFunction(PreFunctionContext memory ctx, PoolManager$SetOperatorFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSetOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x558a7297),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSetOperatorFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetProtocolFeeFunction {
    function PoolManager$onSetProtocolFeeFunction(FunctionContext memory ctx, PoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x7e87ce7d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetProtocolFeeFunction {
    function PoolManager$preSetProtocolFeeFunction(PreFunctionContext memory ctx, PoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x7e87ce7d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract PoolManager$OnSetProtocolFeeControllerFunction {
    function PoolManager$onSetProtocolFeeControllerFunction(FunctionContext memory ctx, PoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$PreSetProtocolFeeControllerFunction {
    function PoolManager$preSetProtocolFeeControllerFunction(PreFunctionContext memory ctx, PoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract PoolManager$OnSettleFunction {
    function PoolManager$onSettleFunction(FunctionContext memory ctx, PoolManager$SettleFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x11da60b4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSettleFunction.selector
        });
    }
}

abstract contract PoolManager$PreSettleFunction {
    function PoolManager$preSettleFunction(PreFunctionContext memory ctx) virtual external;

    function PoolManager$triggerPreSettleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x11da60b4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSettleFunction.selector
        });
    }
}

abstract contract PoolManager$OnSettleForFunction {
    function PoolManager$onSettleForFunction(FunctionContext memory ctx, PoolManager$SettleForFunctionInputs memory inputs, PoolManager$SettleForFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnSettleForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x3dd45adb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSettleForFunction.selector
        });
    }
}

abstract contract PoolManager$PreSettleForFunction {
    function PoolManager$preSettleForFunction(PreFunctionContext memory ctx, PoolManager$SettleForFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSettleForFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x3dd45adb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSettleForFunction.selector
        });
    }
}

abstract contract PoolManager$OnSupportsInterfaceFunction {
    function PoolManager$onSupportsInterfaceFunction(FunctionContext memory ctx, PoolManager$SupportsInterfaceFunctionInputs memory inputs, PoolManager$SupportsInterfaceFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSupportsInterfaceFunction.selector
        });
    }
}

abstract contract PoolManager$PreSupportsInterfaceFunction {
    function PoolManager$preSupportsInterfaceFunction(PreFunctionContext memory ctx, PoolManager$SupportsInterfaceFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSupportsInterfaceFunction.selector
        });
    }
}

abstract contract PoolManager$OnSwapFunction {
    function PoolManager$onSwapFunction(FunctionContext memory ctx, PoolManager$SwapFunctionInputs memory inputs, PoolManager$SwapFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf3cd914c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSwapFunction.selector
        });
    }
}

abstract contract PoolManager$PreSwapFunction {
    function PoolManager$preSwapFunction(PreFunctionContext memory ctx, PoolManager$SwapFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf3cd914c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSwapFunction.selector
        });
    }
}

abstract contract PoolManager$OnSyncFunction {
    function PoolManager$onSyncFunction(FunctionContext memory ctx, PoolManager$SyncFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xa5841194),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onSyncFunction.selector
        });
    }
}

abstract contract PoolManager$PreSyncFunction {
    function PoolManager$preSyncFunction(PreFunctionContext memory ctx, PoolManager$SyncFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreSyncFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xa5841194),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preSyncFunction.selector
        });
    }
}

abstract contract PoolManager$OnTakeFunction {
    function PoolManager$onTakeFunction(FunctionContext memory ctx, PoolManager$TakeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnTakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x0b0d9c09),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onTakeFunction.selector
        });
    }
}

abstract contract PoolManager$PreTakeFunction {
    function PoolManager$preTakeFunction(PreFunctionContext memory ctx, PoolManager$TakeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreTakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x0b0d9c09),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preTakeFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferFunction {
    function PoolManager$onTransferFunction(FunctionContext memory ctx, PoolManager$TransferFunctionInputs memory inputs, PoolManager$TransferFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x095bcdb6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onTransferFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferFunction {
    function PoolManager$preTransferFunction(PreFunctionContext memory ctx, PoolManager$TransferFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreTransferFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x095bcdb6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preTransferFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferFromFunction {
    function PoolManager$onTransferFromFunction(FunctionContext memory ctx, PoolManager$TransferFromFunctionInputs memory inputs, PoolManager$TransferFromFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xfe99049a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onTransferFromFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferFromFunction {
    function PoolManager$preTransferFromFunction(PreFunctionContext memory ctx, PoolManager$TransferFromFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreTransferFromFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xfe99049a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preTransferFromFunction.selector
        });
    }
}

abstract contract PoolManager$OnTransferOwnershipFunction {
    function PoolManager$onTransferOwnershipFunction(FunctionContext memory ctx, PoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract PoolManager$PreTransferOwnershipFunction {
    function PoolManager$preTransferOwnershipFunction(PreFunctionContext memory ctx, PoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract PoolManager$OnUnlockFunction {
    function PoolManager$onUnlockFunction(FunctionContext memory ctx, PoolManager$UnlockFunctionInputs memory inputs, PoolManager$UnlockFunctionOutputs memory outputs) virtual external;

    function PoolManager$triggerOnUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onUnlockFunction.selector
        });
    }
}

abstract contract PoolManager$PreUnlockFunction {
    function PoolManager$preUnlockFunction(PreFunctionContext memory ctx, PoolManager$UnlockFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreUnlockFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x48c89491),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preUnlockFunction.selector
        });
    }
}

abstract contract PoolManager$OnUpdateDynamicLpFeeFunction {
    function PoolManager$onUpdateDynamicLpFeeFunction(FunctionContext memory ctx, PoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerOnUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x52759651),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$onUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract PoolManager$PreUpdateDynamicLpFeeFunction {
    function PoolManager$preUpdateDynamicLpFeeFunction(PreFunctionContext memory ctx, PoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function PoolManager$triggerPreUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PoolManager",
            selector: bytes4(0x52759651),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PoolManager$preUpdateDynamicLpFeeFunction.selector
        });
    }
}

contract PoolManager$EmitAllEvents is
  PoolManager$OnApprovalEvent,
PoolManager$OnDonateEvent,
PoolManager$OnInitializeEvent,
PoolManager$OnModifyLiquidityEvent,
PoolManager$OnOperatorSetEvent,
PoolManager$OnOwnershipTransferredEvent,
PoolManager$OnProtocolFeeControllerUpdatedEvent,
PoolManager$OnProtocolFeeUpdatedEvent,
PoolManager$OnSwapEvent,
PoolManager$OnTransferEvent
{
  event Approval(address owner, address spender, uint256 id, uint256 amount);
event Donate(bytes32 id, address sender, uint256 amount0, uint256 amount1);
event Initialize(bytes32 id, address currency0, address currency1, uint24 fee, int24 tickSpacing, address hooks, uint160 sqrtPriceX96, int24 tick);
event ModifyLiquidity(bytes32 id, address sender, int24 tickLower, int24 tickUpper, int256 liquidityDelta, bytes32 salt);
event OperatorSet(address owner, address operator, bool approved);
event OwnershipTransferred(address user, address newOwner);
event ProtocolFeeControllerUpdated(address protocolFeeController);
event ProtocolFeeUpdated(bytes32 id, uint24 protocolFee);
event Swap(bytes32 id, address sender, int128 amount0, int128 amount1, uint160 sqrtPriceX96, uint128 liquidity, int24 tick, uint24 fee);
event Transfer(address caller, address from, address to, uint256 id, uint256 amount);

  function PoolManager$onApprovalEvent(EventContext memory ctx, PoolManager$ApprovalEventParams memory inputs) virtual external override {
    emit Approval(inputs.owner, inputs.spender, inputs.id, inputs.amount);
  }
function PoolManager$onDonateEvent(EventContext memory ctx, PoolManager$DonateEventParams memory inputs) virtual external override {
    emit Donate(inputs.id, inputs.sender, inputs.amount0, inputs.amount1);
  }
function PoolManager$onInitializeEvent(EventContext memory ctx, PoolManager$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(inputs.id, inputs.currency0, inputs.currency1, inputs.fee, inputs.tickSpacing, inputs.hooks, inputs.sqrtPriceX96, inputs.tick);
  }
function PoolManager$onModifyLiquidityEvent(EventContext memory ctx, PoolManager$ModifyLiquidityEventParams memory inputs) virtual external override {
    emit ModifyLiquidity(inputs.id, inputs.sender, inputs.tickLower, inputs.tickUpper, inputs.liquidityDelta, inputs.salt);
  }
function PoolManager$onOperatorSetEvent(EventContext memory ctx, PoolManager$OperatorSetEventParams memory inputs) virtual external override {
    emit OperatorSet(inputs.owner, inputs.operator, inputs.approved);
  }
function PoolManager$onOwnershipTransferredEvent(EventContext memory ctx, PoolManager$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.user, inputs.newOwner);
  }
function PoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeControllerUpdated(inputs.protocolFeeController);
  }
function PoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, PoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeUpdated(inputs.id, inputs.protocolFee);
  }
function PoolManager$onSwapEvent(EventContext memory ctx, PoolManager$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick, inputs.fee);
  }
function PoolManager$onTransferEvent(EventContext memory ctx, PoolManager$TransferEventParams memory inputs) virtual external override {
    emit Transfer(inputs.caller, inputs.from, inputs.to, inputs.id, inputs.amount);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](10);
    triggers[0] = this.PoolManager$triggerOnApprovalEvent();
    triggers[1] = this.PoolManager$triggerOnDonateEvent();
    triggers[2] = this.PoolManager$triggerOnInitializeEvent();
    triggers[3] = this.PoolManager$triggerOnModifyLiquidityEvent();
    triggers[4] = this.PoolManager$triggerOnOperatorSetEvent();
    triggers[5] = this.PoolManager$triggerOnOwnershipTransferredEvent();
    triggers[6] = this.PoolManager$triggerOnProtocolFeeControllerUpdatedEvent();
    triggers[7] = this.PoolManager$triggerOnProtocolFeeUpdatedEvent();
    triggers[8] = this.PoolManager$triggerOnSwapEvent();
    triggers[9] = this.PoolManager$triggerOnTransferEvent();
    return triggers;
  }
}