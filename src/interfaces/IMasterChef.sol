// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.18;

interface IMasterChef {
    function poolLength() external view returns (uint256);
    function userInfo(uint256 pid, address user) external view returns (uint256, uint256);
    function pendingSushi(uint256 pid, address user) external view returns (uint256);
    function deposit(uint256 pid, uint256 amount, address to) external;
    function withdraw(uint256 pid, uint256 amount, address to) external;
    function harvest(uint256 pid, address to) external;
    function withdrawAndHarvest(uint256 pid, uint256 amount, address to) external;
    function emergencyWithdraw(uint256 pid, address to) external;
    function rewarder(uint256 pid) external view returns (address);
}
