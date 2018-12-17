<?php 
	include 'Cuenta.php';
	include 'conexion.php'; 
	//require_once ('conexion.php'); $conexion=conectarBD();
	class PartidaDoble{
		private $con;

		public function __construct(){
			$this->con = new conexion();
		}

		Private function GuardarPartida(Cuenta $cuenta, $partida){
			 $post_sql = "INSERT INTO Registro_Cuenta( id_registro, fecha_modificacion, saldo, id_cuenta, debe, haber) VALUES($partida, $)";
		}

		Private function PartidaNueva(){
			$post_sql = "SELECT max(id_registro) from Registro_Cuenta";
			$valor= $this->con->consultar($post_sql);
			return $valor;
		}
	}

?>