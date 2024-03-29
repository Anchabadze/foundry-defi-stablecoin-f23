// SPDX-License-Identifier: MIT

// // Have our invariants aka properties of the system that should always be the same

// // What are our invariants?

// // 1. The total supply of DSC should be less than a total value of collateral
// // 2. Getter view functions should never revert <-- evergreen invariant

pragma solidity ^0.8.18;

// import {Test, console} from "../../lib/forge-std/src/Test.sol";
// import {StdInvariant} from "../../lib/forge-std/src/StdInvariant.sol";
// import {DeployDSC} from "../../script/DeployDSC.s.sol";
// import {DSCEngine} from "../../src/DSCEngine.sol";
// import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
// import {HelperConfig} from "../../script/HelperConfig.s.sol";
// import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

// contract OpenInvariantTest is StdInvariant, Test {
//     DeployDSC deployer;
//     DSCEngine dsce;
//     DecentralizedStableCoin dsc;
//     HelperConfig config;
//     address weth;
//     address wbtc;

//     function setUp() external {
//         deployer = new DeployDSC();
//         (dsc, dsce, config) = deployer.run();
//         (,, weth, wbtc,) = config.activeNetWorkConfig();
//         targetContract(address(dsce)); // контракт, в котором мы будем проверять инварианты
//     }

//     function invariant_protocolMustHaveMoreValueThanTotalSupply() public view {
//         // get the value of all the collateral in the protocol
//         // compare it to all the debt (dsc)
//         uint256 totalSupply = dsc.totalSupply();
//         uint256 totalWethDeposited = IERC20(weth).balanceOf(address(dsce)); // сколько всего weth заложено в протоколе
//         uint256 totalWbtcDeposited = IERC20(wbtc).balanceOf(address(dsce)); // сколько всего wbtc заложено в протоколе

//         uint256 wethValue = dsce.getUsdValue(weth, totalWethDeposited);
//         uint256 wbtcValue = dsce.getUsdValue(wbtc, totalWbtcDeposited);

//         // console.log("weth value: ", wethValue);
//         // console.log("wbtc value: ", wbtcValue);
//         // console.log("total supply: ", totalSupply);

//         assert(wethValue + wbtcValue >= totalSupply); // fuzz test will try to breal this invariant
//     }
// }
