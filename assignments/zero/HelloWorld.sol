// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Hello Wolrd ZKU Assignment Zero
/// @author Kenny Betz
/// @notice demonstration contract to store an unsigned integer on chain
/// and retrieve it using a function

contract HelloWorld {

    /// @notice variable for storing number on chain in public state variable

    uint256 public helloNumber;

    /// @notice stores an unsigned interger from user input on chain.
    /// @param _helloNumber The number chosen by user
    /// @return The user's number
    function storeNumber( uint256 _helloNumber ) external returns( uint256 ) {
        helloNumber = _helloNumber;
        return  helloNumber;
    }

    /// @notice return state variable helloNumber
    /// @return The user's number using an external view function

    function retrieveNumber() external view returns( uint256 ) {
        return helloNumber;
    }


}
