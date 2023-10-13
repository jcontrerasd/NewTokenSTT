
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract DEX {
    IERC20 token;
    address public tokenAddress;
    uint256 public rate;

// Se le tiene que indicar que Token es que va a negocias, se le debe entregar en el Deploy la Address del Token
// Se le debe transferir Token, para que tenga Tokens que intercambiar, desde el contrato del Tokem
constructor(address _token)  {
    tokenAddress = _token;
    token = IERC20(address(_token));
    rate = 100;
}

// Se pagan Eth y entrega STT, el contrato se queda con los Eth
function buy() payable public returns (bool){
    uint256 amountTobuy = msg.value * rate;
    uint256 dexBalance = token.balanceOf(address(this));
    require(amountTobuy > 0, "You must send STT");
    require(amountTobuy <= dexBalance, "Too much tokens");

    token.transfer(msg.sender, amountTobuy);

    return true;

}

// Requiere un previo approve de la dirección de este contrato DEX --> al contrato Dex
// Se Entregan Token STT
function sell(uint256 amount) public returns (bool) {
    require(amount > 0, "No tokens for sale");

// Tranfiere los Tokens al contrato SwapTrustToken
    token.transferFrom(msg.sender, payable(address(this)), amount);
// Convierte los Token a Eth y Transfiere al que envía los Tokens
    payable(msg.sender).transfer(amount/rate);
    return true;

}
}