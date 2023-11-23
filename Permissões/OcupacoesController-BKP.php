 <?php /*

use System\Classes\Controller;
use App\Model\OcupacoesModel;
use System\Classes\Auth;

class OcupacoesController extends Controller {

    public function __construct($viewPath) {

//        if ($auth->logged() && $auth->allows("edit")) {
//            
//        } else {
//            $this->refer("logout");
//        }

        $this->viewPath = $viewPath;
    }

    public function __destruct($viewPath) {
        
    }

    public function index($_args = []) {

        $auth = new Auth();

        $OcupacoesModel = new OcupacoesModel();
        $_args["occupations"] = $OcupacoesModel->select();
        $this->refer("logout");

        $this->renderView($_args);
    }

    public function add($_args = []) {

        $auth = new Auth();
        if ($_POST) {

            $parametros["name"] = $_POST["name"];
            $parametros["occupation"] = $_POST["occupation"];
            $parametros["email"] = $_POST["email"];

            $OcupacoesModel = new OcupacoesModel();

            if ($OcupacoesModel->add($parametros)) {
                $this->refer("ocupacoes");
            }
        }

        $this->renderView($_args);
    }

    public function delete($_args = []) {

        $auth = new Auth();
        $where["id"] = $_args[0];
        $OcupacoesModel = new OcupacoesModel();
        $OcupacoesModel->delete($where);
        $this->refer("ocupacoes");

        $this->renderView($_args);
    }

    public function edit($_args = []) {

        $auth = new Auth();

        $_args["id"] = $_args[0];

        $OcupacoesModel = new OcupacoesModel();
        $_args["pessoa"] = $OcupacoesModel->select($_args["id"]);

        if (!$_args["pessoa"]) {
            $this->refer("ocupacoes");
        }

        if ($_POST) {

            $parametros["name"] = $_POST["name"];
            $parametros["occupation"] = $_POST["occupation"];
            $parametros["email"] = $_POST["email"];

            $where["id"] = $_args["id"];

            $OcupacoesModel->edit($parametros, $where);
            $this->refer("ocupacoes");
        }

        $this->renderView($_args);
    }

} 
