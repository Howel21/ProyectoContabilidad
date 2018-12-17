<?php
include Persona.php
class Usuario extends Persona 
{
  private $userName;
  private $contrasena;
  private $tipo;
  private $correoElectronico;
  function getUserName(){
    return $this->userName;
  }
  function setUserName($userName)
  {
    this->userName=$userName;
  }
  function getContrsena(){
    return $this->contrasena;
  }
  function setUserName($contrasena)
  {
    this->userName=$contrasena;
  }
  function getTipo(){
    return $this->tipo;
  }
  function setTipo($tipo)
  {
    this->tipo=$tipo;
  }
  function getCorreoElectronico(){
    return $this->correoElectronico;
  }
  function setCorreoElectronico($correoElectronico)
  {
    this->correoElectronico=$correoElectronico;
  }
  function verBalance(){
  }
  function verPartida(){
  }
  function verEstadoResultado(){
  }
  function verBalanceComprobacion(){
  }
}
?>