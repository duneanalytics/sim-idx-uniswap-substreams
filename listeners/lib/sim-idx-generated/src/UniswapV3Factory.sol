// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function UniswapV3Factory$Abi() pure returns (Abi memory) {
    return Abi("UniswapV3Factory");
}
struct UniswapV3Factory$CreatePoolFunctionInputs {
    address tokenA;
    address tokenB;
    uint24 fee;
}

struct UniswapV3Factory$CreatePoolFunctionOutputs {
    address pool;
}

struct UniswapV3Factory$EnableFeeAmountFunctionInputs {
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$FeeAmountTickSpacingFunctionInputs {
    uint24 outArg0;
}

struct UniswapV3Factory$FeeAmountTickSpacingFunctionOutputs {
    int24 outArg0;
}

struct UniswapV3Factory$GetPoolFunctionInputs {
    address outArg0;
    address outArg1;
    uint24 outArg2;
}

struct UniswapV3Factory$GetPoolFunctionOutputs {
    address outArg0;
}

struct UniswapV3Factory$OwnerFunctionOutputs {
    address outArg0;
}

struct UniswapV3Factory$ParametersFunctionOutputs {
    address factory;
    address token0;
    address token1;
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$SetOwnerFunctionInputs {
    address _owner;
}

struct UniswapV3Factory$FeeAmountEnabledEventParams {
    uint24 fee;
    int24 tickSpacing;
}

struct UniswapV3Factory$OwnerChangedEventParams {
    address oldOwner;
    address newOwner;
}

struct UniswapV3Factory$PoolCreatedEventParams {
    address token0;
    address token1;
    uint24 fee;
    int24 tickSpacing;
    address pool;
}

abstract contract UniswapV3Factory$OnFeeAmountEnabledEvent {
    function UniswapV3Factory$onFeeAmountEnabledEvent(EventContext memory ctx, UniswapV3Factory$FeeAmountEnabledEventParams memory inputs) virtual external;

    function UniswapV3Factory$triggerOnFeeAmountEnabledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes32(0xc66a3fdf07232cdd185febcc6579d408c241b47ae2f9907d84be655141eeaecc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onFeeAmountEnabledEvent.selector
        });
    }
}

abstract contract UniswapV3Factory$OnOwnerChangedEvent {
    function UniswapV3Factory$onOwnerChangedEvent(EventContext memory ctx, UniswapV3Factory$OwnerChangedEventParams memory inputs) virtual external;

    function UniswapV3Factory$triggerOnOwnerChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes32(0xb532073b38c83145e3e5135377a08bf9aab55bc0fd7c1179cd4fb995d2a5159c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onOwnerChangedEvent.selector
        });
    }
}

abstract contract UniswapV3Factory$OnPoolCreatedEvent {
    function UniswapV3Factory$onPoolCreatedEvent(EventContext memory ctx, UniswapV3Factory$PoolCreatedEventParams memory inputs) virtual external;

    function UniswapV3Factory$triggerOnPoolCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes32(0x783cca1c0412dd0d695e784568c96da2e9c22ff989357a2e8b1d9b2b4e6b7118),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onPoolCreatedEvent.selector
        });
    }
}

abstract contract UniswapV3Factory$OnCreatePoolFunction {
    function UniswapV3Factory$onCreatePoolFunction(FunctionContext memory ctx, UniswapV3Factory$CreatePoolFunctionInputs memory inputs, UniswapV3Factory$CreatePoolFunctionOutputs memory outputs) virtual external;

    function UniswapV3Factory$triggerOnCreatePoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0xa1671295),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onCreatePoolFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreCreatePoolFunction {
    function UniswapV3Factory$preCreatePoolFunction(PreFunctionContext memory ctx, UniswapV3Factory$CreatePoolFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerPreCreatePoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0xa1671295),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preCreatePoolFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnEnableFeeAmountFunction {
    function UniswapV3Factory$onEnableFeeAmountFunction(FunctionContext memory ctx, UniswapV3Factory$EnableFeeAmountFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerOnEnableFeeAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x8a7c195f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onEnableFeeAmountFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreEnableFeeAmountFunction {
    function UniswapV3Factory$preEnableFeeAmountFunction(PreFunctionContext memory ctx, UniswapV3Factory$EnableFeeAmountFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerPreEnableFeeAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x8a7c195f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preEnableFeeAmountFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnFeeAmountTickSpacingFunction {
    function UniswapV3Factory$onFeeAmountTickSpacingFunction(FunctionContext memory ctx, UniswapV3Factory$FeeAmountTickSpacingFunctionInputs memory inputs, UniswapV3Factory$FeeAmountTickSpacingFunctionOutputs memory outputs) virtual external;

    function UniswapV3Factory$triggerOnFeeAmountTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x22afcccb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onFeeAmountTickSpacingFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreFeeAmountTickSpacingFunction {
    function UniswapV3Factory$preFeeAmountTickSpacingFunction(PreFunctionContext memory ctx, UniswapV3Factory$FeeAmountTickSpacingFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerPreFeeAmountTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x22afcccb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preFeeAmountTickSpacingFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnGetPoolFunction {
    function UniswapV3Factory$onGetPoolFunction(FunctionContext memory ctx, UniswapV3Factory$GetPoolFunctionInputs memory inputs, UniswapV3Factory$GetPoolFunctionOutputs memory outputs) virtual external;

    function UniswapV3Factory$triggerOnGetPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x1698ee82),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onGetPoolFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreGetPoolFunction {
    function UniswapV3Factory$preGetPoolFunction(PreFunctionContext memory ctx, UniswapV3Factory$GetPoolFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerPreGetPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x1698ee82),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preGetPoolFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnOwnerFunction {
    function UniswapV3Factory$onOwnerFunction(FunctionContext memory ctx, UniswapV3Factory$OwnerFunctionOutputs memory outputs) virtual external;

    function UniswapV3Factory$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onOwnerFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreOwnerFunction {
    function UniswapV3Factory$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Factory$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preOwnerFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnParametersFunction {
    function UniswapV3Factory$onParametersFunction(FunctionContext memory ctx, UniswapV3Factory$ParametersFunctionOutputs memory outputs) virtual external;

    function UniswapV3Factory$triggerOnParametersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x89035730),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onParametersFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreParametersFunction {
    function UniswapV3Factory$preParametersFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV3Factory$triggerPreParametersFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x89035730),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preParametersFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$OnSetOwnerFunction {
    function UniswapV3Factory$onSetOwnerFunction(FunctionContext memory ctx, UniswapV3Factory$SetOwnerFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerOnSetOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x13af4035),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$onSetOwnerFunction.selector
        });
    }
}

abstract contract UniswapV3Factory$PreSetOwnerFunction {
    function UniswapV3Factory$preSetOwnerFunction(PreFunctionContext memory ctx, UniswapV3Factory$SetOwnerFunctionInputs memory inputs) virtual external;

    function UniswapV3Factory$triggerPreSetOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV3Factory",
            selector: bytes4(0x13af4035),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV3Factory$preSetOwnerFunction.selector
        });
    }
}

contract UniswapV3Factory$EmitAllEvents is
  UniswapV3Factory$OnFeeAmountEnabledEvent,
UniswapV3Factory$OnOwnerChangedEvent,
UniswapV3Factory$OnPoolCreatedEvent
{
  event FeeAmountEnabled(uint24 fee, int24 tickSpacing);
event OwnerChanged(address oldOwner, address newOwner);
event PoolCreated(address token0, address token1, uint24 fee, int24 tickSpacing, address pool);

  function UniswapV3Factory$onFeeAmountEnabledEvent(EventContext memory ctx, UniswapV3Factory$FeeAmountEnabledEventParams memory inputs) virtual external override {
    emit FeeAmountEnabled(inputs.fee, inputs.tickSpacing);
  }
function UniswapV3Factory$onOwnerChangedEvent(EventContext memory ctx, UniswapV3Factory$OwnerChangedEventParams memory inputs) virtual external override {
    emit OwnerChanged(inputs.oldOwner, inputs.newOwner);
  }
function UniswapV3Factory$onPoolCreatedEvent(EventContext memory ctx, UniswapV3Factory$PoolCreatedEventParams memory inputs) virtual external override {
    emit PoolCreated(inputs.token0, inputs.token1, inputs.fee, inputs.tickSpacing, inputs.pool);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](3);
    triggers[0] = this.UniswapV3Factory$triggerOnFeeAmountEnabledEvent();
    triggers[1] = this.UniswapV3Factory$triggerOnOwnerChangedEvent();
    triggers[2] = this.UniswapV3Factory$triggerOnPoolCreatedEvent();
    return triggers;
  }
}