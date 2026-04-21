// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import {Kiikontrak} from "../src/Kiikontrak.sol";

contract Interaksi is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PK");
        address deployerAddress = vm.addr(deployerPrivateKey);
        
        address contractAddr = vm.envOr("CA", address(0));
        uint256 valToSet = vm.envOr("SET_VALUE", uint256(888));

        console.log("=== Interaksi With Kiichain ===");
        console.log("Wallet Deploy  :", deployerAddress);

        vm.startBroadcast(deployerPrivateKey);

        Kiikontrak kii;

        if (contractAddr == address(0)) {
            // Skenario 1: Deploy Kontrak Baru
            kii = new Kiikontrak();
            console.log("Action Deploy  : SMART CONTRACT BARU");
        } else {
            // Skenario 2: Gunakan Kontrak yang Sudah Ada
            kii = Kiikontrak(contractAddr);
            console.log("Action Deploy   : INTERAKSI DENGAN SMART CONTRACT");
        }

        console.log("Contract Address :", address(kii));

        // Eksekusi perubahan data
        uint256 oldVal = kii.getNumber();
        kii.setNumber(valToSet);
        uint256 newVal = kii.getNumber();

        vm.stopBroadcast();

        console.log("Old Value        :", oldVal);
        console.log("New Value        :", newVal);
        console.log("====================================");
    }
}

