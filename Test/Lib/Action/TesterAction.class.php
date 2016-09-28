<?php
class TesterAction extends Action {
    public function index(){
        /* 接收参数*/
        $stageid=$_GET['stageid'];
        $proid=$_GET['proid'];
        $testgp=$_GET['testgp'];
        $type=$_GET['type'];
        /* 实例化模型*/
        $m=D('stage');
        $where=array("proid"=>$proid);
        $data=$m->where($where)->order("sn")->select();
        $this->assign('data',$data);
        // dump($data);

        $m=D('stagetester');
        $where=array("stageid"=>$stageid,"type"=>$type);
        $testers=$m->where($where)->select();
        $this->assign('testers',$testers);

        $where=array("proid"=>$proid,"stageid"=>$stageid,"testgp"=>$testgp,"type"=>$type);
        $this->assign('w',$where);

        // dump($users);

        $this->display();


    }
}