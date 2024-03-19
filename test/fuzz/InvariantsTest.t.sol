// SPDX-License-Identifier: MIT

// Have our invariants aka properties of the system that should always be the same

// What are our invariants?

// 1. The total supply of DSC should be less than a total value of collateral
// 2. Getter view functions should never revert <-- evergreen invariant

pragma solidity ^0.8.18;

import [Test] from "../../forge-std/Test.sol";
import [StdInvariants] from "../../forge-std/StdInvariants.sol";
import {DeployDSC} from "../../script/DeployDSC.s.sol";
import {DSCEngine} from "../../src/DSCEngine.sol";
import {DecentralizedStableCoin} from "../../src/DecentralizedStableCoin.sol";
import {HelperConfig} from "../../script/HelperConfig.s.sol";

contract InvariantTest is Test, StdInvariants {
    DeployDSC deployer;
    DSCEngine dsce;
    DecentralizedStableCoin dsc;
    function setUp() external {
        deployer = new DeployDSC();
        (dsc, dsce, config) = deployer.run();
    }
}