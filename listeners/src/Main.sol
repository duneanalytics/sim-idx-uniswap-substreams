// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./UniswapV3FactoryListener.sol";
import "./UniswapV3PoolListener.sol";
import "./PoolManager.sol";
import "./UniswapV2FactoryListener.sol";
import "./UniswapV2PairListener.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        UniswapV3FactoryListener uniswapV3FactoryListener = new UniswapV3FactoryListener();
        UniswapV3PoolListener uniswapV3PoolListener = new UniswapV3PoolListener();
        PoolManagerListener poolManagerListener = new PoolManagerListener();
        UniswapV2FactoryListener uniswapV2FactoryListener = new UniswapV2FactoryListener();
        UniswapV2PairListener uniswapV2PairListener = new UniswapV2PairListener();

        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnInitializeEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnSwapEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnModifyLiquidityEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnDonateEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnProtocolFeeControllerUpdatedEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            poolManagerListener.PoolManager$triggerOnProtocolFeeUpdatedEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnInitializeEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnSwapEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnModifyLiquidityEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnDonateEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnProtocolFeeUpdatedEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            poolManagerListener.PoolManager$triggerOnProtocolFeeControllerUpdatedEvent()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f),
            uniswapV2FactoryListener.UniswapV2Factory$triggerOnPairCreatedEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x8909Dc15e40173Ff4699343b6eB8132c65e18eC6),
            uniswapV2FactoryListener.UniswapV2Factory$triggerOnPairCreatedEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnSyncEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnMintEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnBurnEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnSwapEvent()
        );
        addTrigger(chainAbi(Chains.Base, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnSyncEvent());
        addTrigger(chainAbi(Chains.Base, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnMintEvent());
        addTrigger(chainAbi(Chains.Base, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnBurnEvent());
        addTrigger(chainAbi(Chains.Base, UniswapV2Pair$Abi()), uniswapV2PairListener.UniswapV2Pair$triggerOnSwapEvent());

        addTrigger(
            chainContract(Chains.Ethereum, 0x1F98431c8aD98523631AE4a59f267346ea31F984),
            uniswapV3FactoryListener.UniswapV3Factory$triggerOnPoolCreatedEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x33128a8fC17869897dcE68Ed026d694621f6FDfD),
            uniswapV3FactoryListener.UniswapV3Factory$triggerOnPoolCreatedEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnSwapEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnMintEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnBurnEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnCollectEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnInitializeEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnFlashEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnIncreaseObservationCardinalityNextEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnSetFeeProtocolEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnCollectProtocolEvent()
        );
        addTrigger(chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnSwapEvent());
        addTrigger(chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnMintEvent());
        addTrigger(chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnBurnEvent());
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnCollectEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnInitializeEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()), uniswapV3PoolListener.UniswapV3Pool$triggerOnFlashEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnIncreaseObservationCardinalityNextEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnSetFeeProtocolEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, UniswapV3Pool$Abi()),
            uniswapV3PoolListener.UniswapV3Pool$triggerOnCollectProtocolEvent()
        );
    }
}
