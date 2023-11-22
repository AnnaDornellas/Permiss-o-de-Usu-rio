<?php

use System\Classes\Controller;
use App\Model\OcupacoesModel;
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
            $OcupacoesModel = new OcupacoesModel();
            $_args["users"] = $OcupacoesModel->select();
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
                $parametros["allow"] = $_POST["allow"];

                $OcupacoesModel = new OcupacoesModel();

                if ($OcupacoesModel->add($parametros)) {
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
            $OcupacoesModel = new OcupacoesModel();
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

            $OcupacoesModel = new OcupacoesModel();
            $_args["pessoa"] = $OcupacoesModel->select($_args["id"]);

            if (!$_args["pessoa"]) {
                $this->refer("usuario");
            }

            if ($_POST) {

                $parametros["name"] = $_POST["name"];
                $parametros["occupation"] = $_POST["occupation"];
                $parametros["email"] = $_POST["email"];
                $parametros["allow"] = $_POST["allow"];

                $where["id"] = $_args["id"];

                $OcupacoesModel->edit($parametros, $where);
                $this->refer("ocupacoes");
            }
        } else {
            $this->refer("logout");
        }


        $this->renderView($_args);
    }

}
