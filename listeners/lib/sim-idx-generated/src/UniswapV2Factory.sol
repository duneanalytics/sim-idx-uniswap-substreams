// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function UniswapV2Factory$Abi() pure returns (Abi memory) {
    return Abi("UniswapV2Factory");
}
struct UniswapV2Factory$AllPairsFunctionInputs {
    uint256 outArg0;
}

struct UniswapV2Factory$AllPairsFunctionOutputs {
    address outArg0;
}

struct UniswapV2Factory$AllPairsLengthFunctionOutputs {
    uint256 outArg0;
}

struct UniswapV2Factory$CreatePairFunctionInputs {
    address tokenA;
    address tokenB;
}

struct UniswapV2Factory$CreatePairFunctionOutputs {
    address pair;
}

struct UniswapV2Factory$FeeToFunctionOutputs {
    address outArg0;
}

struct UniswapV2Factory$FeeToSetterFunctionOutputs {
    address outArg0;
}

struct UniswapV2Factory$GetPairFunctionInputs {
    address outArg0;
    address outArg1;
}

struct UniswapV2Factory$GetPairFunctionOutputs {
    address outArg0;
}

struct UniswapV2Factory$SetFeeToFunctionInputs {
    address _feeTo;
}

struct UniswapV2Factory$SetFeeToSetterFunctionInputs {
    address _feeToSetter;
}

struct UniswapV2Factory$PairCreatedEventParams {
    address token0;
    address token1;
    address pair;
    uint256 outArg3;
}

abstract contract UniswapV2Factory$OnPairCreatedEvent {
    function UniswapV2Factory$onPairCreatedEvent(EventContext memory ctx, UniswapV2Factory$PairCreatedEventParams memory inputs) virtual external;

    function UniswapV2Factory$triggerOnPairCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes32(0x0d3648bd0f6ba80134a33ba9275ac585d9d315f0ad8355cddefde31afa28d0e9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onPairCreatedEvent.selector
        });
    }
}

abstract contract UniswapV2Factory$OnAllPairsFunction {
    function UniswapV2Factory$onAllPairsFunction(FunctionContext memory ctx, UniswapV2Factory$AllPairsFunctionInputs memory inputs, UniswapV2Factory$AllPairsFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnAllPairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x1e3dd18b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onAllPairsFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreAllPairsFunction {
    function UniswapV2Factory$preAllPairsFunction(PreFunctionContext memory ctx, UniswapV2Factory$AllPairsFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerPreAllPairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x1e3dd18b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preAllPairsFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnAllPairsLengthFunction {
    function UniswapV2Factory$onAllPairsLengthFunction(FunctionContext memory ctx, UniswapV2Factory$AllPairsLengthFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnAllPairsLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x574f2ba3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onAllPairsLengthFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreAllPairsLengthFunction {
    function UniswapV2Factory$preAllPairsLengthFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Factory$triggerPreAllPairsLengthFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x574f2ba3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preAllPairsLengthFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnCreatePairFunction {
    function UniswapV2Factory$onCreatePairFunction(FunctionContext memory ctx, UniswapV2Factory$CreatePairFunctionInputs memory inputs, UniswapV2Factory$CreatePairFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onCreatePairFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreCreatePairFunction {
    function UniswapV2Factory$preCreatePairFunction(PreFunctionContext memory ctx, UniswapV2Factory$CreatePairFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerPreCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preCreatePairFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnFeeToFunction {
    function UniswapV2Factory$onFeeToFunction(FunctionContext memory ctx, UniswapV2Factory$FeeToFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x017e7e58),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onFeeToFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreFeeToFunction {
    function UniswapV2Factory$preFeeToFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Factory$triggerPreFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x017e7e58),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preFeeToFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnFeeToSetterFunction {
    function UniswapV2Factory$onFeeToSetterFunction(FunctionContext memory ctx, UniswapV2Factory$FeeToSetterFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x094b7415),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onFeeToSetterFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreFeeToSetterFunction {
    function UniswapV2Factory$preFeeToSetterFunction(PreFunctionContext memory ctx) virtual external;

    function UniswapV2Factory$triggerPreFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0x094b7415),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preFeeToSetterFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnGetPairFunction {
    function UniswapV2Factory$onGetPairFunction(FunctionContext memory ctx, UniswapV2Factory$GetPairFunctionInputs memory inputs, UniswapV2Factory$GetPairFunctionOutputs memory outputs) virtual external;

    function UniswapV2Factory$triggerOnGetPairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xe6a43905),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onGetPairFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreGetPairFunction {
    function UniswapV2Factory$preGetPairFunction(PreFunctionContext memory ctx, UniswapV2Factory$GetPairFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerPreGetPairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xe6a43905),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preGetPairFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnSetFeeToFunction {
    function UniswapV2Factory$onSetFeeToFunction(FunctionContext memory ctx, UniswapV2Factory$SetFeeToFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerOnSetFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xf46901ed),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onSetFeeToFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreSetFeeToFunction {
    function UniswapV2Factory$preSetFeeToFunction(PreFunctionContext memory ctx, UniswapV2Factory$SetFeeToFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerPreSetFeeToFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xf46901ed),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preSetFeeToFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$OnSetFeeToSetterFunction {
    function UniswapV2Factory$onSetFeeToSetterFunction(FunctionContext memory ctx, UniswapV2Factory$SetFeeToSetterFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerOnSetFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xa2e74af6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$onSetFeeToSetterFunction.selector
        });
    }
}

abstract contract UniswapV2Factory$PreSetFeeToSetterFunction {
    function UniswapV2Factory$preSetFeeToSetterFunction(PreFunctionContext memory ctx, UniswapV2Factory$SetFeeToSetterFunctionInputs memory inputs) virtual external;

    function UniswapV2Factory$triggerPreSetFeeToSetterFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "UniswapV2Factory",
            selector: bytes4(0xa2e74af6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.UniswapV2Factory$preSetFeeToSetterFunction.selector
        });
    }
}

contract UniswapV2Factory$EmitAllEvents is
  UniswapV2Factory$OnPairCreatedEvent
{
  event PairCreated(address token0, address token1, address pair, uint256 outArg3);

  function UniswapV2Factory$onPairCreatedEvent(EventContext memory ctx, UniswapV2Factory$PairCreatedEventParams memory inputs) virtual external override {
    emit PairCreated(inputs.token0, inputs.token1, inputs.pair, inputs.outArg3);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.UniswapV2Factory$triggerOnPairCreatedEvent();
    return triggers;
  }
}