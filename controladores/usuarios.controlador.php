<?php 

class ControladorUsuarios{ 

    /*=============================================
	LOGIN de USUARIOS              
    =============================================*/

    static public function ctrIngresoUsuarios() {

        if (preg) {
            
            if (preg_match('/^[0-9]+$/', $_POST["ingTelefono"]) &&
				preg_match('/^[a-zA-Z0-9]+$/', $_POST["ingContraseña"])) {

                    $tabla = "usuarios";

                    $item = "telefono";
    
                    $valor = $_POST["ingTelefono"];
    
                    $respuesta = ModeloUsuarios::mdlMostrarUsuarios($tabla, $item, $valor);
            
                }

        }

    }

}
