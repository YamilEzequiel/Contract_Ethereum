// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract data_structures {

    // Estructura de datos de un cliente
    struct Customer {
        uint256 id;
        string name;
        string email;
    }

    // Variable de tipo cliente
    Customer customer_1 = Customer(1,"Yamil","yamillazzari@gmail.com");

    // Array de uints de longitud fija
    uint256 [5] public fixed_list_units = [1,2,3,4,5];

    // Array dinamico de uints 
    uint256 [] dynamic_list_uints;

    //Array dinamico de tipo cliente
    Customer [] public dynamic_list_customer;

    // Nuevos datos en un array
    function array_modific(uint256 _id, string memory _name, string memory _email) public{
        // Los datos tipo memory almacenaran temporalmente por lo cual no tiene costo de gas
        // En cambio los tipo storage almacenan la informacion en la blockchain por ende si tienen costo
        Customer memory random_customer = Customer(_id,_name,_email);
        dynamic_list_customer.push(random_customer);
    }

    // Mapping - Asignacion clave valor
    mapping (address => uint256) public addres_uint;
    mapping (string => uint256 []) public string_listUints;
    mapping (address => Customer) public address_dataStructure;

    // Asignar un numero a una direccion
    function assignNumber(uint256 _number) public {
        addres_uint[msg.sender] = _number;
    } 

    // Asignar varios numeros a una direccion
    function assignList (string memory _name,uint256 _number) public {
        string_listUints[_name].push(_number);
        //Se genera un indice clave asociativo y se inserta un numero
    }

    // Asignacion de una estructura de datos a una direccion
    function assignDataStructure (uint _id,string memory _name,string memory _email)public{
        address_dataStructure[msg.sender] = Customer(_id,_name,_email);
        //msg.sender address de la cual presiona 
    }

}