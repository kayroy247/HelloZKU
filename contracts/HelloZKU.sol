//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.12;

/// @title A Hello ZKU contract with uint storage and the get and set functions
/// @author Kayode Okunlade
/// @notice This is just a basic contract for ZKU background assignment
/// @dev All function calls are currently implemented without side effects
contract HelloZKU {
    // state variable myNumber to store a uint type
    uint256 private myNumber;

    /// @notice The myNumber state variable is set during deployment
    /// @dev Sets the myNumber during deployment
    /// @param _myNumber any number you like
    constructor(uint256 _myNumber) {
        myNumber = _myNumber;
    }

    /// @dev Getter function for the state variable myNumber
    /// @return myNumber state variable
    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }

    /// @notice Sets a new value for the myNumber state variable
    /// @dev updates myNumber
    /// @param _newNumber The new number to set myNumber to
    function setMyNumber(uint256 _newNumber) external {
        myNumber = _newNumber;
    }
}
