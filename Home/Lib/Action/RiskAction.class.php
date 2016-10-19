<?php
class RiskAction extends Action {
    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];

        /* 实例化模型*/
        $s = D("risk");
        $where=array("proid"=>"$proid");
        $risks=$s->where($where)->select();
        $this->assign("risks",$risks);
        $where=array("proid"=>$proid,"testgp"=>$testgp);
        $this->assign('w',$where);

        $this->display();
    }


}