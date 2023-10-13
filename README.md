# Creación de una criptomoneda y un Smart Contract que gestione la compra y venta



**Nombre del Token: SwapTrust Token (STT).**
Significado: SwapTrust combina las palabras "swap" (intercambio) y "trust" (confianza). 
Este nombre sugiere que el token se utiliza para respaldar y registrar intercambios confiables entre los miembros de una comunidad comercial.
Descripción: El SwapTrust Token (STT) es la moneda digital que respalda la economía colaborativa en de una comunidad de emprendedores.
Este token se utilizará para registrar y facilitar intercambios confiables de productos y servicios entre emprendedores A y B.

Por ejemplo, si un cliente quiere devolver un Producto de un emprendedor A y comprar a un emprendedor B, el STT sería la moneda que permitiría realizar estas transacciones de manera eficiente y confiable. 
Cada STT representa un valor y una confianza en los intercambios dentro de la comunidad.

**Propósito:** El propósito principal del SwapTrust Token (STT) es servir como una unidad de intercambio confiable que respalda las actividades de trueque y colaboración entre los miembros de la comunidad de emprendedores y sus clientes.
Facilita transacciones sin problemas y ayuda a mantener un registro transparente de todas las actividades comerciales dentro de la comunidad.


# Se crean dos contratos
### 1.- NewTokenSTT ###

El contrato crea un token ERC20 llamado SwapTrustToken (STT). El contrato puede ser utilizado para crear nuevos tokens, establecer un nuevo propietario para el contrato y en crear fondos para dicho contrato.
 El propietario del contrato es la única dirección que puede realizar estas acciones.

#Read Contract#
1. DOMAIN_SEPARATOR :
2. allowance :
3. balanceOf :
4. decimals :
5. eip712Domain :
6. name :
7. nonces :
8. owner :
9. symbol :
10. totalSupply :

#Write Contract#
1. approve :
2. mint
3. permit
4. setOwner
5. transfer
6. transferFrom

### 2.- DEX ###

#Read Contract#
1. rate
2. tokenAddress

#Write Contract#
1. buy
2. sell
