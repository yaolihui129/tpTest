<?php
class StageAction extends Action {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];

        /* 实例化模型*/
        $s = D("stage");
        $where=array("proid"=>"$proid");
        $stages=$s->where($where)->select();
        $this->assign('stages',$stages);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);

        $this->display();
    }



}