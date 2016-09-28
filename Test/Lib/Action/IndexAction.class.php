<?php

class IndexAction extends Action {
    public function index(){
        /* 接收参数*/
        $testgp=!empty($_GET['testgp']) ? $_GET['testgp'] :"OP";
        $m=M('dict');
        $where=array("type"=>"testgp","state"=>"正常");
        $data=$m->where($where)->select();
        $this->assign('data',$data);

        /* 实例化模型*/
        $m=M('program');
        $arr=$m->where(array("testgp"=>"$testgp"))->order("end desc")->select();
        $this->assign('arr',$arr);

        $where=array("testgp"=>$testgp);
        $this->assign('w',$where);

        $this->display();

    }

    public function details(){
        /* 接收参数*/
        $testgp=$_GET['testgp'];
        $id = $_GET['id'];
//         echo $id,$testgp;
        /* 实例化模型*/
        $m=D("program");
        $arr=$m->find($id);
        $this->assign('p',$arr);
        $this->assign("online",PublicAction::date("expOnline",$arr['expOnline']));
        $this->assign("jianjie",PublicAction::editor("profile",$arr['profile']));
        $where=array("testgp"=>$testgp,"proid"=>$id);
        $this->assign('w',$where);
        $this->display() ;
    }






}