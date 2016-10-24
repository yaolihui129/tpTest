<?php
class TestAction extends Action {

    public function index(){
        /* 接收参数*/
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];
        $funcid=$_GET['funcid'];
        /* 实例化模型*/
        $m=M('func');
        $where=array("fproid"=>$proid);
        $data=$m->where($where)->select();
        $this->assign('data',$data);


        $where=array("tp_stage.proid"=>$proid,"tp_exefunc.funcid"=>$funcid);
        $m=M('stage');
        $arr=$m ->where($where)
        ->join('tp_stagetester ON tp_stage.id =tp_stagetester.stageid')
        ->join('tp_exescene ON tp_stagetester.id=tp_exescene.stagetesterid')
        ->join('tp_exefunc ON tp_exescene.id=tp_exefunc.exesceneid')
        ->select();
        $this->assign('arr',$arr);

        $where=array("proid"=>$proid,"testgp"=>$testgp,"funcid"=>$funcid);
        $this->assign('w',$where);

        $this->display();
    }





}