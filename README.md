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
### 1.- NewTokenSTT (Address [0xcd8ef8649049133c6a164ceaaabfc5ca0027df59](https://goerli.etherscan.io/address/0xcd8ef8649049133c6a164ceaaabfc5ca0027df59#code)) ###

El contrato crea un token ERC20 llamado SwapTrustToken (STT). El contrato puede ser utilizado para crear nuevos tokens, establecer un nuevo propietario para el contrato y en crear fondos para dicho contrato.
 El propietario del contrato es la única dirección que puede realizar estas acciones.
 ![image](https://github.com/jcontrerasd/NewTokenSTT/assets/27821228/d688bda3-0afe-4303-92bf-4d5418a5a972)


### Read Contract ###

    **1. DOMAIN_SEPARATOR :** Devuelve el separador de dominio utilizado en la codificación de la firma del permiso, según lo definido por EIP712.
    
    **2. allowance :** Devuelve el número restante de tokens que el gastador podrá gastar en nombre del propietario a través de **transferFrom**. Es cero por defecto.
    
    **3. balanceOf :** Devuelve el valor de la cantidad de tokens propiedad de la cuenta.
    
    **4. decimals :** Devuelve los decimales del token.
    
    **5. eip712Domain :** Devuelve los campos y valores que describen el separador de dominio utilizado por este contrato para la firma EIP-712.
    
    **6. name :** Devuelve el nombre del token.
    
    **7. nonces :** Devuelve el nonce actual del propietario. Este valor debe incluirse siempre que se genere una firma para el permiso.
    
    **8. owner :** Devuelve la dirección del propietario actual.
    
    **9. symbol :** Devuelve el símbolo del token.
    
    **10. totalSupply :** Devuelve el valor de los tokens existentes.

### Write Contract ###

    **1. approve :** Establece una cantidad de valor de tokens como la asignación del gastador sobre los tokens de la persona que llama. 
    
    **2. mint :** Crea una cantidad de tokens y los asigna a la cuenta.
    
    **3. permit :** Establece el valor como la asignación del gastador sobre los tokens del propietario, dada la aprobación firmada del propietario.
    
    **4. setOwner :** Permite asignar un nuevo dueño del contrato.
    
    **5. transfer :** Mueve una cantidad de tokens de la cuenta de la persona que llama. 
    
    **6. transferFrom :** Mueve una cantidad de tokens usando el mecanismo de asignación. Luego, el valor se deduce de la asignación de la persona que llama.


### 2.- DEX (Address [0x2fdF5B0f97845Ac859fCEa4838b4125482EC2c48](https://goerli.etherscan.io/address/0x2fdF5B0f97845Ac859fCEa4838b4125482EC2c48#code)) ###
Corresponde a un exchange descentralizado (DEX) que permite a los usuarios comprar y vender tokens ERC20. En resumen permite comprar y vender tokens ERC20 pagando en ETH.


![image](https://github.com/jcontrerasd/NewTokenSTT/assets/27821228/407e3232-7529-49f2-b84e-305997a43d20)

### Read Contract ###

    **1. rate :** Entrega el valor de conversión definido  para las compras y ventas.
    
    **2. tokenAddress :** Entrega la dirección del dueño del contrato.

### Write Contract ###

    **1. buy :** Permite realizar compras de Token. Se entrega Eth y devuelve Tokens, según el rate definido.
    
    **2. sell :** Permite realizar ventas de Token. Se entrega Token y devuelve Eth, según el rate definido.



### TRANSFERENCIA DE TOKEN : 
Se envió Tokens a la Addres 0xdE7F9087CfD6B3239E0F5c598847c2009c8FeF33 ([Hash Transacción](https://goerli.etherscan.io/tx/0x594669754b116c46187d4912ff3064d066fb481f6666804edd9b08a56ea7a8a1)) ###

![image](https://github.com/jcontrerasd/NewTokenSTT/assets/27821228/9fd21410-1ba8-428a-9f7b-ba2aac71680d)
