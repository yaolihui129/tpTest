<?php
class GroupAction extends Action {
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
}