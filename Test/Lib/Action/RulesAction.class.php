<?php
class RulesAction extends Action {

    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $pathid=$_GET['pathid'];
        $funcid=$_GET['funcid'];
        $testgp=$_GET['testgp'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("pathid"=>$pathid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);
        /* 实例化模型*/
        $m=M('rules');
        $where=array("funcid"=>$funcid);
        $rules=$m->where($where)->select();
        $this->assign('rules',$rules);
        $where=array("proid"=>$proid,"pathid"=>$pathid,"funcid"=>$funcid,"testgp"=>$testgp);
        $this->assign('w',$where);


        $this->display();
    }


}