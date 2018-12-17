<?php 
	class conexion{
		private $con;
		Public function __construct(){
			$this->con = new  \pg_connect(" host=localhost dbname=dbConta port=5432 user=postgres password=0064") or die ("Error de Conexion".pg_last_error());
		}

		public function Ingresar($sql){
			$this->con->query($sql); 
		}

		public function consultar($sql){
			$valor= $this->con->query($sql);
			return $valor;
		}
}

?>