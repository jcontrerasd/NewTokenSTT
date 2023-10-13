// SPDX-License-Identifier: MIT

// // SwapTrust Token (STT):

// // Nombre del Token: SwapTrust Token (STT).
// // Significado: SwapTrust combina las palabras "swap" (intercambio) y "trust" (confianza). Este nombre sugiere que el 
// // token se utiliza para respaldar y registrar intercambios confiables entre los miembros de la comunidad.
// // Descripción: El SwapTrust Token (STT) es la moneda digital que respalda la economía colaborativa en nuestra 
// // comunidad de emprendedores. Este token se utiliza para registrar y facilitar intercambios confiables de productos 
// // y servicios entre emprendedores A y B.
// // Por ejemplo, si un emprendedor A quiere devolver un producto a un emprendedor B y comprar otro producto de otro emprendedor C, 
// // el STT sería la moneda que permitiría realizar estas transacciones de manera eficiente y confiable. 
// // Cada STT representa un valor y una confianza en los intercambios dentro de la comunidad.
// // Propósito: El propósito principal del SwapTrust Token (STT) es servir como una unidad de intercambio confiable que 
// // respalda las actividades de trueque y colaboración entre los miembros de la comunidad de emprendedores. 
// // Facilita transacciones sin problemas y ayuda a mantener un registro transparente de todas las actividades 
// // comerciales dentro de la comunidad.
// // Este nombre de token resalta la importancia de la confianza en los intercambios entre emprendedores, y el token STT está 
// // diseñado para respaldar esta confiabilidad en la economía colaborativa de la comunidad.

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";


contract SwapTrustToken is ERC20, ERC20Permit {
     // Dirección del dueño del contrato
    address public owner;

    constructor() ERC20("SwapTrustToken", "STT") ERC20Permit("SwapTrustToken") {
        _mint(msg.sender, 100000000 * 10 ** 18);
        owner = msg.sender; //Set the owner of the contract. The only address that can register evidences.
    }

    modifier onlyOwner {
            require(msg.sender == owner, "Solo el Owner puede realizar esta operacion."); //Only the owner can register evidences.
            _;
        }

   function setOwner(address newOwner) external onlyOwner { 
            owner = newOwner;
    }


   function mint( uint256 amount)  external  onlyOwner {
        _mint(msg.sender, amount * 10 ** 18);
    }
}

