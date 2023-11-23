<?php

namespace App\Model;

use System\Classes\Model;

class UsuariosModel extends Model {

    public function select($id = null) {
        $users = Model::drive('users');

        if ($id == null) {
            $users->select("*")->orderBy(["created"], "desc")->execute();
        } else {
            $params["id"] = $id;
            $users->select("*")->conditions($params)
                    ->orderBy(["created"], "desc")->execute();
        }

        $row = $users->get();

        if ($id == null) {
            if (isset($row[0])) {
                return $row;
            } else {
                return false;
            }
        } else {
            if (isset($row[0])) {
                return $row[0];
            } else {
                return false;
            }
        }
    }

    public function add($parametros) {
        $users = Model::drive('users');
        $users->insert($parametros)->execute();
        return true;
    }

    public function edit($parametros, $where) {
        $occupations = Model::drive('users');
        $occupations->update($parametros)->conditions($where)->execute();
        return true;
    }

    public function delete($where) {
        $occupations = Model::drive('users');
        $occupations->delete()->conditions($where)->execute();
        return true;
    }

}
