<?php
class SceneAction extends Action {


    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];


        /* 实例化模型*/
        $s = D("scene");
        $where=array("proid"=>"$proid");
        $scene=$s->where($where)->select();
        $this->assign("scene",$scene);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);

        $this->display();
    }

}