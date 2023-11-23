<?php

use System\Classes\Controller;
use App\Model\UsuariosModel;
use System\Classes\Auth;

class UsuariosController extends Controller {

    public function __construct($viewPath) {
        $auth = new Auth();
        if (!$auth->allows("admin")) {
            $this->refer("logout");
        }
        $this->viewPath = $viewPath;
    }

    public function index($_args = []) {
        $auth = new Auth();
        
        if ($auth->logged() && $auth->allows("view")) {
            $UsuariosModel = new UsuariosModel();
            $_args["users"] = $UsuariosModel->select();

        } else {
            $this->refer("logout");
        }
       

        $this->renderView($_args);
    }

    public function add($_args = []) {

        $auth = new Auth();
        if ($auth->logged() && $auth->allows("add")) {
            if ($_POST) {

                $parametros["username"] = $_POST["username"];
                $parametros["email"] = $_POST["email"];
                $parametros["cpf"] = $_POST["CPF"];
                $parametros["password"] = $_POST["password"];
                $parametros["allow"] = $_POST["allow"];

                $UsuariosModel = new UsuariosModel();

                if ($UsuariosModel->add($parametros)) {
                    $this->refer("usuarios");
                }
            }
        } else {
            $this->refer("logout");
        }

        $this->renderView($_args);
    }

    public function delete($_args = []) {

        $auth = new Auth();
        if ($auth->logged() && $auth->allows("delete")) {
            $where["id"] = $_args[0];
            $OcupacoesModel = new UsuariosModel();
            $OcupacoesModel->delete($where);
            $this->refer("usuarios");
        } else {
            $this->refer("logout");
        }

        $this->renderView($_args);
    }

    public function edit($_args = []) {

        $auth = new Auth();

        if ($auth->logged() && $auth->allows("edit")) {
            $_args["id"] = $_args[0];

            $UsuariosModel = new UsuariosModel();
            $_args["pessoa"] = $UsuariosModel->select($_args["id"]);

            if (!$_args["pessoa"]) {
                $this->refer("usuario");
            }

            if ($_POST) {

                $parametros["username"] = $_POST["username"];
                $parametros["email"] = $_POST["email"];
                $parametros["cpf"] = $_POST["CPF"];
                $parametros["password"] = $_POST["password"];
                $parametros["allow"] = $_POST["allow"];


                $where["id"] = $_args["id"];

                $UsuariosModel->edit($parametros, $where);
                $this->refer("usuarios");
            }
        } else {
            $this->refer("logout");
        }


        $this->renderView($_args);
    }

}
