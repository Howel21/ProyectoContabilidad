<?php
  class Cuenta {
    private $fechaModificacion;
    private $descripcion;
    private $saldo;
    private $debe;
    private $haber;
    private $catBalance;
    private $catEstado;
    function getFechaModificacion(){
      return $this->fechaModificacion;
    }
    function setFechaModificacion($fechaModificacion){
      $this->fechaModificacion=$fechaModificacion;
    }
    function getDescripcion(){
      return $this->descripcion;
    }
    function setDescripcion($descripcion){
      $this->descripcion=$descripcion;
    }
    function getSaldo(){
      return $this->saldo;
    }
    function setSaldo($saldo){
      $this->saldo=$saldo;
    }
    function getDebe(){
      return $this->debe;
    }
    function setDebe($debe){
      $this->debe=$debe;
    }
    function getHaber(){
      return $this->haber;
    }
    function setHaber($haber){
      $this->haber=$haber;
    }
    function getCatBalance(){
      return $this->catBalance;
    }
    function setCatBalance($catBalance){
      $this->catBalance=$catBalance;
    }
    function getCatEstado(){
      return $this->catEstado;
    }
    function setCatEstado($catEstado){
      $this->catEstado=$catEstado;
    }
    
  }
?>