
<?php
  class Persona 
  {
    private $nombre;
    private $apellido;
    private $fechaNacimiento;
    private $id;
    private $usuario;
    function getNombre(){
      return $this->nombre;
    }
    function setNombre($nombre){
      this->nombre=$nombre;
    }
    function getApellido(){
      return $this->apellido;
    }
    function setApellido($apellido){
      this->apellido=$apellido;
    }
    function getFechaNacimiento(){
      return $this->fechaNacimiento;
    }
    function setFechaNacimiento($fechaNacimiento){
      this->fechaNacimiento=$fechaNacimiento;
    }
    function getFechaNacimiento(){
      return $this->fechaNacimiento;
    }
    function setId($id){
      this->id=$id;
    }
    function getUsuario(){
      return $this->usuario;
    }
    function setUsuario($usuario){
      this->usuario=$usuario;
    }
  }
?>